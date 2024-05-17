
 Working directory              : /wrk/irikura/molpro.0ZMQl1yEMv/
 Global scratch directory       : /wrk/irikura/molpro.0ZMQl1yEMv/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.0ZMQl1yEMv/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   24
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.02 sec
 ***,Ba SO-CI
 memory,2500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ba};
 
 basis=aug-cc-pwCVQZ-X2C
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
 NSING=12
 NTRIP=16
 
 w(1) = 99
 DO i=2,NSING
   w(i) = 1
 ENDDO
 
                                                                                 ! active space (2/10)
 {multi
     closed,15,12
     occ,22,18
     wf,sym=1,spin=0;state,NSING;
        weight,w
     wf,sym=1,spin=2;state,NTRIP;
        weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,9,9
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5103.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5101.2,5103.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.19 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ba SO-                                                                        
  64 bit mpp version                                                                     DATE: 03-May-24          TIME: 10:03:09  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      2500 MW
 Total memory per node:  60000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-X2C
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry BA     S aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry BA     P aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry BA     D aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry BA     F aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry BA     G aug-cc-pwCVQZ-X      selected for orbital group  1


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

   1  BA     56.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   56
 NUMBER OF PRIMITIVE AOS:         410
 NUMBER OF SYMMETRY AOS:          344
 NUMBER OF CONTRACTIONS:          168   (   90Ag  +   78Au  )
 NUMBER OF INNER CORE ORBITALS:    23   (   14Ag  +    9Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     102.760 MB (compressed) written to integral file ( 13.1%)

     Node minimum: 0.524 MB, node maximum: 10.748 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2119464.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2119464      RECORD LENGTH: 524288

 Memory used in sort:       2.68 MW

 SORT1 READ    97437068. AND WROTE      393859. INTEGRALS IN      2 RECORDS. CPU TIME:     0.55 SEC, REAL TIME:     0.59 SEC
 SORT2 READ     9833613. AND WROTE    50984466. INTEGRALS IN    192 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC

 Node minimum:     2117080.  Node maximum:     2134449. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3
                                        4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 7 8 910111213  1415 7 8 91011121314
                                       15 7 8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.265E-04 0.446E-04 0.881E-04 0.881E-04 0.881E-04 0.881E-04 0.881E-04 0.112E-02
         2 0.244E-04 0.244E-04 0.244E-04 0.254E-03 0.254E-03 0.254E-03 0.464E-02 0.464E-02


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.27       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        16.44     16.05
 REAL TIME  *        18.67 SEC
 DISK USED  *        30.60 MB (local),      993.60 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   16  12

 Initial occupancy:  16  12

 NELEC=   56   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -8131.99704799   -8131.99704799     0.00D+00     0.12D+00     0     0       0.01      0.03    start
   2    -8131.99704799      -0.00000000     0.38D-06     0.21D-04     1     0       0.02      0.05    diag
   3    -8131.99704799      -0.00000000     0.45D-07     0.62D-05     2     0       0.02      0.07    diag
   4    -8131.99704799      -0.00000000     0.15D-07     0.21D-05     3     0       0.01      0.08    diag
   5    -8131.99704799      -0.00000000     0.43D-08     0.84D-06     0     0       0.02      0.10    diag

 Final occupancy:  16  12

 !RHF STATE 1.1 Energy              -8131.997047986810
  RHF One-electron energy            -11100.0298041081    
  RHF Two-electron energy            2968.032756121253
  RHF Kinetic energy                 9672.875295624162
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.840701115176

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1382.74842     1  1  s    1.00000
    2.1     2.00000  -222.46061     1  2  s    1.00000
    3.1     2.00000   -48.63406     1  3  s    1.00018
    4.1     2.00000   -29.94644     1  1  d0  -0.66653    1  1  d2+  0.74548
    5.1     2.00000   -29.94644     1  1  d1+  1.00000
    6.1     2.00000   -29.94644     1  1  d2-  1.00000
    7.1     2.00000   -29.94644     1  1  d0   0.74548    1  1  d2+  0.66652
    8.1     2.00000   -29.94644     1  1  d1-  1.00000
    9.1     2.00000   -10.25509     1  4  s    1.00070
   10.1     2.00000    -3.85433     1  2  d0  -0.66460    1  2  d2+  0.74705
   11.1     2.00000    -3.85433     1  2  d1+  0.99988
   12.1     2.00000    -3.85433     1  2  d2-  0.99988
   13.1     2.00000    -3.85433     1  2  d1-  0.99988
   14.1     2.00000    -3.85433     1  2  d0   0.74705    1  2  d2+  0.66460
   15.1     2.00000    -1.60335     1  5  s    0.99936
   16.1     2.00000    -0.16308     1  6  s    0.99631
    1.2     2.00000  -199.39475     1  1  px   0.99989
    2.2     2.00000  -199.39475     1  1  py   0.99893
    3.2     2.00000  -199.39475     1  1  pz   0.99883
    4.2     2.00000   -41.04463     1  2  py   1.00001
    5.2     2.00000   -41.04463     1  2  pz   1.00001
    6.2     2.00000   -41.04463     1  2  px   1.00001
    7.2     2.00000    -7.69921     1  3  py   1.00015
    8.2     2.00000    -7.69921     1  3  pz   1.00015
    9.2     2.00000    -7.69921     1  3  px   1.00015
   10.2     2.00000    -0.89930     1  4  py   0.99978
   11.2     2.00000    -0.89930     1  4  pz   0.99978
   12.2     2.00000    -0.89930     1  4  px   0.99978


 HOMO     16.1    -0.163085 =      -4.4378eV
 LUMO     13.2     0.006698 =       0.1823eV
 LUMO-HOMO         0.169783 =       4.6200eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.27       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.60       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        16.54      0.11     16.05
 REAL TIME  *        18.78 SEC
 DISK USED  *        31.61 MB (local),     1017.81 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =        12.00000000                                  
 SETTING NTRIP          =        16.00000000                                  
 SETTING W(1)           =        99.00000000                                  

 DO I                   =         2.00000000   
 SETTING W(2)           =         1.00000000                                  

 DO I                   =         3.00000000   
 SETTING W(3)           =         1.00000000                                  

 DO I                   =         4.00000000   
 SETTING W(4)           =         1.00000000                                  

 DO I                   =         5.00000000   
 SETTING W(5)           =         1.00000000                                  

 DO I                   =         6.00000000   
 SETTING W(6)           =         1.00000000                                  

 DO I                   =         7.00000000   
 SETTING W(7)           =         1.00000000                                  

 DO I                   =         8.00000000   
 SETTING W(8)           =         1.00000000                                  

 DO I                   =         9.00000000   
 SETTING W(9)           =         1.00000000                                  

 DO I                   =        10.00000000   
 SETTING W(10)          =         1.00000000                                  

 DO I                   =        11.00000000   
 SETTING W(11)          =         1.00000000                                  

 DO I                   =        12.00000000   
 SETTING W(12)          =         1.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  27 (   15   12)
 Number of active  orbitals:       13 (    7    6)
 Number of external orbitals:     128 (   68   60)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              49   (85 determinants, 169 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              36   (36 determinants, 78 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.472D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.163D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.973D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.473D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.283D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.471D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.826D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.306D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.269D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.471D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.310D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.402D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.577D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.426D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.301D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 4 3 2 6 1 5   4 3 6 2 1 1 1 5 3 6   4 2 1 4 2 6 3 5 4 6   2 3 5 1 711 8141013
                                       1215 9 6 4 2 5 3 112  11 814101513 7 9 6 4   2 3 5 11013151412 8  11 7 9 6 4 5 3 2 1 4
                                        6 5 3 2 4 6 5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.167D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.471D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.571D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.366D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.366D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.108D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.870D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.229D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.607D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.430D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.278D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.477D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.477D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.120D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.537D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.455D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 3 1 2 3 1 2   3 1 3 2 1 3 2 1 2 3   1 9 7 6 8 510 4 2 1   3 510 8 4 9 7 6 2 1
                                        3 4 6 9 7 510 8 2 1   3 4 5 6 9 710 8 4 5   6 9 710 8 2 1 3 4 9   7 6 5 810 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.78571   0.00794   0.00794   0.00794   0.00794   0.00794   0.00794   0.00794
                                          0.00794   0.00794   0.00794   0.00794
 Weight factors for state symmetry  2:    0.00794   0.00794   0.00794   0.00794   0.00794   0.00794   0.00794   0.00794
                                          0.00794   0.00794   0.00794   0.00794   0.00794   0.00794   0.00794   0.00794
 
 Number of orbital rotations:  2753  ( 177 closed/active, 1740 closed/virtual, 0 active/active, 836 active/virtual )
 Total number of variables:    4349
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   21   40    5  -8131.96663726   -8132.00460640   -0.03796914    0.01762438 0.00002097 0.00000000  0.27E+01      4.95
   2   12   20    0  -8131.99816793   -8131.99982671   -0.00165878    0.00667761 0.00000464 0.00000000  0.11E+01      9.34
   3   14   20    0  -8131.99983502   -8131.99983552   -0.00000049    0.00015362 0.00000000 0.00000000  0.10E-01     13.60
   4    3    6    0  -8131.99983552   -8131.99983552   -0.00000000    0.00000016 0.00000001 0.00000000  0.99E-05     16.70

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.29E-08)
                       Final energy:  -8131.99983552
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -8132.020523250959
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.80075710
 One electron energy                        -11099.97700446
 Two electron energy                          2967.95648121
 Virial ratio                                    1.84071002
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -8131.956771682930
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.90394439
 One electron energy                        -11101.88287481
 Two electron energy                          2969.92610312
 Virial ratio                                    1.84069446
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -8131.956771682545
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.90394438
 One electron energy                        -11101.88287473
 Two electron energy                          2969.92610305
 Virial ratio                                    1.84069446
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -8131.956771682253
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.90394435
 One electron energy                        -11101.88287452
 Two electron energy                          2969.92610283
 Virial ratio                                    1.84069446
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -8131.956771682202
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.90394435
 One electron energy                        -11101.88287453
 Two electron energy                          2969.92610285
 Virial ratio                                    1.84069446
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -8131.956771681381
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.90394427
 One electron energy                        -11101.88287396
 Two electron energy                          2969.92610228
 Virial ratio                                    1.84069446
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy             -8131.902503207413
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.06389821
 One electron energy                        -11103.54105521
 Two electron energy                          2971.63855200
 Virial ratio                                    1.84067495
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy             -8131.902503207173
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.06389821
 One electron energy                        -11103.54105520
 Two electron energy                          2971.63855199
 Virial ratio                                    1.84067495
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy             -8131.902503207094
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.06389826
 One electron energy                        -11103.54105553
 Two electron energy                          2971.63855233
 Virial ratio                                    1.84067495
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy            -8131.902503206833
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.06389822
 One electron energy                        -11103.54105528
 Two electron energy                          2971.63855208
 Virial ratio                                    1.84067495
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy            -8131.902503206710
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.06389824
 One electron energy                        -11103.54105538
 Two electron energy                          2971.63855217
 Virial ratio                                    1.84067495
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy            -8131.894512541396
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.90294508
 One electron energy                        -11100.00366052
 Two electron energy                          2968.10914798
 Virial ratio                                    1.84068811
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -8131.962805165401
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.98229610
 One electron energy                        -11102.62506089
 Two electron energy                          2970.66225572
 Virial ratio                                    1.84068828
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -8131.962805165018
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.98229607
 One electron energy                        -11102.62506073
 Two electron energy                          2970.66225556
 Virial ratio                                    1.84068828
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -8131.962805164715
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.98229605
 One electron energy                        -11102.62506053
 Two electron energy                          2970.66225537
 Virial ratio                                    1.84068828
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -8131.962805164606
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.98229604
 One electron energy                        -11102.62506052
 Two electron energy                          2970.66225536
 Virial ratio                                    1.84068828
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -8131.962805163265
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.98229595
 One electron energy                        -11102.62505990
 Two electron energy                          2970.66225474
 Virial ratio                                    1.84068828
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -8131.905066179579
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.27873267
 One electron energy                        -11105.95600784
 Two electron energy                          2974.05094166
 Virial ratio                                    1.84065654
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -8131.905066179507
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.27873263
 One electron energy                        -11105.95600757
 Two electron energy                          2974.05094139
 Virial ratio                                    1.84065654
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -8131.905066179452
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.27873260
 One electron energy                        -11105.95600739
 Two electron energy                          2974.05094121
 Virial ratio                                    1.84065654
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -8131.905066179395
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.27873256
 One electron energy                        -11105.95600710
 Two electron energy                          2974.05094092
 Virial ratio                                    1.84065654
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy            -8131.905066179300
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.27873252
 One electron energy                        -11105.95600684
 Two electron energy                          2974.05094066
 Virial ratio                                    1.84065654
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy            -8131.905066179263
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.27873250
 One electron energy                        -11105.95600672
 Two electron energy                          2974.05094054
 Virial ratio                                    1.84065654
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy            -8131.905066179222
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.27873250
 One electron energy                        -11105.95600666
 Two electron energy                          2974.05094048
 Virial ratio                                    1.84065654
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy            -8131.903007633137
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.94832344
 One electron energy                        -11102.29563690
 Two electron energy                          2970.39262927
 Virial ratio                                    1.84068505
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy            -8131.903007632055
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.94832349
 One electron energy                        -11102.29563736
 Two electron energy                          2970.39262972
 Virial ratio                                    1.84068505
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy            -8131.903007631941
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.94832349
 One electron energy                        -11102.29563735
 Two electron energy                          2970.39262972
 Virial ratio                                    1.84068505
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy            -8131.898074263581
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.71858138
 One electron energy                        -11095.95810180
 Two electron energy                          2964.06002754
 Virial ratio                                    1.84070450
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     2.935404869640
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.064595136288
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000352
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000001590
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     3.999999999235
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     3.999999995566
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     1.000000005249
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     2.958523101537
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     1.000000001368
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     1.041477401473
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.440418888748
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     3.559580352626
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000005978
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000002047
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999999999562
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.999999982282
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     3.249199533112
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     2.776451083331
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.003084676295
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     3.996915525776
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     7.223548886126
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     6.750801172967
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.000000000057
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.999999999943
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.001362134501
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.998637866658
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000103926
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.999999891755
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     1.000000000423
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.999999999968
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     1.000000004241
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.000565731739
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     3.999999995672
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     3.999434254673
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.695456628008
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     2.304544563463
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.999999989225
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000004923
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000000326
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     4.000000010258
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.959990458929
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     5.335881601820
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     6.213477891540
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     3.786525202647
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     4.664118312762
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     0.040009767812
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     1.000000000000
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.999999971580
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.000000028503
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.063232995859
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     0.936766997054
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999895722
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000106655
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     1.000000000342
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     1.000000004465
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     3.999999990510
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     3.040911166724
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     1.000000002960
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     0.959088343854
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     3.864124483244
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.135875083911
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000004797
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999999993030
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000112
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     4.000000007461
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     4.790810007959
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     3.887667314849
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     5.783437432165
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     4.216559271577
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.112332801112
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     5.209189059221
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     0.999999999943
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.000000028477
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.999999971497
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     6.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     6.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     6.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     6.000000000000
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     6.000000000000
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    12.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>    12.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>    12.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>    12.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>    12.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>    12.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    12.000000000000
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>     2.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>     2.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>     2.000000000000
 !MCSCF expec    <16.1 Triplet|L**2|16.1 Triplet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 5 3 2 6 1 4   3 5 2 6 1 1 2 6 3 4   5 1 1 5 3 2 4 6 2 5   4 3 6 1 712 8111310
                                       1514 9 4 2 6 5 3 111  12 815141013 7 9 6 4   2 3 5 11310151412 8  11 7 9 6 4 2 5 3 1 4
                                        6 2 5 3 4 6 5 3 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 3 1   2 2 1 3 7 9 8 610 5   4 5 810 4 7 9 6 2 1
                                        3 4 6 9 7 510 8 2 1   3 4 5 6 9 710 8 4 5   6 9 710 8 2 1 3 4 9   7 5 610 8 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1382.73646     1  1  s    1.00000
    2.1     2.00000  -222.44809     1  2  s    0.99999
    3.1     2.00000   -48.62154     1  3  s    1.00023
    4.1     2.00000   -29.93417     1  1  d1+  1.00000
    5.1     2.00000   -29.93417     1  1  d2+  1.00000
    6.1     2.00000   -29.93417     1  1  d2-  1.00000
    7.1     2.00000   -29.93417     1  1  d0   1.00000
    8.1     2.00000   -29.93417     1  1  d1-  1.00000
    9.1     2.00000   -10.24253     1  4  s    0.99960
   10.1     2.00000    -3.84224     1  2  d1+  1.00000
   11.1     2.00000    -3.84224     1  2  d2-  1.00000
   12.1     2.00000    -3.84224     1  2  d2+  1.00000
   13.1     2.00000    -3.84224     1  2  d0   1.00000
   14.1     2.00000    -3.84224     1  2  d1-  1.00000
   15.1     2.00000    -1.59046     1  5  s    0.99609
   16.1     1.52548    -0.12402     1  6  s    0.89441
   17.1     0.05990     0.06062     1  3  d0   0.84936
   18.1     0.05990     0.06062     1  3  d1-  0.84936
   19.1     0.05990     0.06062     1  3  d2-  0.84936
   20.1     0.05990     0.06062     1  3  d1+  0.84936
   21.1     0.05990     0.06062     1  3  d2+  0.84936
   22.1     0.01339     0.07484     1  5  s    0.95950    1  6  s   -3.65562    1  7  s    0.81991    1  8  s    2.16840
                                    1  9  s    1.21444    1 12  s   -0.49206
    1.2     2.00000  -199.38238     1  1  py   1.00000
    2.2     2.00000  -199.38238     1  1  px   1.00000
    3.2     2.00000  -199.38238     1  1  pz   1.00000
    4.2     2.00000   -41.03229     1  2  py   1.00001
    5.2     2.00000   -41.03229     1  2  pz   1.00001
    6.2     2.00000   -41.03229     1  2  px   1.00001
    7.2     2.00000    -7.68703     1  3  py   0.99885
    8.2     2.00000    -7.68703     1  3  pz   0.99885
    9.2     2.00000    -7.68703     1  3  px   0.99885
   10.2     2.00000    -0.88901     1  4  py   0.99796
   11.2     2.00000    -0.88901     1  4  pz   0.99796
   12.2     2.00000    -0.88901     1  4  px   0.99796
   13.2     0.05328     0.04988     1  5  py  -2.08881    1  6  py  -0.52929    1  7  py  -0.55684
   14.2     0.05328     0.04988     1  5  pz  -2.08881    1  6  pz  -0.52929    1  7  pz  -0.55684
   15.2     0.05328     0.04988     1  5  px  -2.08881    1  6  px  -0.52929    1  7  px  -0.55684
   16.2     0.00060     0.14677     1  4  py   1.42469    1  5  py   6.21674    1  6  py   3.39746    1  7  py   3.00191
                                    1  8  py   0.71267    1 11  py  -0.31594
   17.2     0.00060     0.14677     1  4  pz   1.42469    1  5  pz   6.21674    1  6  pz   3.39746    1  7  pz   3.00191
                                    1  8  pz   0.71267    1 11  pz  -0.31594
   18.2     0.00060     0.14677     1  4  px   1.42469    1  5  px   6.21674    1  6  px   3.39746    1  7  px   3.00191
                                    1  8  px   0.71267    1 11  px  -0.31594
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:                   1               2               3               4               5               6               7
 2000000 000000      0.95804512      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 b0a0000 000000     -0.00000000      0.00000428     -0.00000244     -0.00000481     -0.00000766     -0.64455382      0.02399116
 a0b0000 000000      0.00000000     -0.00000428      0.00000244      0.00000481      0.00000766      0.64455382     -0.02399116
 b000a00 000000      0.00000000     -0.00001166     -0.00000605     -0.00012004     -0.64455381      0.00000766     -0.00000024
 a000b00 000000     -0.00000000      0.00001166      0.00000605      0.00012004      0.64455381     -0.00000766      0.00000024
 b00a000 000000      0.00000000      0.00000786     -0.00000151     -0.64455381      0.00012004      0.00000481     -0.00000061
 a00b000 000000     -0.00000000     -0.00000786      0.00000151      0.64455381     -0.00012004     -0.00000481      0.00000061
 ab00000 000000      0.00000000      0.31192126      0.56405208      0.00000248     -0.00001093     -0.00000006      0.00000008
 ba00000 000000     -0.00000000     -0.31192126     -0.56405208     -0.00000248      0.00001093      0.00000006     -0.00000008
 a0000b0 000000     -0.00000000      0.56405208     -0.31192127      0.00000761     -0.00000728      0.00000493      0.00000070
 b0000a0 000000      0.00000000     -0.56405208      0.31192127     -0.00000761      0.00000728     -0.00000493     -0.00000070
 0b0a000 000000     -0.00000000      0.00000148     -0.00000028     -0.12131490      0.00002259      0.00000091      0.00001187
 0a0b000 000000      0.00000000     -0.00000148      0.00000028      0.12131490     -0.00002259     -0.00000091     -0.00001187
 0000200 000000     -0.04228166     -0.12129424     -0.00223869     -0.00000147      0.00000221     -0.00000080      0.00001251
 b00000a 000000      0.00272221      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 a00000b 000000     -0.00272221     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 0200000 000000     -0.04228166     -0.05870836     -0.10616324     -0.00000047      0.00000206      0.00000001      0.00000162
 0b000a0 000000     -0.00000000     -0.10616324      0.05870836     -0.00000143      0.00000137     -0.00000093      0.00001351
 0a000b0 000000      0.00000000      0.10616324     -0.05870836      0.00000143     -0.00000137      0.00000093     -0.00001351
 0002000 000000     -0.04228166      0.05870836      0.10616324      0.00000047     -0.00000206     -0.00000001     -0.00000162
 0000020 000000     -0.04228166      0.05870836      0.10616324      0.00000047     -0.00000206     -0.00000001     -0.00000162
 00ab000 000000     -0.00000000     -0.00000190     -0.00000099     -0.00001957     -0.10506178      0.00000125      0.00000399
 00ba000 000000      0.00000000      0.00000190      0.00000099      0.00001957      0.10506178     -0.00000125     -0.00000399
 00b0a00 000000      0.00000000     -0.00000128      0.00000025      0.10506178     -0.00001957     -0.00000078     -0.00001028
 00a0b00 000000     -0.00000000      0.00000128     -0.00000025     -0.10506178      0.00001957      0.00000078      0.00001028
 00b00a0 000000      0.00000000      0.00000070     -0.00000040     -0.00000078     -0.00000125     -0.10506178     -0.40312102
 00a00b0 000000     -0.00000000     -0.00000070      0.00000040      0.00000078      0.00000125      0.10506178      0.40312102
 000ba00 000000     -0.00000000     -0.00000070      0.00000040      0.00000078      0.00000125      0.10506178      0.40312102
 000ab00 000000      0.00000000      0.00000070     -0.00000040     -0.00000078     -0.00000125     -0.10506178     -0.40312102
 0000ba0 000000      0.00000000      0.00000190      0.00000099      0.00001957      0.10506178     -0.00000125     -0.00000399
 0000ab0 000000     -0.00000000     -0.00000190     -0.00000099     -0.00001957     -0.10506178      0.00000125      0.00000399
 0020000 000000     -0.04228166      0.06258588     -0.10392455      0.00000101     -0.00000016      0.00000081     -0.00001089
 0000000 200000     -0.15446198      0.27125027      0.00500638      0.00000329     -0.00000495      0.00000178      0.00001015
 0000000 020000     -0.15446197     -0.13128948     -0.23741282     -0.00000104      0.00000460      0.00000003     -0.00000131
 0000000 ba0000      0.00000000     -0.00000156      0.00000089      0.00000175      0.00000279      0.23494965     -0.32694462
 0000000 ab0000     -0.00000000      0.00000156     -0.00000089     -0.00000175     -0.00000279     -0.23494965      0.32694462
 0000000 a0b000      0.00000000      0.00000286     -0.00000055     -0.23494963      0.00004376      0.00000175     -0.00000834
 0000000 b0a000     -0.00000000     -0.00000286      0.00000055      0.23494963     -0.00004376     -0.00000175      0.00000834
 0000000 0ba000     -0.00000000      0.00000425      0.00000220      0.00004376      0.23494963     -0.00000279      0.00000324
 0000000 0ab000      0.00000000     -0.00000425     -0.00000220     -0.00004376     -0.23494963      0.00000279     -0.00000324
 0000000 002000     -0.15446197     -0.13996078      0.23240643     -0.00000225      0.00000035     -0.00000181     -0.00000883
 0ab0000 000000      0.00000000      0.00000040     -0.00000023     -0.00000045     -0.00000072     -0.06065745     -0.23274203
 0ba0000 000000     -0.00000000     -0.00000040      0.00000023      0.00000045      0.00000072      0.06065745      0.23274203
 0a00b00 000000     -0.00000000     -0.00000110     -0.00000057     -0.00001130     -0.06065745      0.00000072      0.00000231
 0b00a00 000000      0.00000000      0.00000110      0.00000057      0.00001130      0.06065745     -0.00000072     -0.00000231
 000b00a 000000      0.00000000      0.00000070     -0.00000014     -0.05756023      0.00001072      0.00000043     -0.00000245
 000a00b 000000     -0.00000000     -0.00000070      0.00000014      0.05756023     -0.00001072     -0.00000043      0.00000245
 0000b0a 000000      0.00000000     -0.00000104     -0.00000054     -0.00001072     -0.05756023      0.00000068     -0.00000095
 0000a0b 000000     -0.00000000      0.00000104      0.00000054      0.00001072      0.05756023     -0.00000068      0.00000095
 00b000a 000000      0.00000000      0.00000038     -0.00000022     -0.00000043     -0.00000068     -0.05756022      0.09619356
 00a000b 000000     -0.00000000     -0.00000038      0.00000022      0.00000043      0.00000068      0.05756022     -0.09619356
 0000000 00a00b      0.00820687     -0.00640488      0.01063538     -0.00000010      0.00000002     -0.00000008     -0.00000122
 0000000 00b00a     -0.00820687      0.00640488     -0.01063538      0.00000010     -0.00000002      0.00000008      0.00000122
 0000000 b00a00     -0.00820687     -0.01241295     -0.00022910     -0.00000015      0.00000023     -0.00000008     -0.00000140
 0000000 a00b00      0.00820687      0.01241295      0.00022910      0.00000015     -0.00000023      0.00000008      0.00000140
 0000000 0b00a0     -0.00820687      0.00600807      0.01086448      0.00000005     -0.00000021     -0.00000000      0.00000018
 0000000 0a00b0      0.00820687     -0.00600807     -0.01086448     -0.00000005      0.00000021      0.00000000     -0.00000018
 00000ab 000000      0.00000000      0.05037124     -0.02785534      0.00000068     -0.00000065      0.00000044      0.00000279
 00000ba 000000     -0.00000000     -0.05037124      0.02785534     -0.00000068      0.00000065     -0.00000044     -0.00000279
 0b0000a 000000     -0.00000000     -0.02785533     -0.05037124     -0.00000022      0.00000098      0.00000001     -0.00000034
 0a0000b 000000      0.00000000      0.02785533      0.05037124      0.00000022     -0.00000098     -0.00000001      0.00000034
 0000002 000000     -0.03366885     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 
 Energy:         -8132.02052325  -8131.95677168  -8131.95677168  -8131.95677168  -8131.95677168  -8131.95677168  -8131.90250321

 State:                   8               9              10              11              12
 2000000 000000     -0.00000000      0.00000001     -0.00000000     -0.00000001     -0.06224860
 b0a0000 000000      0.00000061     -0.00000065     -0.00000024      0.00000027      0.00000000
 a0b0000 000000     -0.00000061      0.00000065      0.00000024     -0.00000027     -0.00000000
 b000a00 000000      0.00000076      0.00000037     -0.02399116      0.00000027     -0.00000000
 a000b00 000000     -0.00000076     -0.00000037      0.02399116     -0.00000027      0.00000000
 b00a000 000000      0.02399116      0.00000058      0.00000076      0.00000060     -0.00000000
 a00b000 000000     -0.02399116     -0.00000058     -0.00000076     -0.00000060      0.00000000
 ab00000 000000     -0.00000080      0.01174764      0.00000042      0.02091815     -0.00000000
 ba00000 000000      0.00000080     -0.01174764     -0.00000042     -0.02091815      0.00000000
 a0000b0 000000     -0.00000022      0.02091814      0.00000019     -0.01174765      0.00000001
 b0000a0 000000      0.00000022     -0.02091814     -0.00000019      0.01174765     -0.00000001
 0b0a000 000000     -0.46548405     -0.00001131     -0.00001482     -0.00001155     -0.00000000
 0a0b000 000000      0.46548405      0.00001131      0.00001482      0.00001155      0.00000000
 0000200 000000     -0.00001144      0.46545113      0.00000725      0.00553581      0.27606310
 b00000a 000000      0.00000000      0.00000001     -0.00000000     -0.00000002     -0.42148360
 a00000b 000000     -0.00000000     -0.00000001      0.00000000      0.00000002      0.42148360
 0200000 000000     -0.00001561      0.22793143      0.00000807      0.40586042      0.27606302
 0b000a0 000000     -0.00000420      0.40586040      0.00000372     -0.22793143      0.00000005
 0a000b0 000000      0.00000420     -0.40586040     -0.00000372      0.22793143     -0.00000005
 0002000 000000      0.00001561     -0.22793146     -0.00000807     -0.40586039      0.27606310
 0000020 000000      0.00001561     -0.22793145     -0.00000807     -0.40586037      0.27606307
 00ab000 000000     -0.00001283     -0.00000623      0.40312103     -0.00000451     -0.00000000
 00ba000 000000      0.00001283      0.00000623     -0.40312103      0.00000451      0.00000000
 00b0a00 000000      0.40312103      0.00000979      0.00001283      0.00001000      0.00000000
 00a0b00 000000     -0.40312103     -0.00000979     -0.00001283     -0.00001000     -0.00000000
 00b00a0 000000     -0.00001028      0.00001089      0.00000399     -0.00000451     -0.00000000
 00a00b0 000000      0.00001028     -0.00001089     -0.00000399      0.00000451      0.00000000
 000ba00 000000      0.00001028     -0.00001089     -0.00000399      0.00000451      0.00000000
 000ab00 000000     -0.00001028      0.00001089      0.00000399     -0.00000451     -0.00000000
 0000ba0 000000      0.00001283      0.00000623     -0.40312102      0.00000451      0.00000000
 0000ab0 000000     -0.00001283     -0.00000623      0.40312102     -0.00000451     -0.00000000
 0020000 000000     -0.00000417     -0.23751973      0.00000081      0.40032467      0.27606306
 0000000 200000     -0.00000928      0.37749645      0.00000588      0.00448968     -0.26379603
 0000000 020000      0.00001266     -0.18486000     -0.00000654     -0.32916638     -0.26379603
 0000000 ba0000     -0.00000834      0.00000883      0.00000324     -0.00000365     -0.00000000
 0000000 ab0000      0.00000834     -0.00000883     -0.00000324      0.00000365      0.00000000
 0000000 a0b000      0.32694462      0.00000794      0.00001041      0.00000811      0.00000000
 0000000 b0a000     -0.32694462     -0.00000794     -0.00001041     -0.00000811     -0.00000000
 0000000 0ba000     -0.00001041     -0.00000505      0.32694462     -0.00000366     -0.00000000
 0000000 0ab000      0.00001041      0.00000505     -0.32694462      0.00000366      0.00000000
 0000000 002000     -0.00000338     -0.19263640      0.00000066      0.32467662     -0.26379608
 0ab0000 000000     -0.00000593      0.00000629      0.00000231     -0.00000260     -0.00000000
 0ba0000 000000      0.00000593     -0.00000629     -0.00000231      0.00000260      0.00000000
 0a00b00 000000     -0.00000741     -0.00000360      0.23274203     -0.00000261     -0.00000000
 0b00a00 000000      0.00000741      0.00000360     -0.23274203      0.00000261      0.00000000
 000b00a 000000      0.09619357      0.00000234      0.00000306      0.00000239      0.00000000
 000a00b 000000     -0.09619357     -0.00000234     -0.00000306     -0.00000239     -0.00000000
 0000b0a 000000      0.00000306      0.00000149     -0.09619357      0.00000108      0.00000000
 0000a0b 000000     -0.00000306     -0.00000149      0.09619357     -0.00000108     -0.00000000
 00b000a 000000      0.00000245     -0.00000260     -0.00000095      0.00000108      0.00000000
 00a000b 000000     -0.00000245      0.00000260      0.00000095     -0.00000108     -0.00000000
 0000000 00a00b     -0.00000047     -0.02657635      0.00000009      0.04479278     -0.08753284
 0000000 00b00a      0.00000047      0.02657635     -0.00000009     -0.04479278      0.08753284
 0000000 b00a00      0.00000128     -0.05207987     -0.00000081     -0.00061940      0.08753284
 0000000 a00b00     -0.00000128      0.05207987      0.00000081      0.00061940     -0.08753284
 0000000 0b00a0     -0.00000175      0.02550351      0.00000090      0.04541219      0.08753284
 0000000 0a00b0      0.00000175     -0.02550351     -0.00000090     -0.04541219     -0.08753284
 00000ab 000000     -0.00000087      0.08387218      0.00000077     -0.04710266      0.00000001
 00000ba 000000      0.00000087     -0.08387218     -0.00000077      0.04710266     -0.00000001
 0b0000a 000000      0.00000323     -0.04710266     -0.00000167     -0.08387218      0.00000001
 0a0000b 000000     -0.00000323      0.04710266      0.00000167      0.08387218     -0.00000001
 0000002 000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.07092586
 
 Energy:         -8131.90250321  -8131.90250321  -8131.90250321  -8131.90250321  -8131.89451254
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                   1               2               3               4               5               6               7
 0a000a0 000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      1.00000000     -0.00005308
 a0a0000 000000     -0.00000255     -0.00000340      0.00001060      0.00000551      0.99905205      0.00000000     -0.00000000
 a00a000 000000     -0.00000885     -0.00002368      0.00004010      0.99905205     -0.00000551     -0.00000000      0.00000000
 a000a00 000000      0.00001414      0.00004052      0.99905205     -0.00004010     -0.00001060      0.00000000      0.00000000
 0a0a000 000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00006844     -0.00004104
 a0000a0 000000      0.98193711      0.18413177     -0.00002137      0.00001306      0.00000313     -0.00000000      0.00000000
 aa00000 000000     -0.18413177      0.98193711     -0.00003721      0.00002164      0.00000287      0.00000000     -0.00000000
 a00000a 000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 000aa00 000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000720      0.00004531
 00aa000 000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00002109     -0.08945343
 0000aa0 000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00004942      0.88404670
 00a0a00 000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00001682      0.00002407
 00a00a0 000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00002146      0.00002492
 000a0a0 000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000841     -0.00001204
 0a00a00 000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00001636     -0.45875866
 0aa0000 000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00001655      0.00004055
 0000000 aa0000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 0000000 a0a000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 0000000 0aa000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000001
 0000000 a00a00     -0.00263325     -0.00225862      0.00000013     -0.00000008     -0.00000001      0.00000000     -0.00000000
 0000000 0a00a0     -0.00063940      0.00340977     -0.00000013      0.00000008      0.00000001      0.00000000     -0.00000000
 0000000 00a00a      0.00327265     -0.00115115      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0000000 a000a0     -0.00000001     -0.00000001      0.00000003      0.00000002      0.00300442     -0.00000000     -0.00000000
 0000000 0a0a00     -0.00000001     -0.00000001      0.00000003      0.00000002      0.00300442      0.00000000      0.00000000
 0000000 a0000a     -0.00000003     -0.00000007      0.00000012      0.00300442     -0.00000002      0.00000000     -0.00000000
 0000000 0a000a      0.00000004      0.00000012      0.00300442     -0.00000012     -0.00000003     -0.00000000      0.00000000
 0000000 00aa00     -0.00000003     -0.00000007      0.00000012      0.00300442     -0.00000002     -0.00000000      0.00000000
 0000000 00a0a0      0.00000004      0.00000012      0.00300442     -0.00000012     -0.00000003      0.00000000     -0.00000000
 
 Energy:         -8131.96280517  -8131.96280517  -8131.96280516  -8131.96280516  -8131.96280516  -8131.90506618  -8131.90506618

 State:                   8               9              10              11              12              13              14
 0a000a0 000000      0.00007062      0.00000881      0.00002662     -0.00000707      0.00001837      0.00000000      0.00000000
 a0a0000 000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 a00a000 000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 a000a00 000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0a0a000 000000      0.98585841      0.00009202     -0.00001218      0.16758039      0.00002565     -0.00000000     -0.00000002
 a0000a0 000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 aa00000 000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 a00000a 000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 000aa00 000000     -0.00008984      0.89408224     -0.02483798      0.00003580      0.00003731     -0.35692722     -0.00000269
 00aa000 000000     -0.00003261     -0.00003504     -0.00008724      0.00003367      0.88994277      0.00000012      0.00006017
 0000aa0 000000      0.00004413     -0.00003973     -0.00002187     -0.00002225     -0.13587275      0.00000012      0.00006017
 00a0a00 000000     -0.14988845     -0.00004869      0.00006065      0.88177862     -0.00003643     -0.00000269      0.35692706
 00a00a0 000000      0.00004029     -0.19947131      0.87190089     -0.00006413      0.00008013     -0.35692722     -0.00000269
 000a0a0 000000      0.07494422      0.00002434     -0.00003032     -0.44088918      0.00001822     -0.00000537      0.71385446
 0a00a00 000000     -0.00000665      0.00004317      0.00006300     -0.00000660     -0.43536243      0.00000021      0.00010422
 0aa0000 000000     -0.00002861      0.40103383      0.48905203     -0.00001635      0.00006780      0.61821602      0.00000465
 0000000 aa0000      0.00000000      0.00000002      0.00000002     -0.00000000      0.00000000      0.59157446      0.00000445
 0000000 a0a000      0.00000000      0.00000000     -0.00000000     -0.00000010      0.00000000      0.00000445     -0.59157444
 0000000 0aa000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000006     -0.00000021     -0.00009973
 0000000 a00a00      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 0000000 0a00a0      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 0000000 00a00a     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 0000000 a000a0      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.08069414      0.00000061
 0000000 0a0a00     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.08069414     -0.00000061
 0000000 a0000a      0.00000000      0.00000000     -0.00000000     -0.00000001      0.00000000      0.00000061     -0.08069414
 0000000 0a000a      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000001     -0.00000003     -0.00001360
 0000000 00aa00     -0.00000000     -0.00000000      0.00000000      0.00000002     -0.00000000     -0.00000061      0.08069414
 0000000 00a0a0     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000001      0.00000003      0.00001360
 
 Energy:         -8131.90506618  -8131.90506618  -8131.90506618  -8131.90506618  -8131.90506618  -8131.90300763  -8131.90300763

 State:                  15              16
 0a000a0 000000     -0.00000000      0.00000000
 a0a0000 000000     -0.00000000     -0.00000000
 a00a000 000000     -0.00000000     -0.00000000
 a000a00 000000      0.00000000      0.00000000
 0a0a000 000000      0.00000000      0.00000000
 a0000a0 000000      0.00000000      0.00000000
 aa00000 000000     -0.00000000      0.00000000
 a00000a 000000      0.00000000      0.98042366
 000aa00 000000      0.00000012      0.00000000
 00aa000 000000      0.35692711     -0.00000000
 0000aa0 000000      0.35692722     -0.00000000
 00a0a00 000000     -0.00006017      0.00000000
 00a00a0 000000      0.00000012      0.00000000
 000a0a0 000000     -0.00012034      0.00000000
 0a00a00 000000      0.61821608     -0.00000000
 0aa0000 000000     -0.00000022     -0.00000000
 0000000 aa0000     -0.00000021     -0.00000000
 0000000 a0a000      0.00009973     -0.00000000
 0000000 0aa000     -0.59157443      0.00000000
 0000000 a00a00     -0.00000000     -0.11368003
 0000000 0a00a0     -0.00000000     -0.11368002
 0000000 00a00a      0.00000000     -0.11368002
 0000000 a000a0     -0.00000003     -0.00000000
 0000000 0a0a00      0.00000003     -0.00000000
 0000000 a0000a      0.00001360      0.00000000
 0000000 0a000a     -0.08069414      0.00000000
 0000000 00aa00     -0.00001360      0.00000000
 0000000 00a0a0      0.08069414      0.00000000
 
 Energy:         -8131.90300763  -8131.89807426
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      163.55       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.25       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        30.06     13.51      0.11     16.05
 REAL TIME  *        38.28 SEC
 DISK USED  *       164.88 MB (local),        4.12 GB (total)
 SF USED    *       335.06 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY     LL
    -8132.020523    0.0
    -8131.956772    6.0
    -8131.956772    6.0
    -8131.956772    6.0
    -8131.956772    6.0
    -8131.956772    6.0
    -8131.902503    6.0
    -8131.902503    6.0
    -8131.902503    6.0
    -8131.902503    6.0
    -8131.902503    6.0
    -8131.894513    0.0
    -8131.962805    6.0
    -8131.962805    6.0
    -8131.962805    6.0
    -8131.962805    6.0
    -8131.962805    6.0
    -8131.905066   12.0
    -8131.905066   12.0
    -8131.905066   12.0
    -8131.905066   12.0
    -8131.905066   12.0
    -8131.905066   12.0
    -8131.905066   12.0
    -8131.903008    2.0
    -8131.903008    2.0
    -8131.903008    2.0
    -8131.898074    0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 56
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       49 conf       49 CSFs
 N elec internal:    78364 conf   221221 CSFs
 N-1 el internal:    20722 conf    70798 CSFs
 N-2 el internal:     2323 conf     8416 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          18 (   9   9 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       13 (   7   6 )
 Number of external orbitals:     128 (  68  60 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.50 sec, npass=  1  Memory used:   4.19 MW


 Number of p-space configurations:  49

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8132.02052325
     2     -8131.95677168
     3     -8131.95677168
     4     -8131.95677168
     5     -8131.95677168
     6     -8131.95677168
     7     -8131.90250321
     8     -8131.90250321
     9     -8131.90250321
    10     -8131.90250321
    11     -8131.90250321
    12     -8131.89451254

 Number of blocks in overlap matrix:  1099   Smallest eigenvalue:  0.41D+00
 Number of N-2 electron functions:    1207
 Number of N-1 electron functions:   70798

 Number of internal configurations:               110803
 Number of singly external configurations:       4531088
 Number of doubly external configurations:       4952688
 Total number of contracted configurations:      9594579
 Total number of uncontracted configurations:   39092259

 Diagonal Coupling coefficients finished.               Storage:76474800 words, CPU-Time:     92.16 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 3127200 words, CPU-time:      1.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8132.02052325    -0.00000000    -0.68023341  0.39D-01  0.76D-01   117.72
    1     2     2     1.00000000     0.00000000 -8131.95677168     0.00000000    -0.69575474  0.51D-01  0.82D-01   117.72
    1     3     3     1.00000000     0.00000000 -8131.95677168     0.00000000    -0.69560882  0.51D-01  0.82D-01   117.72
    1     4     4     1.00000000     0.00000000 -8131.95677168    -0.00000000    -0.69586669  0.51D-01  0.82D-01   117.72
    1     5     5     1.00000000     0.00000000 -8131.95677168    -0.00000000    -0.69594168  0.51D-01  0.82D-01   117.72
    1     6     6     1.00000000     0.00000000 -8131.95677168    -0.00000000    -0.69584493  0.51D-01  0.82D-01   117.72
    1     7     7     1.00000000     0.00000000 -8131.90250321     0.00000000    -0.70237466  0.45D-01  0.91D-01   117.72
    1     8     8     1.00000000     0.00000000 -8131.90250321    -0.00000000    -0.70240921  0.45D-01  0.91D-01   117.72
    1     9     9     1.00000000     0.00000000 -8131.90250321     0.00000000    -0.70176588  0.44D-01  0.91D-01   117.72
    1    10    10     1.00000000     0.00000000 -8131.90250321     0.00000000    -0.70239807  0.45D-01  0.91D-01   117.72
    1    11    11     1.00000000     0.00000000 -8131.90250321     0.00000000    -0.70163189  0.44D-01  0.91D-01   117.72
    1    12    12     1.00000000     0.00000000 -8131.89451254     0.00000000    -0.69285639  0.47D-01  0.85D-01   117.72
    2     1     1     1.07692377    -0.57381681 -8132.59434006    -0.57381681    -0.01006992  0.16D-02  0.85D-03   624.47
    2     2     2     1.08661524    -0.57498514 -8132.53175682    -0.57498514    -0.01170250  0.25D-02  0.11D-02   624.47
    2     3     3     1.08673038    -0.57491277 -8132.53168445    -0.57491277    -0.01178654  0.25D-02  0.11D-02   624.47
    2     4     4     1.08675137    -0.57489904 -8132.53167072    -0.57489904    -0.01180616  0.26D-02  0.11D-02   624.47
    2     5     5     1.08677458    -0.57488680 -8132.53165848    -0.57488680    -0.01181901  0.26D-02  0.11D-02   624.47
    2     6     6     1.08679896    -0.57486731 -8132.53163899    -0.57486731    -0.01184274  0.26D-02  0.11D-02   624.47
    2     7     7     1.08693380    -0.57501289 -8132.47751610    -0.57501289    -0.01201652  0.26D-02  0.15D-02   624.47
    2     8     8     1.08711676    -0.57485141 -8132.47735462    -0.57485141    -0.01221662  0.27D-02  0.15D-02   624.47
    2     9     9     1.08727293    -0.57469980 -8132.47720301    -0.57469980    -0.01241442  0.28D-02  0.15D-02   624.47
    2    10    10     1.08728144    -0.57469681 -8132.47720002    -0.57469681    -0.01241688  0.28D-02  0.15D-02   624.47
    2    11    11     1.08728268    -0.57469654 -8132.47719975    -0.57469654    -0.01241694  0.28D-02  0.15D-02   624.47
    2    12    12     1.08564440    -0.57279429 -8132.46730683    -0.57279429    -0.01308494  0.36D-02  0.15D-02   624.47
    3     1     1     1.07438480    -0.58338695 -8132.60391020    -0.00957014    -0.00017604  0.22D-04  0.20D-04  1130.21
    3     2     2     1.08035607    -0.58590637 -8132.54267806    -0.01092124    -0.00022723  0.35D-04  0.31D-04  1130.21
    3     3     3     1.08036222    -0.58590556 -8132.54267724    -0.01099279    -0.00022809  0.36D-04  0.31D-04  1130.21
    3     4     4     1.08036755    -0.58590448 -8132.54267616    -0.01100544    -0.00022942  0.36D-04  0.32D-04  1130.21
    3     5     5     1.08036709    -0.58590362 -8132.54267531    -0.01101683    -0.00023027  0.36D-04  0.32D-04  1130.21
    3     6     6     1.08036646    -0.58590356 -8132.54267524    -0.01103625    -0.00023035  0.36D-04  0.32D-04  1130.21
    3     7     7     1.08023683    -0.58618250 -8132.48868570    -0.01116961    -0.00025208  0.33D-04  0.45D-04  1130.21
    3     8     8     1.08025157    -0.58617698 -8132.48868019    -0.01132557    -0.00025869  0.34D-04  0.47D-04  1130.21
    3     9     9     1.08026522    -0.58617261 -8132.48867582    -0.01147281    -0.00026427  0.34D-04  0.48D-04  1130.21
    3    10    10     1.08026730    -0.58617258 -8132.48867579    -0.01147577    -0.00026431  0.34D-04  0.48D-04  1130.21
    3    11    11     1.08026434    -0.58617239 -8132.48867560    -0.01147586    -0.00026455  0.34D-04  0.48D-04  1130.21
    3    12    12     1.07777398    -0.58485207 -8132.47936461    -0.01205777    -0.00034054  0.52D-04  0.66D-04  1130.21
    4     1     1     1.07519241    -0.58356841 -8132.60409166    -0.00018146    -0.00000632  0.17D-05  0.60D-06  1623.33
    4     2     2     1.08091780    -0.58613615 -8132.54290783    -0.00022977    -0.00000874  0.30D-05  0.86D-06  1623.33
    4     3     3     1.08091848    -0.58613612 -8132.54290780    -0.00023055    -0.00000878  0.30D-05  0.87D-06  1623.33
    4     4     4     1.08091706    -0.58613604 -8132.54290772    -0.00023156    -0.00000887  0.30D-05  0.88D-06  1623.33
    4     5     5     1.08091659    -0.58613600 -8132.54290768    -0.00023238    -0.00000890  0.30D-05  0.88D-06  1623.33
    4     6     6     1.08091642    -0.58613599 -8132.54290767    -0.00023243    -0.00000891  0.30D-05  0.89D-06  1623.33
    4     7     7     1.08082569    -0.58644308 -8132.48894629    -0.00026059    -0.00001224  0.57D-05  0.14D-05  1623.33
    4     8     8     1.08082219    -0.58644292 -8132.48894613    -0.00026594    -0.00001246  0.58D-05  0.14D-05  1623.33
    4     9     9     1.08081911    -0.58644281 -8132.48894602    -0.00027020    -0.00001262  0.59D-05  0.15D-05  1623.33
    4    10    10     1.08081912    -0.58644281 -8132.48894602    -0.00027023    -0.00001262  0.59D-05  0.15D-05  1623.33
    4    11    11     1.08081873    -0.58644279 -8132.48894599    -0.00027039    -0.00001264  0.59D-05  0.15D-05  1623.33
    4    12    12     1.07817758    -0.58520240 -8132.47971494    -0.00035033    -0.00001840  0.74D-05  0.26D-05  1623.33
    5     1     1     1.07531899    -0.58357460 -8132.60409785    -0.00000619    -0.00000021  0.39D-07  0.26D-07  2101.04
    5     2     2     1.08103181    -0.58614498 -8132.54291666    -0.00000883    -0.00000032  0.80D-07  0.39D-07  2101.04
    5     3     3     1.08103205    -0.58614498 -8132.54291666    -0.00000886    -0.00000032  0.81D-07  0.40D-07  2101.04
    5     4     4     1.08103205    -0.58614498 -8132.54291666    -0.00000894    -0.00000032  0.81D-07  0.40D-07  2101.04
    5     5     5     1.08103190    -0.58614498 -8132.54291666    -0.00000898    -0.00000032  0.82D-07  0.40D-07  2101.04
    5     6     6     1.08103188    -0.58614498 -8132.54291666    -0.00000898    -0.00000032  0.82D-07  0.40D-07  2101.04
    5     7     7     1.08094497    -0.58645629 -8132.48895949    -0.00001320    -0.00000069  0.17D-06  0.11D-06  2101.04
    5     8     8     1.08094495    -0.58645628 -8132.48895949    -0.00001336    -0.00000069  0.17D-06  0.11D-06  2101.04
    5     9     9     1.08094487    -0.58645629 -8132.48895949    -0.00001348    -0.00000069  0.17D-06  0.11D-06  2101.04
    5    10    10     1.08094431    -0.58645628 -8132.48895948    -0.00001347    -0.00000069  0.17D-06  0.11D-06  2101.04
    5    11    11     1.08094334    -0.58645627 -8132.48895948    -0.00001348    -0.00000070  0.17D-06  0.11D-06  2101.04
    5    12    12     1.07822654    -0.58522207 -8132.47973461    -0.00001967    -0.00000097  0.24D-06  0.17D-06  2101.04
    6     1     1     1.07532009    -0.58357482 -8132.60409807    -0.00000022    -0.00000001  0.18D-08  0.91D-09  2577.65
    6     2     2     1.08103274    -0.58614534 -8132.54291702    -0.00000036    -0.00000002  0.60D-08  0.19D-08  2577.65
    6     3     3     1.08103269    -0.58614534 -8132.54291702    -0.00000036    -0.00000002  0.60D-08  0.19D-08  2577.65
    6     4     4     1.08103276    -0.58614534 -8132.54291702    -0.00000036    -0.00000002  0.59D-08  0.18D-08  2577.65
    6     5     5     1.08103271    -0.58614534 -8132.54291702    -0.00000036    -0.00000002  0.60D-08  0.19D-08  2577.65
    6     6     6     1.08103276    -0.58614534 -8132.54291702    -0.00000036    -0.00000002  0.59D-08  0.18D-08  2577.65
    6     7     7     1.08092012    -0.58645708 -8132.48896029    -0.00000079    -0.00000004  0.98D-08  0.63D-08  2577.65
    6     8     8     1.08092009    -0.58645708 -8132.48896029    -0.00000079    -0.00000004  0.99D-08  0.63D-08  2577.65
    6     9     9     1.08092011    -0.58645708 -8132.48896029    -0.00000079    -0.00000004  0.99D-08  0.63D-08  2577.65
    6    10    10     1.08091945    -0.58645708 -8132.48896029    -0.00000080    -0.00000004  0.96D-08  0.59D-08  2577.65
    6    11    11     1.08091969    -0.58645708 -8132.48896028    -0.00000081    -0.00000004  0.97D-08  0.60D-08  2577.65
    6    12    12     1.07817078    -0.58522314 -8132.47973568    -0.00000107    -0.00000005  0.80D-08  0.99D-08  2577.65
    7     1     1     1.07532044    -0.58357482 -8132.60409807    -0.00000000    -0.00000001  0.15D-08  0.80D-09  2882.11
    7     2     2     1.08103415    -0.58614534 -8132.54291702    -0.00000000    -0.00000002  0.44D-08  0.18D-08  2882.11
    7     3     3     1.08103412    -0.58614534 -8132.54291702    -0.00000000    -0.00000002  0.44D-08  0.18D-08  2882.11
    7     4     4     1.08103401    -0.58614534 -8132.54291702    -0.00000000    -0.00000002  0.44D-08  0.17D-08  2882.11
    7     5     5     1.08103413    -0.58614534 -8132.54291702    -0.00000000    -0.00000002  0.44D-08  0.18D-08  2882.11
    7     6     6     1.08103408    -0.58614534 -8132.54291702    -0.00000000    -0.00000002  0.44D-08  0.18D-08  2882.11
    7     7     7     1.08092289    -0.58645712 -8132.48896033    -0.00000004    -0.00000000  0.31D-09  0.23D-09  2882.11
    7     8     8     1.08092290    -0.58645712 -8132.48896033    -0.00000004    -0.00000000  0.30D-09  0.22D-09  2882.11
    7     9     9     1.08092290    -0.58645712 -8132.48896033    -0.00000004    -0.00000000  0.31D-09  0.22D-09  2882.11
    7    10    10     1.08092275    -0.58645712 -8132.48896033    -0.00000004    -0.00000000  0.29D-09  0.21D-09  2882.11
    7    11    11     1.08092278    -0.58645712 -8132.48896033    -0.00000004    -0.00000000  0.29D-09  0.21D-09  2882.11
    7    12    12     1.07816896    -0.58522319 -8132.47973573    -0.00000005    -0.00000000  0.23D-09  0.28D-09  2882.11


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   9.4%
 S   3.0%  46.2%
 P   0.5%  15.9%  12.6%

 Initialization:   3.3%
 Other:            9.1%

 Total CPU:     2882.1 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222000000222000000           0.9238907   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                                  0.0000000  -0.0000000  -0.0000000   0.0070079
 222222/00\000222000000          -0.0000000   0.8765685   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0963359
                                 -0.0000000  -0.0000000  -0.0000000   0.0000000
 222222/0\0000222000000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8765684   0.0000000  -0.0963359   0.0000000
                                  0.0000000   0.0000000   0.0000000  -0.0000000
 222222/000\00222000000           0.0000000  -0.0000000   0.8765684  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                                  0.0963359  -0.0000000  -0.0000000  -0.0000000
 222222/\00000222000000           0.0000000   0.0000000  -0.0000000   0.8622573   0.0000000  -0.1577487   0.0000000   0.0000000
                                  0.0000000   0.0775101   0.0572082  -0.0000000
 222222/0000\0222000000          -0.0000000   0.0000000   0.0000000   0.1577487   0.0000000   0.8622572  -0.0000000   0.0000000
                                  0.0000000   0.0572082  -0.0775101   0.0000000
 2222220/0\000222000000           0.0000000   0.1998124  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.6247028
                                  0.0000000   0.0000000   0.0000000   0.0000000
 222222/00000\222000000          -0.0488182   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                                 -0.0000000   0.0000000   0.0000000   0.5684778
 222222000/\00222000000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.1730429  -0.0000000  -0.5410085   0.0000000
                                  0.0000000   0.0000000  -0.0000000   0.0000000
 2222220000/\0222000000           0.0000000  -0.0000000  -0.1730426  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                                  0.5410085   0.0000000  -0.0000000  -0.0000000
 22222200/\000222000000          -0.0000000  -0.0000000  -0.1730429  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                                  0.5410085   0.0000000  -0.0000000   0.0000000
 22222200/00\0222000000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.1730426   0.0000000   0.5410085  -0.0000000
                                 -0.0000000  -0.0000000   0.0000000  -0.0000000
 22222200/0\00222000000          -0.0000000  -0.1730427   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.5410085
                                 -0.0000000  -0.0000000   0.0000000  -0.0000000
 2222220/000\0222000000           0.0000000  -0.0000000  -0.0000000   0.0359586  -0.0000000   0.1965508  -0.0000000   0.0000000
                                  0.0000000  -0.3709746   0.5026249  -0.0000000
 2222220000000222/\0000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.2797013   0.0000000   0.4524097   0.0000000
                                  0.0000000  -0.0000000   0.0000000  -0.0000000
 2222220000000222/0\000          -0.0000000  -0.2797013  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.4524097
                                  0.0000000   0.0000000  -0.0000000   0.0000000
 22222200000002220/\000           0.0000000  -0.0000000  -0.2797014  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                                 -0.4524097  -0.0000000   0.0000000  -0.0000000
 2222220020000222000000          -0.0551801  -0.0000000   0.0000000  -0.0474712   0.0000000   0.1330749  -0.0000000  -0.0000000
                                 -0.0000000  -0.0494697   0.4389526   0.2657281
 2222220000200222000000          -0.0551801   0.0000000  -0.0000000  -0.0915112  -0.0000000  -0.1076483  -0.0000000   0.0000000
                                 -0.0000000   0.4048791  -0.1766340   0.2657282
 2222220000000222002000          -0.1291147   0.0000000   0.0000000   0.0767308   0.0000000  -0.2150992  -0.0000000   0.0000000
                                  0.0000000  -0.0413684   0.3670673  -0.2595344
 2222220002000222000000          -0.0551801  -0.0000000  -0.0000000   0.1389823   0.0000000  -0.0254266   0.0000000  -0.0000000
                                  0.0000000  -0.3554094  -0.2623185   0.2657282
 2222220000020222000000          -0.0551802  -0.0000000   0.0000000   0.1389819   0.0000000  -0.0254266   0.0000000  -0.0000000
                                 -0.0000000  -0.3554093  -0.2623185   0.2657280
 2222220200000222000000          -0.0551802   0.0000000   0.0000000  -0.1389818  -0.0000000   0.0254265   0.0000000  -0.0000000
                                  0.0000000   0.3554093   0.2623185   0.2657280
 2222220000000222200000          -0.1291147  -0.0000000   0.0000000   0.1479159  -0.0000000   0.1740004   0.0000000  -0.0000000
                                 -0.0000000   0.3385738  -0.1477076  -0.2595344
 2222220/00\00222000000           0.0000000   0.0000000  -0.0999060  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                                  0.3123514  -0.0000000   0.0000000  -0.0000000
 2222220/\0000222000000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0999060   0.0000000  -0.3123514   0.0000000
                                  0.0000000   0.0000000   0.0000000  -0.0000000
 2222220000000222020000          -0.1291148   0.0000000  -0.0000000  -0.2246467  -0.0000000   0.0410988  -0.0000000   0.0000000
                                  0.0000000  -0.2972054  -0.2193597  -0.2595344
 2222220000/0\222000000          -0.0000000   0.0000000   0.0580122   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                                  0.1322598  -0.0000000   0.0000000  -0.0000000
 222222000/00\222000000          -0.0000000   0.0580122  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.1322598
                                  0.0000000   0.0000000  -0.0000000   0.0000000
 22222200/000\222000000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0580122  -0.0000000  -0.1322597   0.0000000
                                 -0.0000000   0.0000000  -0.0000000  -0.0000000
 2222220000000222/00\00           0.0163143   0.0000000  -0.0000000   0.0070662   0.0000000   0.0083123  -0.0000000  -0.0000000
                                 -0.0000000   0.0604272  -0.0263622  -0.1108220
 222222000000022200/00\           0.0163143   0.0000000   0.0000000   0.0036656  -0.0000000  -0.0102756  -0.0000000   0.0000000
                                  0.0000000  -0.0073832   0.0655125  -0.1108220
 22222200000002220/00\0           0.0163143   0.0000000  -0.0000000  -0.0107317  -0.0000000   0.0019634  -0.0000000  -0.0000000
                                  0.0000000  -0.0530439  -0.0391504  -0.1108220
 2222220/0000\222000000          -0.0000000  -0.0000000   0.0000000   0.0570650   0.0000000  -0.0104399   0.0000000  -0.0000000
                                  0.0000000   0.1064139   0.0785414  -0.0000000
 22222200000/\222000000           0.0000000  -0.0000000   0.0000000   0.0104400  -0.0000000   0.0570650   0.0000000  -0.0000000
                                  0.0000000   0.0785413  -0.1064139   0.0000000
 2222220000002222000000          -0.0272921   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                                  0.0000000  -0.0000000  -0.0000000  -0.0807862
 2222220000000222/0000\          -0.0000000  -0.0094483  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0570947
                                 -0.0000000  -0.0000000  -0.0000000   0.0000000
 222222000000022200/\00          -0.0000000  -0.0094483  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0570947
                                 -0.0000000  -0.0000000  -0.0000000   0.0000000
 2222220000000222/000\0           0.0000000   0.0000000   0.0000000   0.0000000  -0.0094483   0.0000000   0.0570947   0.0000000
                                  0.0000000   0.0000000   0.0000000   0.0000000
 22222200000002220/0\00           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0094483   0.0000000   0.0570947   0.0000000
                                  0.0000000  -0.0000000   0.0000000   0.0000000
 222222000000022200/0\0           0.0000000   0.0000000  -0.0094483   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                                 -0.0570947  -0.0000000  -0.0000000  -0.0000000
 22222200000002220/000\           0.0000000   0.0000000  -0.0094483   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                                 -0.0570947  -0.0000000  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.958369    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.064738
 2           0.000000   -0.000000    0.000000    0.957032   -0.000000   -0.000000    0.000000    0.061971   -0.000000   -0.000000
            -0.000000   -0.000000
 3          -0.000000    0.000000   -0.000000    0.000000    0.957032   -0.000000   -0.000000   -0.000000   -0.000000   -0.061971
            -0.000000    0.000000
 4          -0.000000    0.606282    0.740494    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.039577   -0.000000
             0.047687   -0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.000000    0.957032    0.061971    0.000000    0.000000   -0.000000
             0.000000    0.000000
 6           0.000000    0.740494   -0.606282    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.047687    0.000000
            -0.039577   -0.000000
 7          -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.063129    0.957430   -0.000000   -0.000000    0.000000
             0.000000    0.000000
 8           0.000000    0.000000   -0.000000   -0.063129    0.000000   -0.000000    0.000000    0.957430    0.000000   -0.000000
            -0.000000   -0.000000
 9           0.000000   -0.000000    0.000000    0.000000    0.063129    0.000000   -0.000000    0.000000    0.000000    0.957430
             0.000000   -0.000000
 10         -0.000000    0.057386    0.026308   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.872968    0.000000
            -0.393190    0.000000
 11          0.000000   -0.026308    0.057386   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.393190   -0.000000
            -0.872968   -0.000000
 12          0.067440    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.957492

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960552    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.001378
 2           0.000000    0.959036    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000565    0.000000    0.000000
            -0.000000   -0.000000
 3          -0.000000    0.000000    0.959036    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000565    0.000000
            -0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.959036    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000507
             0.000248   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.959036   -0.000000   -0.000565   -0.000000   -0.000000    0.000000
            -0.000000    0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.959036    0.000000   -0.000000   -0.000000    0.000248
            -0.000507    0.000000
 7           0.000000    0.000000   -0.000000    0.000000   -0.000565    0.000000    0.959509   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 8          -0.000000   -0.000565    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.959509   -0.000000    0.000000
             0.000000    0.000000
 9          -0.000000    0.000000    0.000565    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.959509   -0.000000
            -0.000000   -0.000000
 10          0.000000    0.000000    0.000000    0.000507    0.000000    0.000248    0.000000    0.000000   -0.000000    0.959509
             0.000000    0.000000
 11         -0.000000   -0.000000   -0.000000    0.000248   -0.000000   -0.000507   -0.000000    0.000000   -0.000000    0.000000
             0.959509    0.000000
 12          0.001378   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000000    0.959863


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95836855 (fixed)   0.96062192 (relaxed)   0.96055164 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00790748   -0.01731306   -0.50109967
 Singles      0.02162647   -0.08150706   -0.08685022
 Pairs        0.05428956    0.03642124    0.00437506
 Total        1.08382351   -0.06239889   -0.58357482
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8132.01992630
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.55935545
 One electron energy               -11100.93552277
 Two electron energy                 2968.33142470
 Virial quotient                       -0.84070442
 Correlation energy                    -0.58417177
 !MRCI STATE 1.1 Energy             -8132.604098074057

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.65306540 (Davidson, fixed reference)
 Cluster corrected energies         -8132.65297275 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.65306540 (Davidson, rotated reference)

 Cluster corrected energies         -8132.65130215 (Pople, fixed reference)
 Cluster corrected energies         -8132.65120656 (Pople, relaxed reference)
 Cluster corrected energies         -8132.65130215 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95703187 (fixed)   0.95920166 (relaxed)   0.95903602 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00575164   -0.01274560   -0.46739959
 Singles      0.02459442   -0.08133555   -0.08807190
 Pairs        0.05690582    0.00000000   -0.03067385
 Total        1.08725187   -0.09408116   -0.58614534
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95654094
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.46361181
 One electron energy               -11102.56596167
 Two electron energy                 2970.02304465
 Virial quotient                       -0.84070642
 Correlation energy                    -0.58637608
 !MRCI STATE 2.1 Energy             -8132.542917023981

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.59407943 (Davidson, fixed reference)
 Cluster corrected energies         -8132.59385927 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.59407943 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59237933 (Pople, fixed reference)
 Cluster corrected energies         -8132.59215094 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59237933 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95703188 (fixed)   0.95920167 (relaxed)   0.95903604 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00575163   -0.01274560   -0.46739964
 Singles      0.02459437   -0.08133552   -0.08807187
 Pairs        0.05690583   -0.00000000   -0.03067383
 Total        1.08725183   -0.09408112   -0.58614534
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95654094
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.46361049
 One electron energy               -11102.56595761
 Two electron energy                 2970.02304059
 Virial quotient                       -0.84070642
 Correlation energy                    -0.58637608
 !MRCI STATE 3.1 Energy             -8132.542917023421

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.59407941 (Davidson, fixed reference)
 Cluster corrected energies         -8132.59385925 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.59407941 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59237931 (Pople, fixed reference)
 Cluster corrected energies         -8132.59215092 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59237931 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.74049447 (fixed)   0.95920172 (relaxed)   0.95903608 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00575164   -0.01274561   -0.46739972
 Singles      0.02459433   -0.08133549   -0.08807185
 Pairs        0.05690576    0.00000000   -0.03067377
 Total        1.08725173   -0.09408109   -0.58614534
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95654095
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.46364729
 One electron energy               -11102.56599752
 Two electron energy                 2970.02308050
 Virial quotient                       -0.84070641
 Correlation energy                    -0.58637608
 !MRCI STATE 4.1 Energy             -8132.542917022596

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.59407935 (Davidson, fixed reference)
 Cluster corrected energies         -8132.59385919 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.59407935 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59237925 (Pople, fixed reference)
 Cluster corrected energies         -8132.59215086 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59237925 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95703188 (fixed)   0.95920167 (relaxed)   0.95903603 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00575163   -0.01274560   -0.46739960
 Singles      0.02459440   -0.08133556   -0.08807189
 Pairs        0.05690581    0.00000000   -0.03067385
 Total        1.08725184   -0.09408116   -0.58614534
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95654094
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.46361354
 One electron energy               -11102.56596222
 Two electron energy                 2970.02304520
 Virial quotient                       -0.84070642
 Correlation energy                    -0.58637608
 !MRCI STATE 5.1 Energy             -8132.542917022298

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.59407942 (Davidson, fixed reference)
 Cluster corrected energies         -8132.59385925 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.59407942 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59237931 (Pople, fixed reference)
 Cluster corrected energies         -8132.59215093 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59237931 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.74049444 (fixed)   0.95920169 (relaxed)   0.95903605 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00575164   -0.01274561   -0.46739972
 Singles      0.02459435   -0.08133547   -0.08807186
 Pairs        0.05690580    0.00000001   -0.03067376
 Total        1.08725179   -0.09408106   -0.58614534
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95654095
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.46362321
 One electron energy               -11102.56597175
 Two electron energy                 2970.02305473
 Virial quotient                       -0.84070641
 Correlation energy                    -0.58637608
 !MRCI STATE 6.1 Energy             -8132.542917021798

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.59407939 (Davidson, fixed reference)
 Cluster corrected energies         -8132.59385922 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.59407939 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59237928 (Pople, fixed reference)
 Cluster corrected energies         -8132.59215089 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59237928 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95743010 (fixed)   0.95965499 (relaxed)   0.95950891 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00486395   -0.01100267   -0.47167115
 Singles      0.02167206   -0.07698964   -0.08258223
 Pairs        0.05964444   -0.00000000   -0.03220374
 Total        1.08618045   -0.08799231   -0.58645712
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90273395
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.44425577
 One electron energy               -11103.21280021
 Two electron energy                 2970.72383988
 Virial quotient                       -0.84070252
 Correlation energy                    -0.58622638
 !MRCI STATE 7.1 Energy             -8132.488960327400

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53948158 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53928773 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53948158 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53775883 (Pople, fixed reference)
 Cluster corrected energies         -8132.53755809 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53775883 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.95743010 (fixed)   0.95965499 (relaxed)   0.95950890 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00486395   -0.01100267   -0.47167114
 Singles      0.02167206   -0.07698965   -0.08258223
 Pairs        0.05964444    0.00000000   -0.03220375
 Total        1.08618045   -0.08799232   -0.58645712
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90273394
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.44425662
 One electron energy               -11103.21280112
 Two electron energy                 2970.72384080
 Virial quotient                       -0.84070252
 Correlation energy                    -0.58622638
 !MRCI STATE 8.1 Energy             -8132.488960327369

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53948158 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53928774 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53948158 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53775883 (Pople, fixed reference)
 Cluster corrected energies         -8132.53755810 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53775883 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95743010 (fixed)   0.95965499 (relaxed)   0.95950890 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00486395   -0.01100267   -0.47167114
 Singles      0.02167206   -0.07698964   -0.08258223
 Pairs        0.05964444    0.00000000   -0.03220375
 Total        1.08618045   -0.08799231   -0.58645712
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90273394
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.44425644
 One electron energy               -11103.21280112
 Two electron energy                 2970.72384079
 Virial quotient                       -0.84070252
 Correlation energy                    -0.58622638
 !MRCI STATE 9.1 Energy             -8132.488960326951

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53948158 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53928774 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53948158 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53775883 (Pople, fixed reference)
 Cluster corrected energies         -8132.53755810 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53775883 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.87296839 (fixed)   0.95965505 (relaxed)   0.95950897 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00486394   -0.01100266   -0.47167119
 Singles      0.02167200   -0.07698965   -0.08258222
 Pairs        0.05964436   -0.00000001   -0.03220371
 Total        1.08618030   -0.08799233   -0.58645712
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90273394
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.44425503
 One electron energy               -11103.21278690
 Two electron energy                 2970.72382657
 Virial quotient                       -0.84070252
 Correlation energy                    -0.58622638
 !MRCI STATE 10.1 Energy            -8132.488960326014

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53948149 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53928765 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53948149 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53775874 (Pople, fixed reference)
 Cluster corrected energies         -8132.53755800 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53775874 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.87296840 (fixed)   0.95965504 (relaxed)   0.95950896 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00486394   -0.01100266   -0.47167119
 Singles      0.02167202   -0.07698966   -0.08258223
 Pairs        0.05964436    0.00000001   -0.03220370
 Total        1.08618033   -0.08799231   -0.58645712
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90273394
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.44425564
 One electron energy               -11103.21278958
 Two electron energy                 2970.72382925
 Virial quotient                       -0.84070252
 Correlation energy                    -0.58622638
 !MRCI STATE 11.1 Energy            -8132.488960325383

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53948151 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53928766 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53948151 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53775875 (Pople, fixed reference)
 Cluster corrected energies         -8132.53755802 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53775875 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95749166 (fixed)   0.96006912 (relaxed)   0.95986275 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00668802   -0.01428461   -0.01820631
 Singles      0.02118581   -0.07824881   -0.08351657
 Pairs        0.05750595   -0.49112760   -0.48350031
 Total        1.08537978   -0.58366102   -0.58522319
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.89510949
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.43396743
 One electron energy               -11099.68367759
 Two electron energy                 2967.20394186
 Virial quotient                       -0.84070246
 Correlation energy                    -0.58462624
 !MRCI STATE 12.1 Energy            -8132.479735730317

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.52965099 (Davidson, fixed reference)
 Cluster corrected energies         -8132.52937822 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.52965099 (Davidson, rotated reference)

 Cluster corrected energies         -8132.52791649 (Pople, fixed reference)
 Cluster corrected energies         -8132.52763443 (Pople, relaxed reference)
 Cluster corrected energies         -8132.52791649 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      163.55       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      908.58       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4054.06   4023.98     13.51      0.11     16.05
 REAL TIME  *      4139.57 SEC
 DISK USED  *         1.05 GB (local),       25.38 GB (total)
 SF USED    *         9.33 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -8132.65306540  AU                              
 SETTING HLSDIAG(2)     =     -8132.59407943  AU                              
 SETTING HLSDIAG(3)     =     -8132.59407941  AU                              
 SETTING HLSDIAG(4)     =     -8132.59407935  AU                              
 SETTING HLSDIAG(5)     =     -8132.59407942  AU                              
 SETTING HLSDIAG(6)     =     -8132.59407939  AU                              
 SETTING HLSDIAG(7)     =     -8132.53948158  AU                              
 SETTING HLSDIAG(8)     =     -8132.53948158  AU                              
 SETTING HLSDIAG(9)     =     -8132.53948158  AU                              
 SETTING HLSDIAG(10)    =     -8132.53948149  AU                              
 SETTING HLSDIAG(11)    =     -8132.53948151  AU                              
 SETTING HLSDIAG(12)    =     -8132.52965099  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16
 Number of reference states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 56
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       36 conf       36 CSFs
 N elec internal:    76137 conf   361851 CSFs
 N-1 el internal:    16942 conf   111046 CSFs
 N-2 el internal:     1738 conf    12988 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          18 (   9   9 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       13 (   7   6 )
 Number of external orbitals:     128 (  68  60 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  36

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8131.96280517
     2     -8131.96280517
     3     -8131.96280516
     4     -8131.96280516
     5     -8131.96280516
     6     -8131.90506618
     7     -8131.90506618
     8     -8131.90506618
     9     -8131.90506618
    10     -8131.90506618
    11     -8131.90506618
    12     -8131.90506618
    13     -8131.90300763
    14     -8131.90300763
    15     -8131.90300763
    16     -8131.89807426

 Number of blocks in overlap matrix:  1441   Smallest eigenvalue:  0.96D+00
 Number of N-2 electron functions:    1531
 Number of N-1 electron functions:  111046

 Number of internal configurations:               180819
 Number of singly external configurations:       7106672
 Number of doubly external configurations:       6282544
 Total number of contracted configurations:     13570035
 Total number of uncontracted configurations:   60352995

 Diagonal Coupling coefficients finished.               Storage:******** words, CPU-Time:    260.23 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 3235881 words, CPU-time:      1.27 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8131.96280517    -0.00000000    -0.70170279  0.55D-01  0.83D-01   310.12
    1     2     2     1.00000000     0.00000000 -8131.96280517    -0.00000000    -0.70169626  0.55D-01  0.83D-01   310.12
    1     3     3     1.00000000     0.00000000 -8131.96280516     0.00000000    -0.70178855  0.55D-01  0.83D-01   310.12
    1     4     4     1.00000000     0.00000000 -8131.96280516    -0.00000000    -0.70178309  0.55D-01  0.83D-01   310.12
    1     5     5     1.00000000     0.00000000 -8131.96280516     0.00000000    -0.70178530  0.55D-01  0.83D-01   310.12
    1     6     6     1.00000000     0.00000000 -8131.90506618     0.00000000    -0.71416023  0.50D-01  0.94D-01   310.12
    1     7     7     1.00000000     0.00000000 -8131.90506618     0.00000000    -0.71430728  0.50D-01  0.95D-01   310.12
    1     8     8     1.00000000     0.00000000 -8131.90506618    -0.00000000    -0.71445469  0.50D-01  0.95D-01   310.12
    1     9     9     1.00000000     0.00000000 -8131.90506618     0.00000000    -0.71454159  0.50D-01  0.95D-01   310.12
    1    10    10     1.00000000     0.00000000 -8131.90506618    -0.00000000    -0.71429659  0.50D-01  0.95D-01   310.12
    1    11    11     1.00000000     0.00000000 -8131.90506618    -0.00000000    -0.71451425  0.50D-01  0.95D-01   310.12
    1    12    12     1.00000000     0.00000000 -8131.90506618    -0.00000000    -0.71452973  0.50D-01  0.95D-01   310.12
    1    13    13     1.00000000     0.00000000 -8131.90300763     0.00000000    -0.69702617  0.43D-01  0.89D-01   310.12
    1    14    14     1.00000000     0.00000000 -8131.90300763     0.00000000    -0.69696920  0.43D-01  0.89D-01   310.12
    1    15    15     1.00000000     0.00000000 -8131.90300763     0.00000000    -0.69702317  0.43D-01  0.89D-01   310.12
    1    16    16     1.00000000     0.00000000 -8131.89807426    -0.00000000    -0.68023774  0.50D-01  0.75D-01   310.12
    2     1     1     1.08820087    -0.57686392 -8132.53966909    -0.57686392    -0.01275024  0.29D-02  0.11D-02  1415.97
    2     2     2     1.08820884    -0.57685525 -8132.53966041    -0.57685525    -0.01276084  0.29D-02  0.11D-02  1415.97
    2     3     3     1.08822582    -0.57683898 -8132.53964414    -0.57683898    -0.01278240  0.29D-02  0.12D-02  1415.97
    2     4     4     1.08823513    -0.57683516 -8132.53964032    -0.57683516    -0.01278593  0.29D-02  0.12D-02  1415.97
    2     5     5     1.08823352    -0.57682888 -8132.53963405    -0.57682888    -0.01279282  0.29D-02  0.11D-02  1415.97
    2     6     6     1.09097273    -0.57825195 -8132.48331813    -0.57825195    -0.01285702  0.26D-02  0.15D-02  1415.97
    2     7     7     1.09101602    -0.57821710 -8132.48328328    -0.57821710    -0.01290413  0.26D-02  0.15D-02  1415.97
    2     8     8     1.09100388    -0.57821545 -8132.48328163    -0.57821545    -0.01290690  0.26D-02  0.15D-02  1415.97
    2     9     9     1.09106527    -0.57817489 -8132.48324107    -0.57817489    -0.01295811  0.26D-02  0.15D-02  1415.97
    2    10    10     1.09108750    -0.57815424 -8132.48322042    -0.57815424    -0.01298448  0.26D-02  0.16D-02  1415.97
    2    11    11     1.09109342    -0.57814998 -8132.48321616    -0.57814998    -0.01299165  0.26D-02  0.16D-02  1415.97
    2    12    12     1.09108907    -0.57814802 -8132.48321420    -0.57814802    -0.01299449  0.26D-02  0.16D-02  1415.97
    2    13    13     1.08528890    -0.57273743 -8132.47574507    -0.57273743    -0.01209633  0.28D-02  0.15D-02  1415.97
    2    14    14     1.08530677    -0.57271136 -8132.47571899    -0.57271136    -0.01212721  0.28D-02  0.15D-02  1415.97
    2    15    15     1.08531353    -0.57270987 -8132.47571750    -0.57270987    -0.01212893  0.28D-02  0.15D-02  1415.97
    2    16    16     1.08327209    -0.57068109 -8132.46875535    -0.57068109    -0.01134479  0.31D-02  0.90D-03  1415.97
    3     1     1     1.08078781    -0.58871901 -8132.55152418    -0.01185509    -0.00023312  0.40D-04  0.29D-04  2540.32
    3     2     2     1.08078807    -0.58871874 -8132.55152390    -0.01186349    -0.00023349  0.40D-04  0.29D-04  2540.32
    3     3     3     1.08079071    -0.58871837 -8132.55152354    -0.01187939    -0.00023423  0.41D-04  0.29D-04  2540.32
    3     4     4     1.08079024    -0.58871806 -8132.55152323    -0.01188291    -0.00023451  0.41D-04  0.29D-04  2540.32
    3     5     5     1.08078911    -0.58871798 -8132.55152314    -0.01188910    -0.00023457  0.41D-04  0.29D-04  2540.32
    3     6     6     1.08308481    -0.59020192 -8132.49526810    -0.01194998    -0.00021110  0.30D-04  0.34D-04  2540.32
    3     7     7     1.08309737    -0.59019949 -8132.49526566    -0.01198239    -0.00021446  0.30D-04  0.35D-04  2540.32
    3     8     8     1.08308909    -0.59019937 -8132.49526555    -0.01198392    -0.00021379  0.30D-04  0.34D-04  2540.32
    3     9     9     1.08309103    -0.59019931 -8132.49526549    -0.01202441    -0.00021386  0.30D-04  0.35D-04  2540.32
    3    10    10     1.08310039    -0.59019745 -8132.49526362    -0.01204321    -0.00021604  0.30D-04  0.35D-04  2540.32
    3    11    11     1.08310138    -0.59019743 -8132.49526361    -0.01204745    -0.00021604  0.30D-04  0.35D-04  2540.32
    3    12    12     1.08309887    -0.59019717 -8132.49526335    -0.01204915    -0.00021591  0.30D-04  0.35D-04  2540.32
    3    13    13     1.07864817    -0.58400902 -8132.48701666    -0.01127159    -0.00024718  0.28D-04  0.45D-04  2540.32
    3    14    14     1.07864697    -0.58400793 -8132.48701556    -0.01129657    -0.00024822  0.28D-04  0.45D-04  2540.32
    3    15    15     1.07864778    -0.58400770 -8132.48701533    -0.01129783    -0.00024847  0.28D-04  0.45D-04  2540.32
    3    16    16     1.07664860    -0.58142852 -8132.47950278    -0.01074743    -0.00027003  0.59D-04  0.31D-04  2540.32
    4     1     1     1.08126593    -0.58895744 -8132.55176261    -0.00023843    -0.00000833  0.29D-05  0.72D-06  3636.47
    4     2     2     1.08126560    -0.58895740 -8132.55176257    -0.00023867    -0.00000834  0.29D-05  0.72D-06  3636.47
    4     3     3     1.08126559    -0.58895740 -8132.55176257    -0.00023903    -0.00000834  0.29D-05  0.72D-06  3636.47
    4     4     4     1.08126615    -0.58895715 -8132.55176232    -0.00023909    -0.00000830  0.29D-05  0.72D-06  3636.47
    4     5     5     1.08126615    -0.58895710 -8132.55176226    -0.00023912    -0.00000829  0.29D-05  0.72D-06  3636.47
    4     6     6     1.08352718    -0.59042348 -8132.49548966    -0.00022156    -0.00000749  0.31D-05  0.82D-06  3636.47
    4     7     7     1.08352800    -0.59042324 -8132.49548942    -0.00022375    -0.00000735  0.31D-05  0.79D-06  3636.47
    4     8     8     1.08352667    -0.59042316 -8132.49548934    -0.00022379    -0.00000752  0.31D-05  0.82D-06  3636.47
    4     9     9     1.08352673    -0.59042316 -8132.49548934    -0.00022385    -0.00000752  0.31D-05  0.82D-06  3636.47
    4    10    10     1.08352609    -0.59042255 -8132.49548873    -0.00022510    -0.00000752  0.31D-05  0.82D-06  3636.47
    4    11    11     1.08352611    -0.59042255 -8132.49548873    -0.00022512    -0.00000752  0.31D-05  0.82D-06  3636.47
    4    12    12     1.08352602    -0.59042246 -8132.49548864    -0.00022529    -0.00000755  0.31D-05  0.83D-06  3636.47
    4    13    13     1.07930874    -0.58426813 -8132.48727576    -0.00025911    -0.00001060  0.49D-05  0.11D-05  3636.47
    4    14    14     1.07930743    -0.58426796 -8132.48727559    -0.00026004    -0.00001066  0.49D-05  0.12D-05  3636.47
    4    15    15     1.07930719    -0.58426795 -8132.48727558    -0.00026025    -0.00001067  0.49D-05  0.12D-05  3636.47
    4    16    16     1.07692045    -0.58171777 -8132.47979204    -0.00028926    -0.00001349  0.64D-05  0.10D-05  3636.47
    5     1     1     1.08137217    -0.58896575 -8132.55177092    -0.00000831    -0.00000029  0.63D-07  0.38D-07  4700.32
    5     2     2     1.08137210    -0.58896573 -8132.55177090    -0.00000833    -0.00000029  0.63D-07  0.38D-07  4700.32
    5     3     3     1.08137207    -0.58896573 -8132.55177090    -0.00000833    -0.00000029  0.63D-07  0.38D-07  4700.32
    5     4     4     1.08137150    -0.58896544 -8132.55177060    -0.00000828    -0.00000029  0.63D-07  0.38D-07  4700.32
    5     5     5     1.08137145    -0.58896537 -8132.55177053    -0.00000827    -0.00000029  0.63D-07  0.38D-07  4700.32
    5     6     6     1.08363925    -0.59043132 -8132.49549750    -0.00000784    -0.00000033  0.71D-07  0.52D-07  4700.32
    5     7     7     1.08363900    -0.59043104 -8132.49549722    -0.00000780    -0.00000033  0.72D-07  0.52D-07  4700.32
    5     8     8     1.08363900    -0.59043104 -8132.49549722    -0.00000788    -0.00000033  0.72D-07  0.52D-07  4700.32
    5     9     9     1.08363835    -0.59043096 -8132.49549714    -0.00000780    -0.00000033  0.71D-07  0.52D-07  4700.32
    5    10    10     1.08363872    -0.59043043 -8132.49549661    -0.00000788    -0.00000033  0.72D-07  0.53D-07  4700.32
    5    11    11     1.08363872    -0.59043043 -8132.49549661    -0.00000788    -0.00000033  0.72D-07  0.53D-07  4700.32
    5    12    12     1.08363882    -0.59043037 -8132.49549655    -0.00000791    -0.00000033  0.72D-07  0.53D-07  4700.32
    5    13    13     1.07944767    -0.58427950 -8132.48728714    -0.00001137    -0.00000050  0.94D-07  0.79D-07  4700.32
    5    14    14     1.07944768    -0.58427939 -8132.48728702    -0.00001143    -0.00000050  0.95D-07  0.79D-07  4700.32
    5    15    15     1.07944771    -0.58427939 -8132.48728702    -0.00001144    -0.00000050  0.94D-07  0.80D-07  4700.32
    5    16    16     1.07683994    -0.58173233 -8132.47980660    -0.00001456    -0.00000070  0.21D-06  0.73D-07  4700.32
    6     1     1     1.08137423    -0.58896608 -8132.55177124    -0.00000032    -0.00000002  0.60D-08  0.12D-08  5764.57
    6     2     2     1.08137421    -0.58896605 -8132.55177122    -0.00000032    -0.00000002  0.60D-08  0.12D-08  5764.57
    6     3     3     1.08137420    -0.58896605 -8132.55177122    -0.00000032    -0.00000002  0.61D-08  0.12D-08  5764.57
    6     4     4     1.08137354    -0.58896576 -8132.55177092    -0.00000032    -0.00000002  0.60D-08  0.12D-08  5764.57
    6     5     5     1.08137346    -0.58896569 -8132.55177085    -0.00000032    -0.00000002  0.60D-08  0.12D-08  5764.57
    6     6     6     1.08364224    -0.59043171 -8132.49549788    -0.00000038    -0.00000001  0.35D-08  0.17D-08  5764.57
    6     7     7     1.08364218    -0.59043142 -8132.49549760    -0.00000038    -0.00000001  0.36D-08  0.17D-08  5764.57
    6     8     8     1.08364217    -0.59043142 -8132.49549760    -0.00000038    -0.00000001  0.36D-08  0.17D-08  5764.57
    6     9     9     1.08364170    -0.59043134 -8132.49549752    -0.00000038    -0.00000001  0.34D-08  0.16D-08  5764.57
    6    10    10     1.08364181    -0.59043081 -8132.49549699    -0.00000038    -0.00000001  0.36D-08  0.17D-08  5764.57
    6    11    11     1.08364181    -0.59043081 -8132.49549699    -0.00000038    -0.00000001  0.36D-08  0.17D-08  5764.57
    6    12    12     1.08364187    -0.59043075 -8132.49549693    -0.00000038    -0.00000001  0.36D-08  0.17D-08  5764.57
    6    13    13     1.07943324    -0.58428008 -8132.48728771    -0.00000058    -0.00000002  0.36D-08  0.27D-08  5764.57
    6    14    14     1.07943319    -0.58427996 -8132.48728760    -0.00000058    -0.00000002  0.36D-08  0.28D-08  5764.57
    6    15    15     1.07943320    -0.58427996 -8132.48728760    -0.00000058    -0.00000002  0.36D-08  0.28D-08  5764.57
    6    16    16     1.07676857    -0.58173311 -8132.47980737    -0.00000078    -0.00000003  0.79D-08  0.28D-08  5764.57
    7     1     1     1.08137424    -0.58896608 -8132.55177124    -0.00000000    -0.00000002  0.60D-08  0.12D-08  6129.36
    7     2     2     1.08137421    -0.58896605 -8132.55177122    -0.00000000    -0.00000002  0.60D-08  0.12D-08  6129.36
    7     3     3     1.08137421    -0.58896605 -8132.55177122    -0.00000000    -0.00000002  0.61D-08  0.12D-08  6129.36
    7     4     4     1.08137354    -0.58896576 -8132.55177092    -0.00000000    -0.00000002  0.60D-08  0.12D-08  6129.36
    7     5     5     1.08137346    -0.58896569 -8132.55177085    -0.00000000    -0.00000002  0.60D-08  0.12D-08  6129.36
    7     6     6     1.08364224    -0.59043171 -8132.49549788    -0.00000000    -0.00000001  0.35D-08  0.17D-08  6129.36
    7     7     7     1.08364218    -0.59043142 -8132.49549760    -0.00000000    -0.00000001  0.36D-08  0.17D-08  6129.36
    7     8     8     1.08364217    -0.59043142 -8132.49549760    -0.00000000    -0.00000001  0.36D-08  0.17D-08  6129.36
    7     9     9     1.08364170    -0.59043134 -8132.49549752    -0.00000000    -0.00000001  0.34D-08  0.16D-08  6129.36
    7    10    10     1.08364182    -0.59043081 -8132.49549699    -0.00000000    -0.00000001  0.36D-08  0.17D-08  6129.36
    7    11    11     1.08364181    -0.59043081 -8132.49549699    -0.00000000    -0.00000001  0.36D-08  0.17D-08  6129.36
    7    12    12     1.08364187    -0.59043075 -8132.49549693    -0.00000000    -0.00000001  0.36D-08  0.17D-08  6129.36
    7    13    13     1.07943325    -0.58428008 -8132.48728771    -0.00000000    -0.00000002  0.36D-08  0.27D-08  6129.36
    7    14    14     1.07943319    -0.58427997 -8132.48728760    -0.00000000    -0.00000002  0.36D-08  0.28D-08  6129.36
    7    15    15     1.07943320    -0.58427996 -8132.48728760    -0.00000000    -0.00000002  0.36D-08  0.28D-08  6129.36
    7    16    16     1.07676153    -0.58173314 -8132.47980741    -0.00000003    -0.00000000  0.19D-09  0.96D-10  6129.36


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   9.3%
 S   2.8%  44.2%
 P   0.5%  16.2%  16.2%

 Initialization:   4.3%
 Other:            6.6%

 Total CPU:     6129.4 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222220/000/0222000000           0.0000000   0.0000000  -0.0000000   0.0000532   0.0000000  -0.0000000  -0.0000000   0.0000000
                                  0.9585266  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 2222220/0/000222000000           0.0000552   0.0000000   0.0000000  -0.0000000   0.0000000   0.9585263  -0.0000000  -0.0000000
                                  0.0000000  -0.0000000  -0.0000000   0.0000230  -0.0000000   0.0000000   0.0000000  -0.0000000
 222222//00000222000000          -0.0000000  -0.0000000  -0.0000000  -0.0006417   0.9581889  -0.0000000   0.0000000  -0.0000000
                                  0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000003
 222222/0000/0222000000          -0.0000000  -0.0000000  -0.0000000   0.9581889   0.0006417   0.0000000  -0.0000000  -0.0000000
                                 -0.0000569  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 222222/0/0000222000000          -0.0000000   0.0000000   0.9581888   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000459
                                  0.0000000   0.0000357   0.0000000   0.0000000  -0.0000000   0.0000008  -0.0000000   0.0000000
 222222/000/00222000000           0.0000000   0.9581888  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000459  -0.0000000
                                 -0.0000000  -0.0000000  -0.0000357  -0.0000000  -0.0000000   0.0000000   0.0000008   0.0000000
 222222/00/000222000000           0.9581888  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000590   0.0000000   0.0000000
                                 -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 222222/00000/222000000           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000004   0.0000000   0.0000000  -0.0000000
                                 -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.9429229
 22222200/0/00222000000          -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000206  -0.0000000   0.0000000
                                 -0.0000000   0.0000000   0.0000000   0.8573707   0.3477386  -0.0000000   0.0000000   0.0000000
 2222220000//0222000000          -0.0000000   0.0000468   0.0000000   0.0000000  -0.0000000   0.0000000   0.7878429   0.0000000
                                  0.0000000  -0.0000000   0.3381280  -0.0000000   0.0000000  -0.0000000   0.3478209   0.0000000
 22222200/00/0222000000          -0.0000000   0.0000000  -0.0000468   0.0000000   0.0000000   0.0000000   0.0000000   0.7875090
                                  0.0000000   0.3389051  -0.0000000  -0.0000000   0.0000000  -0.3478209   0.0000000   0.0000000
 222222000/0/0222000000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000103  -0.0000000  -0.0000000
                                 -0.0000000  -0.0000000  -0.0000000  -0.4285897   0.6957131   0.0000000   0.0000000   0.0000000
 22222200//000222000000           0.0000000  -0.0000001  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.5243303   0.0000000
                                  0.0000000  -0.0000000   0.6783446  -0.0000000  -0.0000000   0.0000000   0.3477542   0.0000000
 222222000//00222000000          -0.0000000   0.0000000   0.0000001  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.5249992
                                  0.0000000   0.6778270   0.0000000  -0.0000000   0.0000000  -0.3477541  -0.0000000  -0.0000000
 2222220/00/00222000000          -0.0000000  -0.0000277   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.1521650  -0.0000000
                                 -0.0000000   0.0000000  -0.5867637   0.0000000  -0.0000000  -0.0000000   0.6025179   0.0000000
 2222220//0000222000000           0.0000000   0.0000000  -0.0000277   0.0000000  -0.0000000  -0.0000000   0.0000000   0.1515861
                                 -0.0000000   0.5869135   0.0000000  -0.0000000   0.0000000   0.6025179   0.0000000  -0.0000000
 2222220000000222/0/000           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                                  0.0000000   0.0000000   0.0000000  -0.0000591  -0.5540271  -0.0000000   0.0000000   0.0000000
 2222220000000222//0000          -0.0000000  -0.0000000  -0.0000003   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000139
                                  0.0000000  -0.0000521  -0.0000000  -0.0000000  -0.0000000   0.5540261  -0.0000000   0.0000000
 22222200000002220//000          -0.0000000   0.0000004  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000138   0.0000000
                                  0.0000000  -0.0000000  -0.0000521   0.0000000  -0.0000000  -0.0000000  -0.5540260   0.0000000
 2222220000000222/00/00          -0.0000000  -0.0000000  -0.0000000  -0.0026855  -0.0015530   0.0000000  -0.0000000   0.0000000
                                  0.0000001   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.1054296
 222222000000022200/00/          -0.0000000  -0.0000000   0.0000000   0.0026876  -0.0015494   0.0000000   0.0000000   0.0000000
                                 -0.0000001   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.1054296
 22222200000002220/00/0          -0.0000000  -0.0000000   0.0000000  -0.0000021   0.0031021   0.0000000  -0.0000000   0.0000000
                                  0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.1054294
 2222220000000222/000/0           0.0000000  -0.0000000   0.0026864   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000020
                                 -0.0000000  -0.0000066  -0.0000000   0.0000000  -0.0000000   0.0714691   0.0000000  -0.0000000
 222222000000022200/0/0          -0.0000000   0.0026864   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000020  -0.0000000
                                 -0.0000000   0.0000000   0.0000066  -0.0000000  -0.0000000  -0.0000000   0.0714691   0.0000000
 2222220000000222/0000/           0.0026865  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000001   0.0000000  -0.0000000
                                  0.0000000   0.0000000   0.0000000  -0.0000077  -0.0714688   0.0000000  -0.0000000   0.0000000
 222222000000022200//00           0.0026865   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000000
                                 -0.0000000  -0.0000000  -0.0000000   0.0000077   0.0714688  -0.0000000   0.0000000  -0.0000000
 22222200000002220/0/00          -0.0000000   0.0000000   0.0026866  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000016
                                  0.0000000   0.0000070  -0.0000000  -0.0000000   0.0000000  -0.0714685   0.0000000   0.0000000
 22222200000002220/000/           0.0000000   0.0026866  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000016   0.0000000
                                  0.0000000  -0.0000000  -0.0000070   0.0000000   0.0000000   0.0000000  -0.0714685  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.000000    0.958513   -0.000000    0.000000   -0.000000    0.000054   -0.000000   -0.000000
             0.000009    0.000000    0.000000    0.000000   -0.000000    0.000000
 2          -0.000000   -0.000000    0.958513   -0.000000    0.000000    0.000000    0.000054    0.000000    0.000000    0.000000
             0.000000    0.000006   -0.000000    0.000000   -0.000001   -0.000000
 3          -0.000000   -0.000000   -0.000000    0.000000    0.958513   -0.000000    0.000000    0.000000   -0.000002   -0.000054
            -0.000000   -0.000000   -0.000001    0.000000    0.000000   -0.000000
 4           0.942206    0.176054    0.000000    0.000000    0.000000    0.000053    0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 5          -0.176054    0.942206    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000059   -0.000000   -0.000000    0.000000    0.944977   -0.000000    0.000000
             0.160594    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 7          -0.000000    0.000000   -0.000046    0.000000   -0.000000   -0.000000    0.813199   -0.000000    0.000000    0.000000
            -0.000000   -0.507425    0.000000   -0.000000   -0.000024    0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000    0.000046    0.000000    0.000000   -0.000000   -0.565728    0.773773
             0.000000    0.000000    0.000025   -0.000000   -0.000000   -0.000000
 9          -0.000056   -0.000011   -0.000000   -0.000000    0.000000    0.958527    0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 10         -0.000000    0.000000   -0.000000    0.000000    0.000036   -0.000000   -0.000000   -0.000000    0.773774    0.565728
             0.000000   -0.000000   -0.000092   -0.000000   -0.000000    0.000000
 11         -0.000000    0.000000   -0.000036   -0.000000    0.000000   -0.000000    0.507425   -0.000000    0.000000   -0.000000
             0.000000    0.813199   -0.000000   -0.000000    0.000092   -0.000000
 12         -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.160594   -0.000000   -0.000000
             0.944978   -0.000000    0.000000    0.000104   -0.000000    0.000000
 13          0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000018    0.000000    0.000000
            -0.000104    0.000000    0.000000    0.960054   -0.000000   -0.000000
 14         -0.000000    0.000000    0.000000   -0.000000    0.000001    0.000000   -0.000000    0.000000    0.000090    0.000035
             0.000000    0.000000    0.960054   -0.000000   -0.000000    0.000000
 15          0.000000   -0.000000    0.000001    0.000000   -0.000000    0.000000   -0.000028    0.000000   -0.000000    0.000000
             0.000000   -0.000092    0.000000    0.000000    0.960054   -0.000000
 16         -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000    0.960420

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958513   -0.000000   -0.000000   -0.000000   -0.000000   -0.000002   -0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 2          -0.000000    0.958513    0.000000    0.000000    0.000000    0.000000   -0.000002    0.000000    0.000000   -0.000000
            -0.000001   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.958513    0.000000    0.000000    0.000000   -0.000000    0.000002   -0.000000    0.000001
            -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.958513    0.000000   -0.000000    0.000000    0.000000   -0.000002   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.958513    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 6          -0.000002    0.000000    0.000000   -0.000000    0.000000    0.958526    0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 7          -0.000000   -0.000002   -0.000000    0.000000    0.000000    0.000000    0.958526   -0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 8          -0.000000    0.000000    0.000002    0.000000    0.000000    0.000000   -0.000000    0.958526    0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 9           0.000000    0.000000   -0.000000   -0.000002   -0.000000    0.000000    0.000000    0.000000    0.958527   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 10         -0.000000   -0.000000    0.000001   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.958527
            -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 11          0.000000   -0.000001   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.958527    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 12          0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.958527   -0.000000   -0.000000    0.000000   -0.000000
 13         -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.960054    0.000000    0.000000    0.000000
 14         -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.960054   -0.000000   -0.000000
 15          0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.960054    0.000000
 16          0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.960420

 Energy contributions of internal configurations for state 13
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3749       0.00019367     1.41984909       2222220000000222101000          
  4052       0.00010665    -1.27153542       2222220001010222000000          

 Energy contributions of internal configurations for state 14
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3750       0.00019370     1.41995718       2222220000000222110000          

 Energy contributions of internal configurations for state 15
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3745       0.00019370     1.41995950       2222220000000222011000          


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95851258 (fixed)   0.95860730 (relaxed)   0.95851258 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00653377   -0.01428779   -0.46874725
 Singles      0.02517246   -0.08261113   -0.08952458
 Pairs        0.05673346   -0.00000000   -0.03069425
 Total        1.08843968   -0.09689892   -0.58896608
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96280516
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.49107733
 One electron energy               -11102.96986490
 Two electron energy                 2970.41809366
 Virial quotient                       -0.84070494
 Correlation energy                    -0.58896608
 !MRCI STATE 1.1 Energy             -8132.551771240587

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60385921 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60373253 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60385921 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60144754 (Pople, fixed reference)
 Cluster corrected energies         -8132.60131805 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60144754 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95851259 (fixed)   0.95860732 (relaxed)   0.95851259 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00653376   -0.01428777   -0.46874726
 Singles      0.02517242   -0.08261111   -0.08952455
 Pairs        0.05673348    0.00000000   -0.03069425
 Total        1.08843965   -0.09689888   -0.58896605
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96280516
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.49107686
 One electron energy               -11102.96986421
 Two electron energy                 2970.41809299
 Virial quotient                       -0.84070494
 Correlation energy                    -0.58896605
 !MRCI STATE 2.1 Energy             -8132.551771218239

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60385917 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60373249 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60385917 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60144750 (Pople, fixed reference)
 Cluster corrected energies         -8132.60131801 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60144750 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95851259 (fixed)   0.95860732 (relaxed)   0.95851259 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00653376   -0.01428777   -0.46874725
 Singles      0.02517241   -0.08261112   -0.08952454
 Pairs        0.05673348    0.00000000   -0.03069425
 Total        1.08843965   -0.09689889   -0.58896605
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96280516
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.49107715
 One electron energy               -11102.96986358
 Two electron energy                 2970.41809237
 Virial quotient                       -0.84070494
 Correlation energy                    -0.58896605
 !MRCI STATE 3.1 Energy             -8132.551771216657

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60385917 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60373248 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60385917 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60144750 (Pople, fixed reference)
 Cluster corrected energies         -8132.60131800 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60144750 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.94220582 (fixed)   0.95860754 (relaxed)   0.95851282 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00653391   -0.01428794   -0.46874787
 Singles      0.02517167   -0.08261048   -0.08952357
 Pairs        0.05673356   -0.00000000   -0.03069432
 Total        1.08843914   -0.09689842   -0.58896576
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96280517
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.49107731
 One electron energy               -11102.96985789
 Two electron energy                 2970.41808696
 Virial quotient                       -0.84070494
 Correlation energy                    -0.58896576
 !MRCI STATE 4.1 Energy             -8132.551770922470

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60385855 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60373186 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60385855 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60144687 (Pople, fixed reference)
 Cluster corrected energies         -8132.60131738 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60144687 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.94220585 (fixed)   0.95860757 (relaxed)   0.95851284 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00653394   -0.01428796   -0.46874809
 Singles      0.02517156   -0.08261037   -0.08952340
 Pairs        0.05673360    0.00000016   -0.03069420
 Total        1.08843909   -0.09689816   -0.58896569
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96280517
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.49107795
 One electron energy               -11102.96985744
 Two electron energy                 2970.41808659
 Virial quotient                       -0.84070494
 Correlation energy                    -0.58896568
 !MRCI STATE 5.1 Energy             -8132.551770849344

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60385844 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60373175 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60385844 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60144676 (Pople, fixed reference)
 Cluster corrected energies         -8132.60131727 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60144676 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.94497741 (fixed)   0.95852630 (relaxed)   0.95852630 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00439839   -0.01046931   -0.47311828
 Singles      0.02330347   -0.07808269   -0.08438676
 Pairs        0.06070666   -0.00000000   -0.03292667
 Total        1.08840852   -0.08855200   -0.59043171
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90506618
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.50434691
 One electron energy               -11105.56796386
 Two electron energy                 2973.07246598
 Virial quotient                       -0.84069797
 Correlation energy                    -0.59043171
 !MRCI STATE 6.1 Energy             -8132.495497884805

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54769708 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54769708 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54769708 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54527900 (Pople, fixed reference)
 Cluster corrected energies         -8132.54527900 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54527900 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.81319908 (fixed)   0.95852643 (relaxed)   0.95852643 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00439818   -0.01046908   -0.47311806
 Singles      0.02330346   -0.07808265   -0.08438677
 Pairs        0.06070659   -0.00000000   -0.03292659
 Total        1.08840823   -0.08855174   -0.59043142
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90506618
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.50436464
 One electron energy               -11105.56804844
 Two electron energy                 2973.07255084
 Virial quotient                       -0.84069797
 Correlation energy                    -0.59043142
 !MRCI STATE 7.1 Energy             -8132.495497600109

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54769660 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54769660 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54769660 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54527851 (Pople, fixed reference)
 Cluster corrected energies         -8132.54527851 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54527851 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.77377336 (fixed)   0.95852643 (relaxed)   0.95852643 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00439818   -0.01046908   -0.47311805
 Singles      0.02330346   -0.07808267   -0.08438678
 Pairs        0.06070658    0.00000000   -0.03292659
 Total        1.08840823   -0.08855175   -0.59043142
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90506618
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.50436471
 One electron energy               -11105.56804832
 Two electron energy                 2973.07255073
 Virial quotient                       -0.84069797
 Correlation energy                    -0.59043142
 !MRCI STATE 8.1 Energy             -8132.495497599799

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54769659 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54769659 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54769659 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54527851 (Pople, fixed reference)
 Cluster corrected energies         -8132.54527851 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54527851 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95852658 (fixed)   0.95852658 (relaxed)   0.95852658 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00439831   -0.01046928   -0.47311861
 Singles      0.02330291   -0.07808222   -0.08438607
 Pairs        0.06070667    0.00000000   -0.03292667
 Total        1.08840789   -0.08855149   -0.59043134
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90506618
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.50433837
 One electron energy               -11105.56788423
 Two electron energy                 2973.07238671
 Virial quotient                       -0.84069797
 Correlation energy                    -0.59043134
 !MRCI STATE 9.1 Energy             -8132.495497518855

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54769631 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54769631 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54769631 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54527822 (Pople, fixed reference)
 Cluster corrected energies         -8132.54527822 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54527822 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.77377360 (fixed)   0.95852680 (relaxed)   0.95852680 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00439773   -0.01046868   -0.47311777
 Singles      0.02330307   -0.07808249   -0.08438644
 Pairs        0.06070658   -0.00000000   -0.03292660
 Total        1.08840738   -0.08855117   -0.59043081
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90506618
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.50437129
 One electron energy               -11105.56809719
 Two electron energy                 2973.07260019
 Virial quotient                       -0.84069797
 Correlation energy                    -0.59043081
 !MRCI STATE 10.1 Energy            -8132.495496993630

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54769543 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54769543 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54769543 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54527734 (Pople, fixed reference)
 Cluster corrected energies         -8132.54527734 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54527734 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.81319935 (fixed)   0.95852680 (relaxed)   0.95852680 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00439773   -0.01046868   -0.47311778
 Singles      0.02330307   -0.07808249   -0.08438644
 Pairs        0.06070658    0.00000000   -0.03292659
 Total        1.08840738   -0.08855117   -0.59043081
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90506618
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.50437140
 One electron energy               -11105.56809758
 Two electron energy                 2973.07260058
 Virial quotient                       -0.84069797
 Correlation energy                    -0.59043081
 !MRCI STATE 11.1 Energy            -8132.495496993586

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54769543 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54769543 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54769543 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54527734 (Pople, fixed reference)
 Cluster corrected energies         -8132.54527734 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54527734 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.94497792 (fixed)   0.95852682 (relaxed)   0.95852682 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00439764   -0.01046858   -0.47311764
 Singles      0.02330311   -0.07808254   -0.08438653
 Pairs        0.06070659   -0.00000000   -0.03292659
 Total        1.08840734   -0.08855113   -0.59043075
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90506618
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.50437745
 One electron energy               -11105.56813848
 Two electron energy                 2973.07264155
 Virial quotient                       -0.84069797
 Correlation energy                    -0.59043075
 !MRCI STATE 12.1 Energy            -8132.495496928824

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54769534 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54769534 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54769534 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54527725 (Pople, fixed reference)
 Cluster corrected energies         -8132.54527725 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54527725 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.96005418 (fixed)   0.96026511 (relaxed)   0.96005418 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00510798   -0.01125196   -0.47057056
 Singles      0.02093706   -0.07672047   -0.08199340
 Pairs        0.05890193    0.00000000   -0.03171613
 Total        1.08494697   -0.08797243   -0.58428008
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90300763
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.42473900
 One electron energy               -11102.40677456
 Two electron energy                 2969.91948685
 Virial quotient                       -0.84070404
 Correlation energy                    -0.58428008
 !MRCI STATE 13.1 Energy            -8132.487287711478

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53692053 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53664208 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53692053 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53448832 (Pople, fixed reference)
 Cluster corrected energies         -8132.53420535 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53448832 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.96005422 (fixed)   0.96026518 (relaxed)   0.96005423 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00510794   -0.01125189   -0.47057052
 Singles      0.02093695   -0.07672042   -0.08199327
 Pairs        0.05890198   -0.00000000   -0.03171618
 Total        1.08494687   -0.08797231   -0.58427996
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90300763
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.42473055
 One electron energy               -11102.40677162
 Two electron energy                 2969.91948402
 Virial quotient                       -0.84070404
 Correlation energy                    -0.58427996
 !MRCI STATE 14.1 Energy            -8132.487287597056

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53692035 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53664187 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53692035 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53448814 (Pople, fixed reference)
 Cluster corrected energies         -8132.53420514 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53448814 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.96005422 (fixed)   0.96026517 (relaxed)   0.96005422 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00510794   -0.01125189   -0.47057054
 Singles      0.02093695   -0.07672039   -0.08199326
 Pairs        0.05890200    0.00000000   -0.03171617
 Total        1.08494688   -0.08797229   -0.58427996
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90300763
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.42473089
 One electron energy               -11102.40677369
 Two electron energy                 2969.91948609
 Virial quotient                       -0.84070404
 Correlation energy                    -0.58427996
 !MRCI STATE 15.1 Energy            -8132.487287596587

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53692036 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53664187 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53692036 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53448815 (Pople, fixed reference)
 Cluster corrected energies         -8132.53420514 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53448815 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Coefficient of reference function:   C(0) = 0.96041961 (fixed)   0.96044247 (relaxed)   0.96041961 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00683529   -0.01559947   -0.01805682
 Singles      0.02316561   -0.08180759   -0.08788998
 Pairs        0.05412061   -0.48432608   -0.47578634
 Total        1.08412151   -0.58173314   -0.58173314
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.89807426
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.46763721
 One electron energy               -11096.37479114
 Two electron energy                 2963.89498374
 Virial quotient                       -0.84069954
 Correlation energy                    -0.58173314
 !MRCI STATE 16.1 Energy            -8132.479807406031

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.52874367 (Davidson, fixed reference)
 Cluster corrected energies         -8132.52871365 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.52874367 (Davidson, rotated reference)

 Cluster corrected energies         -8132.52631441 (Pople, fixed reference)
 Cluster corrected energies         -8132.52628393 (Pople, relaxed reference)
 Cluster corrected energies         -8132.52631441 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      163.55       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     2620.65       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     15719.80  11665.73   4023.98     13.51      0.11     16.05
 REAL TIME  *     15965.18 SEC
 DISK USED  *         2.72 GB (local),       65.51 GB (total)
 SF USED    *        17.54 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =     -8132.60385921  AU                              
 SETTING HLSDIAG(14)    =     -8132.60385917  AU                              
 SETTING HLSDIAG(15)    =     -8132.60385917  AU                              
 SETTING HLSDIAG(16)    =     -8132.60385855  AU                              
 SETTING HLSDIAG(17)    =     -8132.60385844  AU                              
 SETTING HLSDIAG(18)    =     -8132.54769708  AU                              
 SETTING HLSDIAG(19)    =     -8132.54769660  AU                              
 SETTING HLSDIAG(20)    =     -8132.54769659  AU                              
 SETTING HLSDIAG(21)    =     -8132.54769631  AU                              
 SETTING HLSDIAG(22)    =     -8132.54769543  AU                              
 SETTING HLSDIAG(23)    =     -8132.54769543  AU                              
 SETTING HLSDIAG(24)    =     -8132.54769534  AU                              
 SETTING HLSDIAG(25)    =     -8132.53692053  AU                              
 SETTING HLSDIAG(26)    =     -8132.53692035  AU                              
 SETTING HLSDIAG(27)    =     -8132.53692036  AU                              
 SETTING HLSDIAG(28)    =     -8132.52874367  AU                              


         HLSDIAG
    -8132.653065
    -8132.594079
    -8132.594079
    -8132.594079
    -8132.594079
    -8132.594079
    -8132.539482
    -8132.539482
    -8132.539482
    -8132.539481
    -8132.539482
    -8132.529651
    -8132.603859
    -8132.603859
    -8132.603859
    -8132.603859
    -8132.603858
    -8132.547697
    -8132.547697
    -8132.547697
    -8132.547696
    -8132.547695
    -8132.547695
    -8132.547695
    -8132.536921
    -8132.536920
    -8132.536920
    -8132.528744
                                                  

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

 Time for Seward_LS:     217.73 sec

       61428503. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    15015 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    217.73 sec, REAL time:    218.36 sec


 SORTLS1 read    61450532. and wrote    61450532. SO integrals in   264 records. CPU time:      0.36 sec, REAL time:      0.77 sec
 SORTLS2 read    61450532. and wrote    61450532. SO integrals in    72 records. CPU time:      0.09 sec, REAL time:      0.26 sec

 FILE SIZES: FILE 1:  1155.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1155.7 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1102.15       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     2620.65       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     15939.32    219.49  11665.73   4023.98     13.51      0.11     16.05
 REAL TIME  *     16186.03 SEC
 DISK USED  *         2.72 GB (local),       67.26 GB (total)
 SF USED    *        17.54 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals


 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  12

 Original energies:  -8132.604098  -8132.542917  -8132.542917  -8132.542917  -8132.542917  -8132.542917  -8132.488960  -8132.488960
                     -8132.488960  -8132.488960  -8132.488960  -8132.479736
 Replaced energies:  -8132.653065  -8132.594079  -8132.594079  -8132.594079  -8132.594079  -8132.594079  -8132.539482  -8132.539482
                     -8132.539482  -8132.539481  -8132.539482  -8132.529651

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies:  -8132.551771  -8132.551771  -8132.551771  -8132.551771  -8132.551771  -8132.495498  -8132.495498  -8132.495498
                     -8132.495498  -8132.495497  -8132.495497  -8132.495497  -8132.487288  -8132.487288  -8132.487288  -8132.479807
 Replaced energies:  -8132.603859  -8132.603859  -8132.603859  -8132.603859  -8132.603858  -8132.547697  -8132.547697  -8132.547697
                     -8132.547696  -8132.547695  -8132.547695  -8132.547695  -8132.536921  -8132.536920  -8132.536920  -8132.528744



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -8132.65306540

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   12945.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   12945.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   12945.94       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   12945.93       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   12945.93       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   24928.77       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24928.77       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24928.77       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24928.79
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0       0.00      -0.00      -0.00       0.00      58.66      -0.00      -9.75       0.00       0.00       0.00
                            0.00       0.00     -58.66       0.00      -0.00      -0.00      -0.00       0.00      -9.75       0.00

   14   2.1  1.0  1.0      -0.00      -0.00      -0.00      89.34      -0.00     -75.97       0.00      -0.00       0.00       7.78
                            0.00      58.66       0.00      -0.00      -0.00      -0.00      -0.00      -9.74      -0.00      -0.00

   15   3.1  1.0  1.0      -0.00     -58.66       0.00      -0.00       0.00       0.00       0.00       9.74       0.00       0.00
                            0.00      -0.00       0.00    -110.45      -0.00     -39.41       0.00      -0.00      -0.00     -19.31

   16   4.1  1.0  1.0       0.00      -0.00      58.72       0.00       0.00      -0.00       0.00      -0.00       9.76       0.00
                           -0.00      -0.00      -0.00      -0.00      58.59       0.00      -9.74       0.00       0.00      -0.00

   17   5.1  1.0  1.0       0.00      -0.00    -101.56       0.00      -0.00      -0.00      -0.00      -0.00     -16.83       0.00
                            0.00       0.00      -0.00      -0.00     101.63       0.00     -16.85       0.00       0.00      -0.00

   18   6.1  1.0  1.0       0.00      -0.00       0.00       0.00     -21.97       0.00     -72.60       0.00      -0.00       0.00
                            0.00      -0.00      21.97       0.00       0.00      -0.00       0.00       0.00     -72.60       0.00

   19   7.1  1.0  1.0      -0.00       0.00      -0.00       1.58       0.00     -25.03       0.00       0.00       0.00      31.64
                            0.00     -27.78       0.00       0.00       0.00      -0.00      -0.00     -91.84       0.00      -0.00

   20   8.1  1.0  1.0       0.00     -27.78       0.00       0.00       0.00       0.00      -0.00     -91.84       0.00      -0.00
                           -0.00      -0.00       0.00      10.32      -0.00      22.87      -0.00      -0.00       0.00     -63.80

   21   9.1  1.0  1.0       0.00       0.00     -21.97      -0.00      -0.00       0.00       0.00      -0.00      72.60      -0.00
                           -0.00      -0.00       0.00      -0.00     -21.97       0.00     -72.60       0.00      -0.00      -0.00

   22  10.1  1.0  1.0       0.00      -0.01      -0.00      -0.00       0.00       0.00       0.00       0.02      -0.00       0.00
                            0.01      -0.00      -0.00      20.58       0.00     -17.50       0.00       0.00       0.00     -35.65

   23  11.1  1.0  1.0       0.01      -0.00       0.00      25.44       0.00       9.11      -0.00       0.00      -0.00     -88.61
                            0.00       0.02       0.00       0.00       0.00      -0.00       0.00       0.11       0.00       0.00

   24  12.1  1.0  1.0      -0.00      -0.00       0.00      -0.00     -17.01       0.00     -56.27       0.00       0.00      -0.00
                            0.00      -0.00     -17.01      -0.00      -0.00      -0.00      -0.00      -0.00      56.26       0.00

   25  13.1  1.0  1.0       0.00      -0.00       0.00       0.00      48.29       0.00    -181.53      -0.00       0.00       0.00
                            0.00       0.00      48.29       0.00      -0.00      -0.00      -0.00       0.00     181.53      -0.00

   26  14.1  1.0  1.0      -0.00      48.29      -0.00       0.00      -0.00       0.00      -0.00    -181.54      -0.00      -0.00
                          -88.26      -0.00       0.00     -18.70       0.00      52.47       0.00       0.00      -0.00      23.44

   27  15.1  1.0  1.0      88.26      -0.00       0.00      36.07      -0.00      42.45       0.00      -0.00      -0.00     192.22
                            0.00     -48.29      -0.00       0.00      -0.00      -0.00       0.00     181.54      -0.00      -0.00

   28  16.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -29.85       0.00    -163.15      -0.00      -0.00      -0.00     -16.30

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      82.96       0.00     -13.78       0.00       0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     -82.96       0.00      -0.00      -0.00      -0.00      -0.00     -13.78      -0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     165.91      -0.00      -0.00       0.00      -0.00      -0.00     -27.46      -0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.11      -0.00      -0.00       0.00      -0.00      -0.00      -0.02      -0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -5.59       0.00     -30.56       0.00      -0.00       0.00      60.95

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -9.87      -0.00     -32.60      -0.00       0.00      -0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -9.84      -0.00      -0.00      -0.00      -0.00      -0.00      32.47      -0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      31.04      -0.00       0.00       0.00      -0.00      -0.00     102.67       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -38.04      -0.00       0.00       0.00       0.00      -0.00     125.79       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00     -38.03      -0.00    -125.76      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00       0.00     -41.17      -0.00       7.53      -0.00       0.00      -0.00     111.12

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          124.82       0.00       0.00     -77.45      -0.00      14.17      -0.00       0.00       0.00    -238.69

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -68.30      -0.00       0.00       0.00      -0.00       0.00    -256.73       0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      68.30      -0.00    -256.73       0.00       0.00       0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00      -0.00      -0.00       0.00      58.66      -0.00      -9.75       0.00       0.00       0.00
                           -0.00      -0.00      58.66      -0.00       0.00       0.00       0.00      -0.00       9.75      -0.00

   46   2.1  1.0 -1.0      -0.00      -0.00      -0.00      89.34      -0.00     -75.97       0.00      -0.00       0.00       7.78
                           -0.00     -58.66      -0.00       0.00       0.00       0.00       0.00       9.74       0.00       0.00

   47   3.1  1.0 -1.0      -0.00     -58.66       0.00      -0.00       0.00       0.00       0.00       9.74       0.00       0.00
                           -0.00       0.00      -0.00     110.45       0.00      39.41      -0.00       0.00       0.00      19.31

   48   4.1  1.0 -1.0       0.00      -0.00      58.72       0.00       0.00      -0.00       0.00      -0.00       9.76       0.00
                            0.00       0.00       0.00       0.00     -58.59      -0.00       9.74      -0.00      -0.00       0.00

   49   5.1  1.0 -1.0       0.00      -0.00    -101.56       0.00      -0.00      -0.00      -0.00      -0.00     -16.83       0.00
                           -0.00      -0.00       0.00       0.00    -101.63      -0.00      16.85      -0.00      -0.00       0.00

   50   6.1  1.0 -1.0       0.00      -0.00       0.00       0.00     -21.97       0.00     -72.60       0.00      -0.00       0.00
                           -0.00       0.00     -21.97      -0.00      -0.00       0.00      -0.00      -0.00      72.60      -0.00

   51   7.1  1.0 -1.0      -0.00       0.00      -0.00       1.58       0.00     -25.03       0.00       0.00       0.00      31.64
                           -0.00      27.78      -0.00      -0.00      -0.00       0.00       0.00      91.84      -0.00       0.00

   52   8.1  1.0 -1.0       0.00     -27.78       0.00       0.00       0.00       0.00      -0.00     -91.84       0.00      -0.00
                            0.00       0.00      -0.00     -10.32       0.00     -22.87       0.00       0.00      -0.00      63.80

   53   9.1  1.0 -1.0       0.00       0.00     -21.97      -0.00      -0.00       0.00       0.00      -0.00      72.60      -0.00
                            0.00       0.00      -0.00       0.00      21.97      -0.00      72.60      -0.00       0.00       0.00

   54  10.1  1.0 -1.0       0.00      -0.01      -0.00      -0.00       0.00       0.00       0.00       0.02      -0.00       0.00
                           -0.01       0.00       0.00     -20.58      -0.00      17.50      -0.00      -0.00      -0.00      35.65

   55  11.1  1.0 -1.0       0.01      -0.00       0.00      25.44       0.00       9.11      -0.00       0.00      -0.00     -88.61
                           -0.00      -0.02      -0.00      -0.00      -0.00       0.00      -0.00      -0.11      -0.00      -0.00

   56  12.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00     -17.01       0.00     -56.27       0.00       0.00      -0.00
                           -0.00       0.00      17.01       0.00       0.00       0.00       0.00       0.00     -56.26      -0.00

   57  13.1  1.0 -1.0       0.00      -0.00       0.00       0.00      48.29       0.00    -181.53      -0.00       0.00       0.00
                           -0.00      -0.00     -48.29      -0.00       0.00       0.00       0.00      -0.00    -181.53       0.00

   58  14.1  1.0 -1.0      -0.00      48.29      -0.00       0.00      -0.00       0.00      -0.00    -181.54      -0.00      -0.00
                           88.26       0.00      -0.00      18.70      -0.00     -52.47      -0.00      -0.00       0.00     -23.44

   59  15.1  1.0 -1.0      88.26      -0.00       0.00      36.07      -0.00      42.45       0.00      -0.00      -0.00     192.22
                           -0.00      48.29       0.00      -0.00       0.00       0.00      -0.00    -181.54       0.00       0.00

   60  16.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00      -0.00      -0.00     -58.66      -0.00      -0.00      -0.00       0.00     -27.78
                            0.00       0.00      -0.00     -58.66       0.00       0.00      -0.00       0.00      27.78       0.00

    3   3.1  0.0  0.0       0.00       0.00      -0.00      -0.00       0.00      58.72    -101.56       0.00      -0.00       0.00
                            0.00       0.00      58.66      -0.00      -0.00       0.00       0.00     -21.97      -0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00      89.34      -0.00       0.00       0.00       0.00       1.58       0.00
                            0.00       0.00      -0.00       0.00     110.45       0.00       0.00      -0.00      -0.00     -10.32

    5   5.1  0.0  0.0       0.00       0.00      58.66      -0.00       0.00       0.00      -0.00     -21.97       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00     -58.59    -101.63      -0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00      -0.00     -75.97       0.00      -0.00      -0.00       0.00     -25.03       0.00
                            0.00       0.00       0.00       0.00      39.41      -0.00      -0.00       0.00       0.00     -22.87

    7   7.1  0.0  0.0       0.00       0.00      -9.75       0.00       0.00       0.00      -0.00     -72.60       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00       9.74      16.85      -0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00      -0.00       9.74      -0.00      -0.00       0.00       0.00     -91.84
                            0.00       0.00      -0.00       9.74       0.00      -0.00      -0.00      -0.00      91.84       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       9.76     -16.83      -0.00       0.00       0.00
                            0.00       0.00       9.75       0.00       0.00      -0.00      -0.00      72.60      -0.00      -0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       7.78       0.00       0.00       0.00       0.00      31.64      -0.00
                            0.00       0.00      -0.00       0.00      19.31       0.00       0.00      -0.00       0.00      63.80

   11  11.1  0.0  0.0   24928.78       0.00       0.00      17.80      -0.00      -0.00       0.00      -0.00     -76.56      -0.00
                            0.00       0.00      -0.00      -0.00       2.19       0.00      -0.00      -0.00       0.00     -52.87

   12  12.1  0.0  0.0       0.00   27086.33       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.01       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.01

   13   1.1  1.0  1.0       0.00       0.00   10799.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00     166.93       0.11      -0.00      -0.00      -0.00

   14   2.1  1.0  1.0      17.80      -0.00       0.00   10799.52       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00     -83.47      -0.00      -0.00      -0.00       0.00      -0.87

   15   3.1  1.0  1.0      -0.00      -0.00       0.00       0.00   10799.52       0.00       0.00       0.00       0.00       0.00
                           -2.19       0.00       0.00      83.47       0.00       0.00       0.00       0.00      -0.87      -0.00

   16   4.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00   10799.66       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -166.93       0.00      -0.00      -0.00      -0.00      -2.63       0.00      -0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   10799.68       0.00       0.00       0.00
                            0.00       0.00      -0.11       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   18   6.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   23125.67       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       2.63       0.00       0.00       0.00      -0.00

   19   7.1  1.0  1.0     -76.56      -0.01       0.00       0.00       0.00       0.00       0.00       0.00   23125.78       0.00
                           -0.00       0.00       0.00      -0.00       0.87      -0.00      -0.00      -0.00       0.00    -220.24

   20   8.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23125.78
                           52.87      -0.01       0.00       0.87       0.00       0.00      -0.00       0.00     220.24      -0.00

   21   9.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -2.63      -0.00       0.00      -0.00      -0.00    -160.25       0.00       0.00

   22  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -81.70       0.03       0.00       3.24      -0.00       0.00       0.00      -0.00     -77.64      -0.00

   23  11.1  1.0  1.0      -9.92       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       3.24       0.00       0.00       0.00      -0.00      77.80

   24  12.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       3.59      -0.00       0.00      -0.00

   25  13.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.01       8.51      -0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -208.38    -215.51       0.00       7.41      -0.00       0.00       0.00       0.00      -0.02       0.00

   27  15.1  1.0  1.0     -83.81     215.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -7.41      -0.00       0.00       0.00       0.00      -0.02

   28  16.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00     -59.03       0.00      -0.00      -0.00       0.00      -2.37
                           22.08       0.00      -0.00     -59.03      -0.00      -0.00      -0.00      -0.00       2.37       0.00

   30   2.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00      59.09    -102.18       0.00       0.00       0.00
                            0.00      -0.00      59.03      -0.00      -0.00       0.00      -0.00      -1.89       0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00      59.03      -0.00      -0.00       0.00       0.00      -1.89      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00     -58.95    -102.26       0.00      -0.00       0.00

   32   4.1  1.0  0.0       0.00       0.00      -0.00     -59.09      -0.00      -0.00      -0.00       0.00      -2.06       0.00
                            0.00       0.00       0.00      -0.00      58.95      -0.00       0.00       0.00       0.00      -2.06

   33   5.1  1.0  0.0       0.00       0.00       0.00     102.18      -0.00       0.00       0.00      -0.00       0.50       0.00
                            0.00       0.00       0.00       0.00     102.26      -0.00       0.00       0.00      -0.00      -0.51

   34   6.1  1.0  0.0       0.00       0.00       0.00      -0.00       1.89      -0.00       0.00       0.00      -0.00      44.78
                          -82.59      -0.00       0.00       1.89      -0.00      -0.00      -0.00       0.00     -44.68      -0.00

   35   7.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00       2.06      -0.50       0.00       0.00      -0.00
                           -0.00       0.00      -2.37      -0.00       0.00      -0.00       0.00      44.68      -0.00      -0.00

   36   8.1  1.0  0.0       0.00       0.00       2.37      -0.00      -0.00      -0.00      -0.00     -44.78       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       2.06       0.51       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       1.89       0.00      -0.00      -0.00       0.00      89.64       0.00
                           -0.00      -0.00      -0.00       0.00      -1.89       0.00       0.00       0.00      -0.00      89.57

   38  10.1  1.0  0.0       0.00       0.00       0.02       0.00       0.00      -0.00      -0.00     104.08      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -1.17       1.98       0.00       0.00      -0.00

   39  11.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00      -1.17      -1.98       0.00      -0.00      -0.00
                            0.00       0.00      -0.02      -0.00       0.00      -0.00      -0.00    -104.12       0.00      -0.00

   40  12.1  1.0  0.0       0.00       0.00      -0.00       0.00       1.44       0.00      -0.00      -0.00       0.00      34.70
                           82.01       0.04      -0.00      -1.44      -0.00      -0.00      -0.00       0.00      34.83       0.00

   41  13.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -5.24       0.00       0.00      -0.00       0.00      -0.00
                         -176.17     304.80      -0.00       5.24       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   42  14.1  1.0  0.0       0.00       0.00      -5.25       0.00       0.00       0.00      -0.00       0.02      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       5.24      -3.04      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -5.24      -3.05      -0.00       0.00      -0.00
                           -0.00      -0.00      -5.25      -0.00      -0.00      -0.00       0.00       0.02       0.00       0.00

   44  16.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0      17.80      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.19      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0     -76.56      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -52.87       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           81.70      -0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0      -9.92       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          208.38     215.51      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0     -83.81     215.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.01      -0.00       0.00      -0.00      88.26      -0.00       0.00       0.00
                            0.00      -0.01      -0.00      -0.00      -0.00      88.26      -0.00       0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00      -0.01      -0.00      -0.00      -0.00      48.29      -0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.02       0.00      -0.00       0.00      48.29      -0.00       0.00       0.00

    3   3.1  0.0  0.0     -21.97      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      17.01     -48.29      -0.00       0.00       0.00      -0.00       0.00

    4   4.1  0.0  0.0      -0.00      -0.00      25.44      -0.00       0.00       0.00      36.07      -0.00       0.00       0.00
                            0.00     -20.58      -0.00       0.00      -0.00      18.70      -0.00       0.00      29.85      -0.00

    5   5.1  0.0  0.0      -0.00       0.00       0.00     -17.01      48.29      -0.00      -0.00      -0.00       0.00       0.00
                           21.97      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00     -82.96

    6   6.1  0.0  0.0       0.00       0.00       9.11       0.00       0.00       0.00      42.45      -0.00       0.00       0.00
                           -0.00      17.50       0.00       0.00       0.00     -52.47       0.00      -0.00     163.15      -0.00

    7   7.1  0.0  0.0       0.00       0.00      -0.00     -56.27    -181.53      -0.00       0.00       0.00       0.00       0.00
                           72.60      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      13.78

    8   8.1  0.0  0.0      -0.00       0.02       0.00       0.00      -0.00    -181.54      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.11       0.00      -0.00      -0.00    -181.54       0.00       0.00      -0.00

    9   9.1  0.0  0.0      72.60      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00     -56.26    -181.53       0.00       0.00       0.00       0.00      -0.00

   10  10.1  0.0  0.0      -0.00       0.00     -88.61      -0.00       0.00      -0.00     192.22      -0.00       0.00       0.00
                            0.00      35.65      -0.00      -0.00       0.00     -23.44       0.00       0.00      16.30      -0.00

   11  11.1  0.0  0.0      -0.00       0.00      -9.92       0.00      -0.00       0.00     -83.81       0.00       0.00       0.00
                            0.00      81.70       0.00      -0.00      -0.00     208.38       0.00       0.00     -22.08      -0.00

   12  12.1  0.0  0.0      -0.00       0.00       0.03      -0.00       0.00       0.00     215.51      -0.00       0.00       0.00
                            0.00      -0.03      -0.00      -0.00      -0.00     215.51      -0.00       0.00      -0.00       0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            2.63      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00     -59.03

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -3.24      -0.00      -0.00      -0.00      -7.41      -0.00      -0.00      59.03       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -59.03       0.00
                           -0.00       0.00      -3.24      -0.00       0.00       0.00       7.41       0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      59.09
                            0.00      -0.00      -0.00       0.00       0.01      -0.00       0.00       0.00       0.00      -0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -102.18
                            0.00      -0.00      -0.00      -3.59      -8.51      -0.00      -0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                          160.25       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       1.89

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      77.64       0.00      -0.00      -0.00       0.02      -0.00      -0.00      -2.37      -0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.37       0.00
                           -0.00       0.00     -77.80       0.00      -0.00      -0.00       0.02      -0.00      -0.00      -0.00

   21   9.1  1.0  1.0   23125.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.89
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   22  10.1  1.0  1.0       0.00   23126.04       0.00       0.00       0.00       0.00       0.00       0.00      -0.02      -0.00
                           -0.00       0.00     -60.02      -0.00       0.00      -0.00      -0.01      -0.00      -0.00      -0.00

   23  11.1  1.0  1.0       0.00       0.00   23126.04       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      60.02      -0.00      -0.00       0.00      -0.01      -0.00       0.00      -0.02      -0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00   23126.06       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.01      -0.00      -1.44

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00   25490.85       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      77.20      -0.00       5.24

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   25490.89       0.00       0.00       5.25      -0.00
                            0.00       0.00       0.01      -0.00       0.00      -0.00     227.28      -0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   25490.89       0.00      -0.00      -0.00
                           -0.00       0.01       0.00       0.00       0.00    -227.28       0.00      -0.00      -5.25      -0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   27285.47       0.00      -0.00
                            0.00       0.00      -0.00      -0.01     -77.20       0.00       0.00      -0.00       0.00       0.00

   29   1.1  1.0  0.0      -0.00      -0.02       0.00       0.00       0.00       5.25      -0.00       0.00   10799.51       0.00
                            0.00       0.00       0.02       0.00       0.00      -0.00       5.25      -0.00       0.00       0.00

   30   2.1  1.0  0.0      -1.89      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00   10799.52
                           -0.00       0.00       0.00       1.44      -5.24      -0.00       0.00      -0.00      -0.00       0.00

   31   3.1  1.0  0.0      -0.00      -0.00      -0.00      -1.44       5.24      -0.00       0.00      -0.00       0.00       0.00
                            1.89      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   32   4.1  1.0  0.0       0.00       0.00       1.17      -0.00      -0.00      -0.00       5.24      -0.00       0.00       0.00
                           -0.00       1.17       0.00       0.00       0.00      -5.24       0.00       0.00      -0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00       1.98       0.00      -0.00       0.00       3.05       0.00       0.00       0.00
                           -0.00      -1.98       0.00       0.00       0.00       3.04      -0.00       0.00      -0.00      -0.00

   34   6.1  1.0  0.0      -0.00    -104.08      -0.00       0.00       0.00      -0.02       0.00       0.00       0.00       0.00
                           -0.00      -0.00     104.12      -0.00       0.00       0.00      -0.02       0.00      -0.00      -0.00

   35   7.1  1.0  0.0     -89.64       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00     -34.83       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   36   8.1  1.0  0.0      -0.00       0.00       0.00     -34.70       0.00       0.00       0.00       0.00       0.00       0.00
                          -89.57       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   37   9.1  1.0  0.0      -0.00      -0.00      69.29      -0.00      -0.00      -0.00      -0.01       0.00       0.00       0.00
                           -0.00      69.37       0.00      -0.00       0.00       0.01       0.00       0.00      -0.00      -0.00

   38  10.1  1.0  0.0       0.00      -0.00      -0.00    -134.36       0.03       0.00       0.00       0.00       0.00       0.00
                          -69.37       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.01      -0.00      -0.00

   39  11.1  1.0  0.0     -69.29       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.01       0.00       0.00
                           -0.00      -0.00       0.00    -134.33       0.03      -0.00      -0.00       0.00      -0.00      -0.00

   40  12.1  1.0  0.0       0.00     134.36       0.00       0.00       0.00       0.03       0.00      -0.00       0.00       0.00
                            0.00      -0.00     134.33      -0.00       0.00       0.00      -0.03       0.00      -0.00      -0.00

   41  13.1  1.0  0.0       0.00      -0.03       0.00      -0.00      -0.00     160.71      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.03      -0.00       0.00      -0.00    -160.71       0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00      -0.00      -0.00      -0.03    -160.71      -0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00       0.00      -0.00       0.00      -0.00      -0.00      54.59      -0.00      -0.00

   43  15.1  1.0  0.0       0.01      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      54.59       0.00       0.00
                           -0.00       0.00       0.00       0.03     160.71       0.00       0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0      -0.00      -0.00      -0.01       0.00      -0.00      -0.00     -54.59       0.00       0.00       0.00
                           -0.00       0.01      -0.00      -0.00      -0.00     -54.59       0.00       0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -59.03

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      59.03      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      59.03      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -59.09
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     102.18
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       1.89

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.37      -0.00

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.37      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.89
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.02      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.44

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       5.24

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -5.25       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -5.25      -0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.02

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -165.91      -0.11       0.00      -0.00       0.00     -31.04       0.00      -0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           82.96       0.00       0.00      -0.00      -0.00       9.84       0.00      38.04      -0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       5.59       0.00       0.00      -0.00       0.00      -0.00      41.17

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       9.87       0.00      -0.00      -0.00      38.03       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      30.56       0.00       0.00       0.00      -0.00       0.00      -7.53

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      32.60       0.00       0.00      -0.00     125.76       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      27.46       0.02       0.00       0.00       0.00    -102.67       0.00       0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           13.78       0.00       0.00      -0.00      -0.00     -32.47      -0.00    -125.79      -0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     -60.95       0.00       0.00      -0.00      -0.00      -0.00    -111.12

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      82.59       0.00      -0.00       0.00      -0.00      -0.00     -82.01

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.04

   13   1.1  1.0  1.0      59.03      -0.00       0.00       0.00      -0.00       2.37       0.00       0.02      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       2.37       0.00       0.00       0.00       0.02       0.00

   14   2.1  1.0  1.0      -0.00     -59.09     102.18      -0.00      -0.00      -0.00       1.89       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -1.89       0.00       0.00      -0.00       0.00       0.00       1.44

   15   3.1  1.0  1.0      -0.00      -0.00      -0.00       1.89       0.00      -0.00       0.00       0.00       0.00       1.44
                           -0.00     -58.95    -102.26       0.00      -0.00       0.00       1.89      -0.00      -0.00       0.00

   16   4.1  1.0  1.0       0.00      -0.00       0.00      -0.00       2.06      -0.00      -0.00      -0.00      -1.17       0.00
                           58.95       0.00       0.00       0.00       0.00      -2.06      -0.00       1.17       0.00       0.00

   17   5.1  1.0  1.0       0.00      -0.00       0.00       0.00      -0.50      -0.00      -0.00      -0.00      -1.98      -0.00
                          102.26      -0.00      -0.00       0.00      -0.00      -0.51      -0.00      -1.98       0.00       0.00

   18   6.1  1.0  1.0      -1.89       0.00      -0.00       0.00       0.00     -44.78       0.00     104.08       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00     -44.68      -0.00      -0.00      -0.00     104.12      -0.00

   19   7.1  1.0  1.0      -0.00      -2.06       0.50      -0.00       0.00       0.00      89.64      -0.00      -0.00       0.00
                            0.00      -0.00       0.00      44.68       0.00      -0.00       0.00      -0.00      -0.00     -34.83

   20   8.1  1.0  1.0       0.00       0.00       0.00      44.78      -0.00       0.00       0.00      -0.00      -0.00      34.70
                           -0.00       2.06       0.51       0.00       0.00      -0.00     -89.57       0.00       0.00      -0.00

   21   9.1  1.0  1.0      -0.00       0.00       0.00      -0.00     -89.64      -0.00      -0.00       0.00     -69.29       0.00
                           -1.89       0.00       0.00       0.00      -0.00      89.57       0.00      69.37       0.00      -0.00

   22  10.1  1.0  1.0      -0.00       0.00       0.00    -104.08       0.00       0.00      -0.00      -0.00       0.00     134.36
                            0.00      -1.17       1.98       0.00       0.00      -0.00     -69.37      -0.00       0.00       0.00

   23  11.1  1.0  1.0      -0.00       1.17       1.98      -0.00       0.00       0.00      69.29      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00    -104.12       0.00      -0.00      -0.00      -0.00      -0.00    -134.33

   24  12.1  1.0  1.0      -1.44      -0.00       0.00       0.00      -0.00     -34.70      -0.00    -134.36      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      34.83       0.00       0.00      -0.00     134.33       0.00

   25  13.1  1.0  1.0       5.24      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.03      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.03      -0.00

   26  14.1  1.0  1.0      -0.00      -0.00       0.00      -0.02       0.00       0.00      -0.00       0.00       0.00       0.03
                            0.00       5.24      -3.04      -0.00      -0.00      -0.00      -0.01      -0.00       0.00      -0.00

   27  15.1  1.0  1.0       0.00       5.24       3.05       0.00      -0.00       0.00      -0.01       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.02       0.00       0.00      -0.00       0.00       0.00       0.03

   28  16.1  1.0  1.0      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.01      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.01      -0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   3.1  1.0  0.0   10799.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00   10799.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00   10799.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00   23125.67       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00   23125.78       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   23125.78       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   23125.84       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23126.04       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23126.04       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23126.06
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0     -59.03       0.00      -0.00      -0.00       0.00      -2.37      -0.00      -0.02       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       2.37       0.00       0.00       0.00       0.02       0.00

   46   2.1  1.0 -1.0       0.00      59.09    -102.18       0.00       0.00       0.00      -1.89      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -1.89       0.00       0.00      -0.00       0.00       0.00       1.44

   47   3.1  1.0 -1.0      -0.00       0.00       0.00      -1.89      -0.00       0.00      -0.00      -0.00      -0.00      -1.44
                            0.00     -58.95    -102.26       0.00      -0.00       0.00       1.89      -0.00      -0.00       0.00

   48   4.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00      -2.06       0.00       0.00       0.00       1.17      -0.00
                           58.95      -0.00       0.00       0.00       0.00      -2.06      -0.00       1.17       0.00       0.00

   49   5.1  1.0 -1.0      -0.00       0.00       0.00      -0.00       0.50       0.00       0.00       0.00       1.98       0.00
                          102.26      -0.00       0.00       0.00      -0.00      -0.51      -0.00      -1.98       0.00       0.00

   50   6.1  1.0 -1.0       1.89      -0.00       0.00       0.00      -0.00      44.78      -0.00    -104.08      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00     -44.68      -0.00      -0.00      -0.00     104.12      -0.00

   51   7.1  1.0 -1.0       0.00       2.06      -0.50       0.00       0.00      -0.00     -89.64       0.00       0.00      -0.00
                            0.00      -0.00       0.00      44.68      -0.00      -0.00       0.00      -0.00      -0.00     -34.83

   52   8.1  1.0 -1.0      -0.00      -0.00      -0.00     -44.78       0.00       0.00      -0.00       0.00       0.00     -34.70
                           -0.00       2.06       0.51       0.00       0.00       0.00     -89.57       0.00       0.00      -0.00

   53   9.1  1.0 -1.0       0.00      -0.00      -0.00       0.00      89.64       0.00      -0.00      -0.00      69.29      -0.00
                           -1.89       0.00       0.00       0.00      -0.00      89.57      -0.00      69.37       0.00      -0.00

   54  10.1  1.0 -1.0       0.00      -0.00      -0.00     104.08      -0.00      -0.00       0.00      -0.00      -0.00    -134.36
                            0.00      -1.17       1.98       0.00       0.00      -0.00     -69.37       0.00       0.00       0.00

   55  11.1  1.0 -1.0       0.00      -1.17      -1.98       0.00      -0.00      -0.00     -69.29       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00    -104.12       0.00      -0.00      -0.00      -0.00       0.00    -134.33

   56  12.1  1.0 -1.0       1.44       0.00      -0.00      -0.00       0.00      34.70       0.00     134.36       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      34.83       0.00       0.00      -0.00     134.33      -0.00

   57  13.1  1.0 -1.0      -5.24       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.03       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.03      -0.00

   58  14.1  1.0 -1.0       0.00       0.00      -0.00       0.02      -0.00      -0.00       0.00      -0.00      -0.00      -0.03
                            0.00       5.24      -3.04      -0.00      -0.00      -0.00      -0.01      -0.00       0.00      -0.00

   59  15.1  1.0 -1.0      -0.00      -5.24      -3.05      -0.00       0.00      -0.00       0.01      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.02       0.00       0.00      -0.00       0.00       0.00       0.03

   60  16.1  1.0 -1.0       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.01       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.01      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                         -124.82      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00     -58.66      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00      58.66      -0.00      -0.00       0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      58.72    -101.56       0.00
                           -0.00      68.30      -0.00       0.00     -58.66       0.00       0.00      -0.00      -0.00      21.97

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      89.34      -0.00       0.00       0.00       0.00
                           77.45       0.00      -0.00      -0.00       0.00      -0.00    -110.45      -0.00      -0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00      58.66      -0.00       0.00       0.00      -0.00     -21.97
                            0.00      -0.00     -68.30       0.00      -0.00      -0.00      -0.00      58.59     101.63       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00     -75.97       0.00      -0.00      -0.00       0.00
                          -14.17      -0.00       0.00      -0.00      -0.00      -0.00     -39.41       0.00       0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00      -9.75       0.00       0.00       0.00      -0.00     -72.60
                            0.00       0.00     256.73      -0.00      -0.00      -0.00       0.00      -9.74     -16.85       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       9.74      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -9.74      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       9.76     -16.83      -0.00
                           -0.00     256.73      -0.00       0.00      -9.75      -0.00      -0.00       0.00       0.00     -72.60

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       7.78       0.00       0.00       0.00       0.00
                          238.69      -0.00      -0.00       0.00       0.00      -0.00     -19.31      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      17.80      -0.00      -0.00       0.00      -0.00
                          176.17       0.00       0.00      -0.00       0.00       0.00      -2.19      -0.00       0.00       0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                         -304.80       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   13   1.1  1.0  1.0      -0.00      -5.25       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       5.25      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.24      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0      -5.24       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00       0.00      -5.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -5.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0       0.00      -0.00      -3.05      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       3.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0      -0.00       0.02      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0       0.00       0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0      -0.03      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00      -0.00      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0      -0.00      -0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0      -0.00    -160.71       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -160.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0     160.71      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      54.59       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0      -0.00       0.00      -0.00     -54.59       0.00       0.00       0.00       0.00       0.00       0.00
                          160.71       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0       0.00       0.00      54.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -54.59       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      59.03      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00     -59.03      -0.00      -0.00      -0.00      -0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -59.09     102.18      -0.00
                            0.00       0.00       0.00       0.00      59.03       0.00      -0.00       0.00      -0.00      -1.89

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00     -59.03       0.00      -0.00      -0.00      -0.00       1.89
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -58.95    -102.26       0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      59.09       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      58.95       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00    -102.18       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     102.26      -0.00      -0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -1.89       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       1.89      -0.00      -0.00      -0.00      -0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -2.06       0.50      -0.00
                            0.00       0.00       0.00       0.00      -2.37      -0.00       0.00      -0.00       0.00      44.68

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -2.37       0.00       0.00       0.00       0.00      44.78
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       2.06       0.51       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -1.89      -0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -1.89       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.02      -0.00      -0.00       0.00       0.00    -104.08
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -1.17       1.98       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       1.17       1.98      -0.00
                            0.00       0.00       0.00       0.00      -0.02      -0.00       0.00      -0.00      -0.00    -104.12

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -1.44      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -1.44      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0   25490.85       0.00       0.00       0.00       0.00       0.00       5.24      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       5.24       0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00   25490.89       0.00       0.00       5.25      -0.00      -0.00      -0.00       0.00      -0.02
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.24      -3.04      -0.00

   43  15.1  1.0  0.0       0.00       0.00   25490.89       0.00      -0.00      -0.00       0.00       5.24       3.05       0.00
                           -0.00      -0.00       0.00       0.00      -5.25      -0.00      -0.00      -0.00       0.00       0.02

   44  16.1  1.0  0.0       0.00       0.00       0.00   27285.47       0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       5.25      -0.00       0.00   10799.51       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       5.25      -0.00      -0.00       0.00       0.00    -166.93      -0.11       0.00

   46   2.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00       0.00   10799.52       0.00       0.00       0.00       0.00
                           -5.24      -0.00       0.00      -0.00      -0.00      -0.00      83.47       0.00       0.00       0.00

   47   3.1  1.0 -1.0       5.24      -0.00       0.00      -0.00       0.00       0.00   10799.52       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00     -83.47      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0      -0.00      -0.00       5.24      -0.00       0.00       0.00       0.00   10799.66       0.00       0.00
                            0.00      -5.24       0.00       0.00     166.93      -0.00       0.00       0.00       0.00       2.63

   49   5.1  1.0 -1.0      -0.00       0.00       3.05       0.00       0.00       0.00       0.00       0.00   10799.68       0.00
                            0.00       3.04      -0.00       0.00       0.11      -0.00       0.00      -0.00       0.00       0.00

   50   6.1  1.0 -1.0       0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23125.67
                            0.00       0.00      -0.02       0.00      -0.00      -0.00       0.00      -2.63      -0.00      -0.00

   51   7.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.87       0.00       0.00       0.00

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.87      -0.00      -0.00       0.00      -0.00

   53   9.1  1.0 -1.0      -0.00      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01       0.00       0.00       2.63       0.00      -0.00       0.00       0.00     160.25

   54  10.1  1.0 -1.0       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.01      -0.00      -3.24       0.00      -0.00      -0.00       0.00

   55  11.1  1.0 -1.0      -0.00       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.00      -0.00       0.00       0.00      -0.00      -3.24      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.03       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.03       0.00      -0.00      -0.00      -0.00       0.00      -3.59       0.00

   57  13.1  1.0 -1.0      -0.00     160.71      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -160.71       0.00       0.00      -0.00       0.00       0.01      -8.51       0.00

   58  14.1  1.0 -1.0    -160.71      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      54.59      -0.00      -7.41       0.00      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0       0.00      -0.00      -0.00      54.59       0.00       0.00       0.00       0.00       0.00       0.00
                          160.71       0.00       0.00      -0.00      -0.00      -0.00       7.41       0.00      -0.00      -0.00

   60  16.1  1.0 -1.0      -0.00      -0.00     -54.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -54.59       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.01      -0.00       0.00      -0.00      88.26      -0.00
                            0.00      -0.00      -0.00       0.01       0.00       0.00       0.00     -88.26       0.00      -0.00

    2   2.1  0.0  0.0       0.00     -27.78       0.00      -0.01      -0.00      -0.00      -0.00      48.29      -0.00      -0.00
                          -27.78      -0.00      -0.00      -0.00       0.02      -0.00       0.00      -0.00     -48.29       0.00

    3   3.1  0.0  0.0      -0.00       0.00     -21.97      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00     -17.01      48.29       0.00      -0.00      -0.00

    4   4.1  0.0  0.0       1.58       0.00      -0.00      -0.00      25.44      -0.00       0.00       0.00      36.07      -0.00
                            0.00      10.32      -0.00      20.58       0.00      -0.00       0.00     -18.70       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00      -0.00       0.00       0.00     -17.01      48.29      -0.00      -0.00      -0.00
                            0.00      -0.00     -21.97       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

    6   6.1  0.0  0.0     -25.03       0.00       0.00       0.00       9.11       0.00       0.00       0.00      42.45      -0.00
                           -0.00      22.87       0.00     -17.50      -0.00      -0.00      -0.00      52.47      -0.00       0.00

    7   7.1  0.0  0.0       0.00      -0.00       0.00       0.00      -0.00     -56.27    -181.53      -0.00       0.00       0.00
                           -0.00      -0.00     -72.60       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

    8   8.1  0.0  0.0       0.00     -91.84      -0.00       0.02       0.00       0.00      -0.00    -181.54      -0.00      -0.00
                          -91.84      -0.00       0.00       0.00       0.11      -0.00       0.00       0.00     181.54      -0.00

    9   9.1  0.0  0.0       0.00       0.00      72.60      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00      56.26     181.53      -0.00      -0.00      -0.00

   10  10.1  0.0  0.0      31.64      -0.00      -0.00       0.00     -88.61      -0.00       0.00      -0.00     192.22      -0.00
                           -0.00     -63.80      -0.00     -35.65       0.00       0.00      -0.00      23.44      -0.00      -0.00

   11  11.1  0.0  0.0     -76.56      -0.00      -0.00       0.00      -9.92       0.00      -0.00       0.00     -83.81       0.00
                           -0.00      52.87      -0.00     -81.70      -0.00       0.00       0.00    -208.38      -0.00      -0.00

   12  12.1  0.0  0.0      -0.01       0.00      -0.00       0.00       0.03      -0.00       0.00       0.00     215.51      -0.00
                            0.00      -0.01      -0.00       0.03       0.00       0.00       0.00    -215.51       0.00      -0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0      -0.00       2.37       0.00       0.02      -0.00      -0.00      -0.00      -5.25       0.00      -0.00
                            2.37       0.00       0.00       0.00       0.02       0.00       0.00      -0.00       5.25      -0.00

   30   2.1  1.0  0.0      -0.00      -0.00       1.89       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       1.44      -5.24      -0.00       0.00      -0.00

   31   3.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       1.44      -5.24       0.00      -0.00       0.00
                           -0.00       0.00       1.89      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   32   4.1  1.0  0.0       2.06      -0.00      -0.00      -0.00      -1.17       0.00       0.00       0.00      -5.24       0.00
                            0.00      -2.06      -0.00       1.17       0.00       0.00       0.00      -5.24       0.00       0.00

   33   5.1  1.0  0.0      -0.50      -0.00      -0.00      -0.00      -1.98      -0.00       0.00      -0.00      -3.05      -0.00
                           -0.00      -0.51      -0.00      -1.98       0.00       0.00       0.00       3.04      -0.00       0.00

   34   6.1  1.0  0.0       0.00     -44.78       0.00     104.08       0.00      -0.00      -0.00       0.02      -0.00      -0.00
                          -44.68      -0.00      -0.00      -0.00     104.12      -0.00       0.00       0.00      -0.02       0.00

   35   7.1  1.0  0.0       0.00       0.00      89.64      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00     -34.83       0.00       0.00      -0.00      -0.00

   36   8.1  1.0  0.0      -0.00       0.00       0.00      -0.00      -0.00      34.70      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00     -89.57       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   37   9.1  1.0  0.0     -89.64      -0.00      -0.00       0.00     -69.29       0.00       0.00       0.00       0.01      -0.00
                           -0.00      89.57       0.00      69.37       0.00      -0.00       0.00       0.01       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00     134.36      -0.03      -0.00      -0.00      -0.00
                            0.00      -0.00     -69.37      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.01

   39  11.1  1.0  0.0       0.00       0.00      69.29      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.01
                            0.00      -0.00      -0.00      -0.00      -0.00    -134.33       0.03      -0.00      -0.00       0.00

   40  12.1  1.0  0.0      -0.00     -34.70      -0.00    -134.36      -0.00       0.00      -0.00      -0.03      -0.00       0.00
                           34.83       0.00       0.00      -0.00     134.33       0.00       0.00       0.00      -0.03       0.00

   41  13.1  1.0  0.0      -0.00       0.00      -0.00       0.03      -0.00       0.00      -0.00    -160.71       0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.03      -0.00      -0.00      -0.00    -160.71       0.00

   42  14.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.03     160.71      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.01      -0.00       0.00      -0.00       0.00       0.00      -0.00      54.59

   43  15.1  1.0  0.0      -0.00       0.00      -0.01       0.00       0.00       0.00      -0.00       0.00      -0.00     -54.59
                            0.00       0.00      -0.00       0.00       0.00       0.03     160.71       0.00      -0.00      -0.00

   44  16.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.01      -0.00       0.00       0.00      54.59       0.00
                            0.00      -0.00      -0.00       0.01      -0.00      -0.00      -0.00     -54.59       0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -2.63       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.87      -0.00       3.24       0.00       0.00       0.00       7.41       0.00       0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.87       0.00       0.00      -0.00       3.24       0.00      -0.00      -0.00      -7.41      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.01       0.00      -0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       3.59       8.51       0.00       0.00      -0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -160.25      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   51   7.1  1.0 -1.0   23125.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     220.24       0.00     -77.64      -0.00       0.00       0.00      -0.02       0.00       0.00

   52   8.1  1.0 -1.0       0.00   23125.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -220.24       0.00       0.00      -0.00      77.80      -0.00       0.00       0.00      -0.02       0.00

   53   9.1  1.0 -1.0       0.00       0.00   23125.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00   23126.04       0.00       0.00       0.00       0.00       0.00       0.00
                           77.64       0.00       0.00      -0.00      60.02       0.00      -0.00       0.00       0.01       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   23126.04       0.00       0.00       0.00       0.00       0.00
                            0.00     -77.80       0.00     -60.02       0.00       0.00      -0.00       0.01       0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   23126.06       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.01

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   25490.85       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -77.20

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25490.89       0.00       0.00
                            0.02      -0.00      -0.00      -0.00      -0.01       0.00      -0.00       0.00    -227.28       0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25490.89       0.00
                           -0.00       0.02       0.00      -0.01      -0.00      -0.00      -0.00     227.28      -0.00       0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   27285.47
                           -0.00      -0.00      -0.00      -0.00       0.00       0.01      77.20      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 60)

    The diagonal matrixelements are shifted by  -8132.65306540 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   12945.924       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   12945.929       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   12945.942       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   12945.928       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   12945.934       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   24928.768       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   24928.767
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000      -0.000      -0.000       0.000      82.957      -0.000     -13.787       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.001      -0.000      -0.000     126.353      -0.000    -107.432       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000     -82.960       0.000      -0.000       0.000       0.000       0.000      13.780
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      -0.000      83.044       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000      -0.000    -143.623       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000      -0.000       0.000       0.000     -31.072       0.000    -102.673       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.002       0.000      -0.000       2.231       0.000     -35.401       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000     -39.293       0.000       0.000       0.000       0.000      -0.000    -129.887
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000     -31.070      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000      -0.010      -0.000      -0.000       0.000       0.000       0.000       0.032
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.017      -0.000       0.000      35.974       0.000      12.879      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000      -0.000       0.000      -0.000     -24.058       0.000     -79.576       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000      -0.000       0.000       0.000      68.298       0.000    -256.726      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+             -0.000      68.293      -0.000       0.000      -0.000       0.000      -0.000    -256.734
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+            124.820      -0.000       0.000      51.009      -0.000      60.031       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.000       0.000     -29.848       0.000    -163.146      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      82.959       0.000     -13.783       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -82.959       0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     165.913      -0.000      -0.000       0.000      -0.000      -0.000     -27.460

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.112      -0.000      -0.000       0.000      -0.000      -0.000      -0.018

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -5.589       0.000     -30.555       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -9.874      -0.000     -32.596      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -9.836      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      31.045      -0.000       0.000       0.000      -0.000      -0.000     102.666

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -38.044      -0.000       0.000       0.000       0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -38.034      -0.000    -125.762      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.020      -0.000       0.000     -41.172      -0.000       7.532      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              124.821       0.000       0.000     -77.447      -0.000      14.169      -0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -68.297      -0.000       0.000       0.000      -0.000       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      68.297      -0.000    -256.726       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -82.957       0.000      -0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      82.960       0.000      -0.000      -0.000      -0.000      -0.000     -13.780

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002      -0.000       0.000    -156.203      -0.000     -55.738       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      82.852       0.000     -13.772       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000     143.733       0.000     -23.826       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      31.073       0.000       0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -39.292       0.000       0.000       0.000      -0.000      -0.000    -129.886

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.002      -0.000       0.000      14.591      -0.000      32.342      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000     -31.069       0.000    -102.675       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.017      -0.000      -0.000      29.098       0.000     -24.749       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.029       0.000       0.000       0.000      -0.000       0.000       0.159

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -24.057      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      68.298       0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -124.820      -0.000       0.000     -26.451       0.000      74.203       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -68.294      -0.000       0.000      -0.000      -0.000       0.000     256.733

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.001      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.001      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000     -82.960      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      83.044
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000     126.353      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000      82.957      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000      -0.000    -107.432       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000     -13.787       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000      13.780      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           24928.767       0.000       0.000       0.000       0.000       0.000       0.000      13.804
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   24928.787       0.000       0.000       0.000      11.009       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000   24928.784       0.000       0.000      25.180      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000   27086.333       0.000      -0.002      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000   10799.510       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      11.009      25.180      -0.002       0.000   10799.520       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000   10799.521       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             13.804       0.000      -0.000       0.000       0.000       0.000       0.000   10799.656
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+            -23.807       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000      44.740    -108.273      -0.010       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            102.675      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000    -125.316     -14.026       0.037       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+             -0.000     271.838    -118.529     304.783       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.001      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -0.000     -16.297      22.079       0.000       0.000     -83.474      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000      83.474       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                              -13.783      -0.000      -0.000       0.000       0.000       0.000       0.000     -83.367

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      83.367       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000     144.619      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000      60.951     -82.586      -0.000       0.000       2.680      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000      -0.000      -0.000       0.000      -3.359      -0.000       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                               32.471      -0.000       0.000       0.000      -0.000      -0.000      -0.000       2.916

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -2.678       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                              125.794       0.000       0.000      -0.000      -0.000      -0.000       0.000      -1.654

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.023      -0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000     111.119      82.010       0.037      -0.000      -2.032      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000    -238.685    -176.167     304.795      -0.000       7.417       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                             -256.726       0.000      -0.000      -0.000       0.000       0.000       0.000       7.412

   15    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000      -7.418      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -13.787       0.000       0.000       0.000       0.000      -0.000      -0.000     166.926

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000     -83.473      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -27.306      -3.099       0.002       0.000      83.473       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000    -166.926       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.112       0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -102.677       0.000       0.000       0.000       0.000       0.000      -0.000       2.627

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.872      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -90.229      74.775      -0.010       0.000       0.869       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -2.628      -0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -50.423    -115.542       0.037       0.000       3.241      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       3.241       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               79.571       0.000       0.000       0.000       0.000       0.000       0.000      -0.002

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              256.726      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.006

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      33.153    -294.695    -304.782       0.000       7.411      -0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -7.411      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000      -0.002       0.000       0.000       0.000       0.017      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000      -0.000       0.000     -39.293       0.000      -0.010      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>            -143.623       0.000      -0.000       0.000     -31.070      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       2.231       0.000      -0.000      -0.000      35.974      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              -0.000     -31.072       0.000       0.000      -0.000       0.000       0.000     -24.058
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              -0.000       0.000     -35.401       0.000       0.000       0.000      12.879       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              -0.000    -102.673       0.000      -0.000       0.000       0.000      -0.000     -79.576
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>              -0.000       0.000       0.000    -129.887      -0.000       0.032       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>             -23.807      -0.000       0.000       0.000     102.675      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000      44.740      -0.000      -0.000       0.000    -125.316      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000      -0.000    -108.273      -0.000      -0.000       0.000     -14.026       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000      -0.010       0.000      -0.000       0.000       0.037      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+          10799.681       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000   23125.674       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000   23125.779       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000   23125.781       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000   23125.844       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   23126.035       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   23126.035       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   23126.056
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000       3.359       0.000       0.000       0.000       0.023       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -2.680       0.000       0.000      -0.000       0.000       0.000       2.032

    3    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                             -144.619       0.000      -0.000       0.000       2.678      -0.000      -0.000       0.000

    4    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000      -2.916      -0.000       1.654       0.000       0.000

    5    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.715      -0.000      -2.805       0.000       0.000

    6    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000     -63.186      -0.000      -0.000      -0.000     147.242      -0.000

    7    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      63.186       0.000      -0.000       0.000      -0.000      -0.000     -49.258

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.715       0.000       0.000       0.000    -126.667       0.000       0.000      -0.000

    9    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000     126.667       0.000      98.110       0.000      -0.000

   10    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                2.805       0.000       0.000      -0.000     -98.110       0.000       0.000       0.000

   11    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000    -147.242       0.000      -0.000      -0.000      -0.000       0.000    -189.971

   12    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      49.258       0.000       0.000      -0.000     189.971       0.000

   13    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.006       0.000      -0.000       0.000      -0.038      -0.000

   14    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -4.297      -0.000      -0.000      -0.000      -0.011      -0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.026       0.000       0.000      -0.000       0.000       0.000       0.036

   16    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.002      -0.000       0.008      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.112      -0.000      -0.000      -0.000       2.628      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.869       0.000      -3.241      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.872      -0.000      -0.000       0.000      -3.241      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -2.627       0.000      -0.000       0.000      -0.000      -0.000       0.002

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.002       0.000       0.000       0.000      -0.000      -0.000      -3.587

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002       0.000       0.000      -0.000     160.250       0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000    -220.244      -0.000      77.639       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     220.244      -0.000      -0.000       0.000     -77.797       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -160.250       0.000       0.000       0.000       0.000       0.000      -0.004

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -77.639      -0.000      -0.000       0.000     -60.022      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      77.797      -0.000      60.022      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.587      -0.000       0.000      -0.000       0.004       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                8.514      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.022       0.000       0.000       0.000       0.006      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.022      -0.000       0.006       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.008

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000      -0.000     124.820      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.001       0.000       0.000       0.000

    2    1  |0 0>              -0.000      68.293      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000    -165.913

    3    1  |0 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      82.959       0.000

    4    1  |0 0>               0.000       0.000      51.009      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      29.848      -0.000      -0.000       0.000

    5    1  |0 0>              68.298      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     -82.959       0.000      -0.000

    6    1  |0 0>               0.000       0.000      60.031      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     163.146      -0.000       0.000       0.000

    7    1  |0 0>            -256.726      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      13.783       0.000       0.000

    8    1  |0 0>              -0.000    -256.734      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      27.460

    9    1  |0 0>               0.000      -0.000      -0.000      -0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      13.783       0.000

   10    1  |0 0>               0.000      -0.000     271.838      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      16.297      -0.000       0.000      -0.000

   11    1  |0 0>              -0.000       0.000    -118.529       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -22.079      -0.000       0.000      -0.000

   12    1  |0 0>               0.000       0.000     304.783      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000     -83.474      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      83.474       0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -83.367

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      83.367       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     144.619      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       2.680      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -3.359      -0.000       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       2.916

    9    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -2.678       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -1.654

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.023      -0.000       0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -2.032      -0.000      -0.000

   13    1  |1 1>+          25490.853       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       7.417       0.000      -0.000

   14    1  |1 1>+              0.000   25490.892       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       7.412

   15    1  |1 1>+              0.000       0.000   25490.891       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -7.418      -0.000      -0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000   27285.466      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000      -0.000      -0.000   10799.510       0.000       0.000       0.000
                                0.000      -0.000       7.418      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000   10799.520       0.000       0.000
                               -7.417      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000   10799.521       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000   10799.656
                                0.000      -7.412       0.000       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       4.297      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.026       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.006       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.002      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.011       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.008      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.038      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.036       0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -227.285       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      77.200      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                              227.285       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -77.200       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      83.474      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.000     -83.561
                               -0.000      -7.411      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     -83.474       0.000       0.000      -0.000
                                0.000       0.000       7.411       0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      83.561       0.000       0.000
                                0.006      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000    -144.507       0.000      -0.000
                               -8.514      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000      -2.680       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -2.915
                               -0.000       0.022      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      -3.359       0.000       0.000       0.000
                               -0.000      -0.000       0.022      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -2.678      -0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000      -0.027      -0.000      -0.000       0.000
                                0.000      -0.000      -0.006      -0.000       0.000       0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       1.653
                                0.000      -0.006      -0.000       0.000       0.000      -0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -2.032      -0.000
                                0.000       0.000      -0.000       0.008       0.000       0.000      -0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       7.417      -0.000
                               -0.000      -0.000      -0.000      77.204       0.000       0.000      -0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       7.418      -0.000      -0.000      -0.000
                                0.000      -0.000     227.281      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       7.406
                                0.000    -227.281       0.000      -0.000       0.000       0.000      -0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                              -77.204       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.020

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.112       0.000      -0.000       0.000     -31.045       0.000      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       9.836       0.000      38.044      -0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       5.589       0.000       0.000      -0.000       0.000      -0.000      41.172

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       9.874       0.000      -0.000      -0.000      38.034       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      30.555       0.000       0.000       0.000      -0.000       0.000      -7.532

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      32.596       0.000       0.000      -0.000     125.762       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.018       0.000       0.000       0.000    -102.666       0.000       0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     -32.471      -0.000    -125.794      -0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -60.951       0.000       0.000      -0.000      -0.000      -0.000    -111.119

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      82.586       0.000      -0.000       0.000      -0.000      -0.000     -82.010

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.037

    1    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000       3.359       0.000       0.000       0.000       0.023       0.000

    2    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -2.680       0.000       0.000      -0.000       0.000       0.000       2.032

    3    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                             -144.619       0.000      -0.000       0.000       2.678      -0.000      -0.000       0.000

    4    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000      -2.916      -0.000       1.654       0.000       0.000

    5    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.715      -0.000      -2.805       0.000       0.000

    6    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000     -63.186      -0.000      -0.000      -0.000     147.242      -0.000

    7    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      63.186       0.000      -0.000       0.000      -0.000      -0.000     -49.258

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.715       0.000       0.000       0.000    -126.667       0.000       0.000      -0.000

    9    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000     126.667       0.000      98.110       0.000      -0.000

   10    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                2.805       0.000       0.000      -0.000     -98.110       0.000       0.000       0.000

   11    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000    -147.242       0.000      -0.000      -0.000      -0.000       0.000    -189.971

   12    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      49.258       0.000       0.000      -0.000     189.971       0.000

   13    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.006       0.000      -0.000       0.000      -0.038      -0.000

   14    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -4.297      -0.000      -0.000      -0.000      -0.011      -0.000       0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.026       0.000       0.000      -0.000       0.000       0.000       0.036

   16    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.002      -0.000       0.008      -0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           10799.681       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   23125.674       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   23125.779       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   23125.781       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   23125.844       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   23126.035       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   23126.035       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   23126.056
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000      -0.000       3.359       0.000       0.027      -0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-            144.507      -0.000      -0.000      -0.000       2.678       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    3    1  |1 1>-             -0.000       2.680       0.000      -0.000       0.000       0.000       0.000       2.032
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    4    1  |1 1>-              0.000      -0.000       2.915      -0.000      -0.000      -0.000      -1.653       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000      -0.713      -0.000      -0.000      -0.000      -2.806      -0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-             -0.000       0.000       0.000     -63.329       0.000     147.189       0.000      -0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    7    1  |1 1>-              0.713      -0.000       0.000       0.000     126.764      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    8    1  |1 1>-              0.000      63.329      -0.000       0.000       0.000      -0.000      -0.000      49.074
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 1>-              0.000      -0.000    -126.764      -0.000       0.000       0.000     -97.985       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000    -147.189       0.000       0.000      -0.000       0.000       0.000     190.013
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   11    1  |1 1>-              2.806      -0.000       0.000       0.000      97.985      -0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000      -0.000     -49.074      -0.000    -190.013      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-             -0.000       0.000      -0.000       0.006      -0.000       0.038      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

   14    1  |1 1>-              0.000      -0.026       0.000       0.000      -0.000       0.000       0.000       0.036
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   15    1  |1 1>-              4.307       0.000      -0.000       0.000      -0.011       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000      -0.002       0.000       0.000       0.000       0.008      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -124.821      -0.000       0.000       0.000      -0.000      -0.000      -0.002       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000     -82.960       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      68.297      -0.000       0.000      82.957      -0.000      -0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               77.447       0.000      -0.000      -0.000      -0.000       0.000     156.203       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -68.297       0.000       0.000       0.000       0.000     -82.852

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -14.169      -0.000       0.000      -0.000       0.000       0.000      55.738      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     256.726      -0.000       0.000       0.000      -0.000      13.772

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      13.780       0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     256.726      -0.000       0.000      13.787       0.000       0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              238.685      -0.000      -0.000       0.000      -0.000       0.000      27.306       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              176.167       0.000       0.000      -0.000      -0.000      -0.000       3.099       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -304.795       0.000       0.000       0.000      -0.000      -0.000      -0.002       0.000

    1    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       7.418      -0.000       0.000      -0.000      -0.000     166.926

    2    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -7.417      -0.000       0.000      -0.000       0.000       0.000     -83.473      -0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      83.473       0.000       0.000

    4    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -7.412       0.000       0.000    -166.926       0.000      -0.000      -0.000

    5    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       4.297      -0.000       0.000      -0.112       0.000      -0.000       0.000

    6    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.026       0.000       0.000       0.000      -0.000       2.627

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.006       0.000      -0.000      -0.000       0.000      -0.000       0.872      -0.000

    8    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.002       0.000       0.869       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.011       0.000       0.000      -2.628      -0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.008       0.000       3.241      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.038      -0.000      -0.000       0.000      -0.000       0.000       3.241       0.000

   12    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.036       0.000       0.000       0.000       0.000      -0.002

   13    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -227.285       0.000      -0.000       0.000      -0.000      -0.006

   14    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      77.200       0.000       7.411      -0.000       0.000

   15    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                              227.285       0.000       0.000      -0.000       0.000       0.000      -7.411      -0.000

   16    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -77.200       0.000       0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000     -83.474       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      83.561
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      83.474      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000     -83.561      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000     144.507      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       2.680      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       2.915
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       3.359      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       2.678       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.027       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -1.653
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       2.032       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

   13    1  |1 0>           25490.853       0.000       0.000       0.000      -0.000      -0.000      -7.417       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   14    1  |1 0>               0.000   25490.892       0.000       0.000      -7.418       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 0>               0.000       0.000   25490.891       0.000       0.000       0.000      -0.000      -7.406
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000   27285.466      -0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-             -0.000      -7.418       0.000      -0.000   10799.510       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.000       0.000       0.000       0.000       0.000   10799.520       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -7.417       0.000      -0.000       0.000       0.000       0.000   10799.521       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000      -7.406       0.000       0.000       0.000       0.000   10799.656
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000      -0.000      -4.307      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             -0.000       0.026      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000      -0.000       0.000       0.002       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-             -0.006      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.011      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-             -0.038      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000      -0.000      -0.000      -0.008       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-             -0.000      -0.036      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000    -227.285       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-            227.285       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-             -0.000       0.000       0.000     -77.200       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000      77.200       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55          56

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.002       0.000      -0.017      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      39.292       0.000       0.000       0.000      -0.029       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -31.073      -0.000      -0.000      -0.000       0.000      -0.000      24.057

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     -14.591       0.000     -29.098      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -143.733      -0.000      -0.000       0.000      31.069      -0.000      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -32.342      -0.000      24.749       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               23.826      -0.000       0.000       0.000     102.675      -0.000      -0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     129.886       0.000      -0.000      -0.000      -0.159       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     102.677      -0.000      -0.000       0.000      -0.000      -0.000     -79.571

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      90.229       0.000      50.423      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -74.775       0.000     115.542       0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.010       0.000      -0.037      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.112      -0.000      -0.000      -0.000       2.628      -0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.869       0.000      -3.241      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.872      -0.000      -0.000       0.000      -3.241      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -2.627       0.000      -0.000       0.000      -0.000      -0.000       0.002

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.002       0.000       0.000       0.000      -0.000      -0.000      -3.587

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002       0.000       0.000      -0.000     160.250       0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000    -220.244      -0.000      77.639       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     220.244      -0.000      -0.000       0.000     -77.797       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -160.250       0.000       0.000       0.000       0.000       0.000      -0.004

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -77.639      -0.000      -0.000       0.000     -60.022      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      77.797      -0.000      60.022      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.587      -0.000       0.000      -0.000       0.004       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                8.514      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.022       0.000       0.000       0.000       0.006      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.022      -0.000       0.006       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.008

    1    1  |1 0>              -0.000      -0.000       0.000      -3.359      -0.000      -0.027       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 0>            -144.507       0.000       0.000       0.000      -2.678      -0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 0>               0.000      -2.680      -0.000       0.000      -0.000      -0.000      -0.000      -2.032
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    4    1  |1 0>              -0.000       0.000      -2.915       0.000       0.000       0.000       1.653      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 0>               0.000      -0.000       0.713       0.000       0.000       0.000       2.806       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000      -0.000      63.329      -0.000    -147.189      -0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    7    1  |1 0>              -0.713       0.000       0.000      -0.000    -126.764       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    8    1  |1 0>              -0.000     -63.329       0.000       0.000      -0.000       0.000       0.000     -49.074
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    9    1  |1 0>              -0.000       0.000     126.764       0.000       0.000      -0.000      97.985      -0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   10    1  |1 0>              -0.000     147.189      -0.000      -0.000       0.000       0.000      -0.000    -190.013
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   11    1  |1 0>              -2.806       0.000      -0.000      -0.000     -97.985       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

   12    1  |1 0>              -0.000      -0.000       0.000      49.074       0.000     190.013       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000      -0.000       0.000      -0.006       0.000      -0.038       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   14    1  |1 0>              -0.000       0.026      -0.000      -0.000       0.000      -0.000      -0.000      -0.036
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

   15    1  |1 0>              -4.307      -0.000       0.000      -0.000       0.011      -0.000      -0.000      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>              -0.000      -0.000       0.002      -0.000      -0.000      -0.000      -0.008       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          10799.681       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   23125.674       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   23125.779       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   23125.781       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   23125.844       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   23126.035       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   23126.035       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   23126.056
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       57          58          59          60

    1    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000     124.820      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000      68.294      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000
                              -68.298      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      26.451      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000     -74.203       0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.001

    8    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000    -256.733       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000
                             -256.726       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000     -33.153       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000     294.695       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000     304.782      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -7.411      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000       7.411       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.006      -0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000
                               -8.514      -0.000      -0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.022      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.022      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.006      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.006      -0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.008

   13    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      77.204

   14    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000     227.281      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000    -227.281       0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000
                              -77.204       0.000       0.000      -0.000

    1    1  |1 0>               0.000       7.418      -0.000       0.000
                                0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000      -0.000      -0.000      -0.000
                               -0.000       0.000      -0.000       0.000

    3    1  |1 0>               7.417      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000

    4    1  |1 0>              -0.000      -0.000       7.406      -0.000
                                0.000       0.000       0.000      -0.000

    5    1  |1 0>              -0.000       0.000       4.307       0.000
                                0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000      -0.026       0.000       0.000
                                0.000      -0.000       0.000      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000      -0.002
                                0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.006       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000

    9    1  |1 0>              -0.000      -0.000      -0.011       0.000
                               -0.000      -0.000      -0.000       0.000

   10    1  |1 0>               0.038       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000

   11    1  |1 0>              -0.000       0.000       0.000       0.008
                               -0.000      -0.000      -0.000       0.000

   12    1  |1 0>               0.000       0.036       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000     227.285      -0.000       0.000
                                0.000       0.000       0.000      -0.000

   14    1  |1 0>            -227.285       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000

   15    1  |1 0>               0.000      -0.000       0.000      77.200
                                0.000      -0.000       0.000      -0.000

   16    1  |1 0>              -0.000      -0.000     -77.200       0.000
                               -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   13    1  |1 1>-          25490.853       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000   25490.892       0.000       0.000
                                0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000   25490.891       0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000   27285.466
                                0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -8132.65307391    -0.00000851       -1.87      0.00000000        0.00      0.0000
    2 -8132.60499984     0.04806556    10549.17      0.04807407    10551.04      1.3082
    3 -8132.60499984     0.04806556    10549.17      0.04807407    10551.04      1.3082
    4 -8132.60499979     0.04806561    10549.18      0.04807412    10551.05      1.3082
    5 -8132.60432368     0.04874173    10697.57      0.04875024    10699.44      1.3266
    6 -8132.60432362     0.04874178    10697.58      0.04875029    10699.45      1.3266
    7 -8132.60432323     0.04874217    10697.67      0.04875068    10699.54      1.3266
    8 -8132.60432317     0.04874223    10697.68      0.04875074    10699.55      1.3266
    9 -8132.60432317     0.04874224    10697.68      0.04875074    10699.55      1.3266
   10 -8132.60309852     0.04996688    10966.46      0.04997539    10968.33      1.3599
   11 -8132.60309837     0.04996704    10966.50      0.04997555    10968.36      1.3599
   12 -8132.60309836     0.04996704    10966.50      0.04997555    10968.36      1.3599
   13 -8132.60309836     0.04996704    10966.50      0.04997555    10968.37      1.3599
   14 -8132.60309824     0.04996717    10966.53      0.04997568    10968.39      1.3599
   15 -8132.60309823     0.04996717    10966.53      0.04997568    10968.39      1.3599
   16 -8132.60309818     0.04996722    10966.54      0.04997573    10968.40      1.3599
   17 -8132.59400087     0.05906453    12963.17      0.05907304    12965.03      1.6075
   18 -8132.59400086     0.05906455    12963.17      0.05907305    12965.04      1.6075
   19 -8132.59400086     0.05906455    12963.17      0.05907306    12965.04      1.6075
   20 -8132.59400085     0.05906455    12963.17      0.05907306    12965.04      1.6075
   21 -8132.59400084     0.05906456    12963.17      0.05907307    12965.04      1.6075
   22 -8132.54925106     0.10381434    22784.61      0.10382285    22786.48      2.8252
   23 -8132.54925091     0.10381449    22784.65      0.10382300    22786.52      2.8252
   24 -8132.54925052     0.10381488    22784.73      0.10382339    22786.60      2.8252
   25 -8132.54925052     0.10381488    22784.73      0.10382339    22786.60      2.8252
   26 -8132.54925042     0.10381498    22784.76      0.10382349    22786.62      2.8252
   27 -8132.54806161     0.10500379    23045.67      0.10501230    23047.54      2.8575
   28 -8132.54806161     0.10500379    23045.67      0.10501230    23047.54      2.8575
   29 -8132.54806150     0.10500390    23045.69      0.10501241    23047.56      2.8575
   30 -8132.54806093     0.10500447    23045.82      0.10501298    23047.69      2.8575
   31 -8132.54806093     0.10500447    23045.82      0.10501298    23047.69      2.8575
   32 -8132.54806081     0.10500459    23045.84      0.10501310    23047.71      2.8576
   33 -8132.54806060     0.10500481    23045.89      0.10501331    23047.76      2.8576
   34 -8132.54660151     0.10646389    23366.12      0.10647240    23367.99      2.8973
   35 -8132.54660151     0.10646389    23366.12      0.10647240    23367.99      2.8973
   36 -8132.54660141     0.10646399    23366.14      0.10647250    23368.01      2.8973
   37 -8132.54660140     0.10646401    23366.15      0.10647252    23368.02      2.8973
   38 -8132.54660099     0.10646441    23366.24      0.10647292    23368.10      2.8973
   39 -8132.54660090     0.10646450    23366.26      0.10647301    23368.12      2.8973
   40 -8132.54660046     0.10646494    23366.35      0.10647345    23368.22      2.8973
   41 -8132.54660046     0.10646494    23366.35      0.10647345    23368.22      2.8973
   42 -8132.54660027     0.10646513    23366.40      0.10647364    23368.26      2.8973
   43 -8132.54003866     0.11302674    24806.50      0.11303525    24808.37      3.0758
   44 -8132.54003844     0.11302696    24806.55      0.11303547    24808.42      3.0759
   45 -8132.54003840     0.11302700    24806.56      0.11303551    24808.43      3.0759
   46 -8132.54003835     0.11302705    24806.57      0.11303556    24808.44      3.0759
   47 -8132.54003835     0.11302705    24806.57      0.11303556    24808.44      3.0759
   48 -8132.53956651     0.11349890    24910.13      0.11350741    24912.00      3.0887
   49 -8132.53798279     0.11508262    25257.72      0.11509113    25259.58      3.1318
   50 -8132.53798278     0.11508262    25257.72      0.11509113    25259.58      3.1318
   51 -8132.53798268     0.11508273    25257.74      0.11509123    25259.61      3.1318
   52 -8132.53522816     0.11783724    25862.29      0.11784575    25864.15      3.2067
   53 -8132.53522816     0.11783725    25862.29      0.11784576    25864.15      3.2067
   54 -8132.53522807     0.11783733    25862.30      0.11784584    25864.17      3.2067
   55 -8132.53522780     0.11783761    25862.37      0.11784612    25864.23      3.2068
   56 -8132.53522733     0.11783807    25862.47      0.11784658    25864.33      3.2068
   57 -8132.52906754     0.12399786    27214.38      0.12400637    27216.25      3.3744
   58 -8132.52871689     0.12434851    27291.34      0.12435702    27293.21      3.3839
   59 -8132.52871689     0.12434851    27291.34      0.12435702    27293.21      3.3839
   60 -8132.52871689     0.12434851    27291.34      0.12435702    27293.21      3.3839

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99996268  0.00000000  0.00000000  0.00000000  0.00000005  0.00000021  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000007  0.00000000 -0.00000000 -0.09008089  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000738  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000274 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.09007713
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.01353869  0.08901363 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000267 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000006
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.08902444 -0.01353659  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000171  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00239350 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000020 -0.00000000

   9    1  |0 0>           0.00000000 -0.00000000  0.00000173 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00239715
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00136028  0.00196747 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00196401  0.00136299 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00016834  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000015 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.54782296  0.00000009 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000029
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000012 -0.00000000  0.00000000 -0.00000000  0.42754208 -0.69170877  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.54781065  0.00000000 -0.00000000 -0.40671590  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000081 -0.00000000 -0.00000000  0.00003333  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000009 -0.54740731 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.40696724
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000005 -0.31648663 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.70383581
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000232 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000010  0.00000000 -0.00000000  0.00000000  0.00003747 -0.00000636  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000197  0.00000000  0.00000000 -0.00004161 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000215  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00003259
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000014 -0.00000000 -0.00000000 -0.00000206  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000075  0.00000000 -0.00000000 -0.00000000 -0.00002148 -0.00003652 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000158 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000 -0.00045900 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00046079 -0.00000000  0.00000000  0.00105219 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000009 -0.00000000

  15    1  |1 1>+         -0.00498706  0.00000000  0.00000000 -0.00000000 -0.00103340 -0.00063841  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000000 -0.00000424 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000005 -0.00000000  0.00000000 -0.00000000  0.81281596  0.02441592  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.54778795 -0.00000009  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000029

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000009 -0.54778639 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.40677207

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00006664  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00042431 -0.00000000  0.00000000  0.81304519 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000093 -0.00000000 -0.00000000  0.00000004  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.63230022  0.00000000  0.00000000  0.00054623  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00003090  0.00000092  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000139  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000139 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00001039

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00003087 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000252  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00003859

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000252  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000087 -0.00000000 -0.00000000 -0.00000000 -0.00000143  0.00004743 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00498709  0.00000000  0.00000000 -0.00000000 -0.00003647  0.00121412 -0.00000000  0.00000000

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00045956  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00105362

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00045955  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000423 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000009  0.54782397  0.00000000 -0.00000000 -0.00000000  0.00000000  0.40670314

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000081 -0.00000000 -0.00000000  0.00003333  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.54781322 -0.00000000  0.00000000  0.40671472 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000017  0.00000000  0.00000000  0.00000000  0.38525500  0.71612026 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.54782966  0.00000009 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000029

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.31575403 -0.00000005  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000050

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000232  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00003260

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000197 -0.00000000 -0.00000000 -0.00004161  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000010  0.00000000  0.00000000  0.00000000 -0.00003704 -0.00000856  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000216 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000074 -0.00000000 -0.00000000 -0.00000000  0.00002360 -0.00003518 -0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000014 -0.00000000  0.00000000 -0.00000202 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000158  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002297

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00045900  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00105045

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00498707 -0.00000000  0.00000000 -0.00000000 -0.00106985  0.00057524 -0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000009 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00046079  0.00000000 -0.00000000 -0.00105219  0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000425 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000  0.00002067  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000039
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00002125  0.00000000 -0.00000952 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000103 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.09007658  0.00000000 -0.00000000  0.00002129 -0.00000000  0.00000904  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000778  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00239717  0.00000000 -0.00000000  0.00000095 -0.00000000  0.00000203  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00000000  0.00000367  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000091 -0.00000000  0.00000204 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.00000005  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.40670451  0.00000000 -0.00000002  0.68009373 -0.00000028 -0.26570679 -0.00000004  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.57735281  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000 -0.57408173 -0.00000002  0.00000002  0.00000000  0.00000000  0.45117832
                          -0.00000000  0.00000000 -0.00000009 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000040

   4    1  |1 1>+          0.00000029 -0.00000000  0.00000002  0.00000019  0.47243407  0.00000007 -0.55693095  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000050  0.00000000 -0.00000001 -0.00000015 -0.36487599  0.00000007 -0.51697086  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00003260  0.00000000  0.00000000 -0.00000664  0.00000000  0.00025363  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00020222  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000 -0.00009722 -0.00000000  0.00000000  0.00000000  0.00000000  0.00007853
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00024202  0.00000000 -0.00007589 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00023601  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00029828
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00015601  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00002297 -0.00000000  0.00000000 -0.00018178  0.00000000 -0.00025186 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00105045  0.00000000 -0.00000000  0.00000107 -0.00000000  0.00000164  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000 -0.00000010 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000135
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000000  0.00000024  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000002 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.57734180 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.40677226  0.00000000 -0.00000001  0.42731068 -0.00000018  0.59204422  0.00000008 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000029 -0.00000000  0.00000002  0.00000017  0.42143658 -0.00000008  0.59624143 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000009  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.57752011 -0.00000002  0.00000002  0.00000000  0.00000000  0.00356765

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000068
                           0.00000000  0.00000000  0.00509654  0.00000000 -0.00000000  0.00000000  0.00000000  0.77470631

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00025613 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00001043  0.00000000 -0.00000000  0.00027979 -0.00000000 -0.00023983 -0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00028229 -0.00000000  0.00023701 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00025605 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000181

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00014782 -0.00000000  0.00004428  0.00000000

  11    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00003858 -0.00000000  0.00000000 -0.00014852  0.00000000 -0.00004259 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000045  0.00000000 -0.00000104 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00105362  0.00000000 -0.00000000 -0.00000046  0.00000000 -0.00000104 -0.00000000  0.00000000

  16    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000003

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000029 -0.00000000  0.00000002  0.00000028  0.68268776  0.00000003 -0.25896912  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000009 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000039
                           0.00000000  0.00000000  0.58040892  0.00000002 -0.00000002 -0.00000000  0.00000000  0.44300715

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.57735603  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.40602579 -0.00000000  0.00000002 -0.46640842  0.00000019  0.56226178  0.00000008 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.70437850 -0.00000000  0.00000001 -0.37059558  0.00000015 -0.51258662 -0.00000007  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000916 -0.00000000  0.00025354 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00009810 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00007745

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00020207 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00003259  0.00000000 -0.00000000  0.00024276 -0.00000000  0.00007349  0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00015620 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00023186  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00030151

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00017928 -0.00000000  0.00025366 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000105  0.00000000 -0.00000164  0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000024 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000008 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000135

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000002 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000001  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000001  0.99588485  0.00000012 -0.00000001  0.00000001  0.00000000 -0.00632926  0.00000000
                          -0.00000000  0.00007706  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000001  0.00000002 -0.00000001  0.99588518 -0.00000000 -0.00000000 -0.00633094
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.32145489 -0.00000011  0.94258213  0.00000000 -0.00000002 -0.00113199  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000001  0.00000001 -0.00000001  0.99588523  0.00000001  0.00000000 -0.00000000  0.00000002
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.94258139 -0.00000003  0.32145431  0.00000001 -0.00000000 -0.00623973 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00014203  0.00000000 -0.00000000  0.00000000 -0.00000028
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000000  0.00014161  0.00000000 -0.00000000  0.00000000 -0.00000000  0.09975681 -0.00000000
                          -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000023  0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00014204 -0.00000000 -0.00000000 -0.09977412
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00001745  0.00000000 -0.00014104 -0.00000000  0.00000000 -0.05917013  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00014066  0.00000000 -0.00001829  0.00000000  0.00000000  0.08041681  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000002 -0.00000000  0.00000004 -0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.03677647  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.06315817 -0.00000000  0.03764328 -0.00000000 -0.00000000  0.00031230  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.03677778 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00031478 -0.00000000
                           0.00000000 -0.00000285 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.03681738 -0.00000000 -0.00000000 -0.00031334
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000 -0.06367542  0.00000000  0.00000000  0.00054036
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00316542  0.00000000 -0.00000000  0.00000000 -0.00000138
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001

   7    1  |1 1>+          0.00348668 -0.00000000  0.00094874  0.00000000 -0.00000000  0.53726125  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000  0.00400277  0.00000000 -0.00000000  0.00000000 -0.00000000  0.61411099 -0.00000000
                          -0.00000000  0.00000031  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000139  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00316511  0.00000000  0.00000000  0.48562933
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000  0.00000068  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00006556 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00005845  0.00000000 -0.00389156 -0.00000000  0.00000000 -0.29693251  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00245107  0.00000000 -0.00000000  0.00000000 -0.00000107
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00526582 -0.00000000 -0.00000000  0.00000000 -0.00000003
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00526527 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00887270 -0.00000000
                           0.00000000 -0.00000041 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000

  15    1  |1 1>+         -0.00311107  0.00000000 -0.00521605 -0.00000000  0.00000000  0.00888617  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000  0.00000015
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.06418288  0.00000000 -0.03586908 -0.00000000  0.00000000  0.00062288  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.03677726  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.03677725  0.00000000  0.00000000  0.00031527

   4    1  |1 0>           0.00000000 -0.00000569 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.07355690  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00062166  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00004957  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000041  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00276280 -0.00000000  0.00154384  0.00000000 -0.00000000  0.48550451  0.00000000 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00100582  0.00000000 -0.00000000  0.00000000 -0.00000044

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00100197  0.00000000  0.00000000  0.15354217

   9    1  |1 0>          -0.00000000  0.00000024  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000110  0.00000000
                           0.00000000 -0.00316280 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.48537019  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00387568  0.00000000  0.00000000  0.59435151

  11    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00387466  0.00000000 -0.00000000  0.00000000 -0.00000169

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00207976 -0.00000000  0.00372161  0.00000000 -0.00000000 -0.00094933 -0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00296115 -0.00000000  0.00529864  0.00000000 -0.00000000  0.00001519  0.00000000  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00526541 -0.00000000 -0.00000000 -0.00886583

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00526543 -0.00000000 -0.00000000  0.00000000 -0.00000003

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.03677665  0.00000000  0.00000000  0.00031274

   2    1  |1 1>-          0.00000000 -0.00000285 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.03677798  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00031478  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00103560  0.00000001 -0.07351727 -0.00000000  0.00000000  0.00031070 -0.00000000 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.03673207  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.06372398  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00316551 -0.00000000 -0.00000000 -0.48579144

   7    1  |1 1>-          0.00000000 -0.00000031 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000139 -0.00000000
                          -0.00000000  0.00400273  0.00000000 -0.00000000  0.00000000 -0.00000000  0.61411196 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00263841  0.00000000 -0.00247047 -0.00000000  0.00000000 -0.53716027 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00316508  0.00000000 -0.00000000  0.00000000 -0.00000138

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00334250  0.00000000 -0.00199191  0.00000000  0.00000000  0.29792245  0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000326 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00067025  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00245092  0.00000000  0.00000000  0.37575139

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00526581  0.00000000  0.00000000  0.00886929

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00607283 -0.00000000  0.00008360 -0.00000000 -0.00000000  0.00890130  0.00000000  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000041 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000
                          -0.00000000  0.00526529  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00887267  0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00000000 -0.00000017 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000075
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000002 -0.00000000 -0.00000000 -0.00000149  0.00000000  0.00000000 -0.00000163  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00625349 -0.00000000 -0.00000000 -0.00000020  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00633093 -0.00000000 -0.00000150 -0.00000000 -0.00000000 -0.00000162 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00113457 -0.00000000 -0.00000000 -0.00000121 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.09977414  0.00000000  0.00001984 -0.00000000 -0.00000000  0.00007326  0.00000000 -0.00000000
                          -0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000599
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000028 -0.00000000  0.00000000 -0.00002005 -0.00000000  0.00000000 -0.00007294  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.08055895  0.00000000 -0.00000000 -0.00000410  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.05927531  0.00000000 -0.00000000  0.00000518 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.00000254  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00031274 -0.00000000 -0.00026687  0.00000000 -0.00000000  0.00017543  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00053953  0.00000000  0.00000000  0.00025581  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00025295
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00031753 -0.00000000  0.00000000 -0.00002741 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00009101  0.00000000 -0.00000000  0.00026424 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.48577324  0.00000000 -0.48342295  0.00000000  0.00000000 -0.31556939 -0.00000033  0.00000000
                          -0.00000013 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000009  0.00000001 -0.00000000

   7    1  |1 1>+          0.00000000 -0.13273660 -0.00000000 -0.00000000 -0.45672741 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.22735108
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000034

   9    1  |1 1>+          0.00000138  0.00000000  0.00000000  0.18451127 -0.00000000  0.00000057 -0.54685919  0.00000000
                           0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.53350845
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000081

  11    1  |1 1>+          0.00000000 -0.51521007 -0.00000000 -0.00000000 -0.35288559 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.37577493  0.00000000  0.23122148 -0.00000000 -0.00000000  0.66825129  0.00000070 -0.00000000
                          -0.00000010 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000020 -0.00000003  0.00000000

  13    1  |1 1>+          0.00886930  0.00000000  0.00000159 -0.00000000 -0.00000000  0.00000273  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000493
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000  0.00516231 -0.00000000  0.00000000  0.00000335  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000101  0.00000000  0.00000000 -0.00000062 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000092 -0.00000000 -0.00000000 -0.00025533 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00031527 -0.00000000  0.00010512 -0.00000000 -0.00000000  0.00030353  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00010531  0.00000000  0.00000000 -0.00030347  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00025522

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000149

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00070130  0.00000000  0.00000000  0.57770608  0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>           0.00000004  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000006 -0.00000001 -0.00000000
                           0.15412956  0.00000000  0.81592737 -0.00000000 -0.00000000 -0.20570565 -0.00000022  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000
                           0.00000044  0.00000000  0.00000000  0.81591315 -0.00000000  0.00000022 -0.20653242  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000088
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.57764184

  10    1  |1 0>          -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000
                           0.00000169  0.00000000 -0.00000000 -0.11272164  0.00000000 -0.00000035  0.33543864 -0.00000000

  11    1  |1 0>           0.00000015  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000010  0.00000001 -0.00000000
                           0.59419939  0.00000000 -0.11373050  0.00000000 -0.00000000  0.33557301  0.00000035 -0.00000000

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.65127348  0.00000000 -0.00000000  0.00001336 -0.00000000 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.01029673 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000003 -0.00000000 -0.00000000 -0.00000286  0.00000000  0.00000000 -0.00000345 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00886581  0.00000000  0.00000284  0.00000000  0.00000000  0.00000347  0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00026676 -0.00000000  0.00000000 -0.00017559  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00025487

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00054045  0.00000000  0.00000000  0.00025581  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00031262 -0.00000000  0.00031767 -0.00000000 -0.00000000 -0.00002686 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00054078 -0.00000000 -0.00009042  0.00000000  0.00000000 -0.00026433 -0.00000000  0.00000000

   6    1  |1 1>-          0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000
                          -0.00000138 -0.00000000  0.00000000  0.48360353 -0.00000000 -0.00000033  0.31524349 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000035
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.22856190

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.13381405  0.00000000  0.00000000  0.45637749  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000013  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000016 -0.00000002  0.00000000
                           0.48562940  0.00000000  0.18484206 -0.00000000  0.00000000 -0.54674666 -0.00000057  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.51446323  0.00000000  0.00000000  0.35333682  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000080
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.52703832

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000
                           0.00000107  0.00000000  0.00000000  0.23165189  0.00000000 -0.00000070  0.66812548 -0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000003  0.00000000  0.00000000  0.00000158 -0.00000000 -0.00000000  0.00000270  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00513601  0.00000000 -0.00000000  0.00000333  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000494

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000015 -0.00000000  0.00000101 -0.00000000 -0.00000000  0.00000062  0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000032 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000193 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000061
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000180  0.00000000  0.00000176  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000009 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000032 -0.00000000  0.00000947  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00002114  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000009  0.00000000 -0.00000000  0.00000000 -0.00000038 -0.00000000 -0.00001575 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00002169 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001790
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00001048 -0.00000000  0.00008045 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000770  0.00000000 -0.00010856 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000652  0.00000000  0.00000017  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000106  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000180 -0.00000000  0.00000136  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00019766 -0.00000000  0.00000000  0.00000000  0.00000166 -0.00000000 -0.00000088  0.00000000
                           0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000 -0.00000081  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000240
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00000053 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000193
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.60936809 -0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.69375965 -0.00000000 -0.00000704 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.17803191  0.00000000 -0.00000000 -0.00000000 -0.68396397 -0.00000000  0.26040444  0.00000000
                          -0.00000627  0.00000000 -0.00000000 -0.00000000  0.00012353 -0.00000000  0.00000888 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000004  0.61506284  0.00000000 -0.00000000  0.00000000  0.00000000 -0.22437933
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.68201591 -0.00000000  0.00000000  0.00000000  0.17809474 -0.00000000  0.46744533  0.00000000
                          -0.00002400 -0.00000000 -0.00000000 -0.00000000 -0.00003216 -0.00000000  0.00001594 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.11720397  0.00000000  0.53453337  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00731294  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000116 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00000013  0.00000000  0.00000000  0.00000000 -0.00000858 -0.00000000 -0.00000606  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000703  0.00000000 -0.00000911 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000  0.00000056  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000321
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000189  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000186

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000102 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000297  0.00000000

   5    1  |1 0>          -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00033894 -0.00000000 -0.00000000 -0.00000000 -0.00000133  0.00000000  0.00000001 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00061260 -0.00000000  0.65431431  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.48621686 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000003 -0.48616425 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.17736250

   9    1  |1 0>           0.00000010  0.00000000  0.00000000  0.00000000  0.00000030  0.00000000 -0.00002231  0.00000000
                          -0.00282434  0.00000000 -0.00000000  0.00000000  0.00164767 -0.00000000  0.65446051  0.00000000

  10    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000001  0.11700658  0.00000000 -0.00000000 -0.00000000  0.00000000  0.71007225

  11    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.11680987  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.09840688 -0.00000000 -0.00056810  0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000445 -0.00000000 -0.00000002 -0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000662  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001802

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000656  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000232  0.00000000  0.00000000  0.00000000 -0.00000170  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000106 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000198

   2    1  |1 1>-         -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00019518  0.00000000  0.00000000  0.00000000  0.00000166 -0.00000000  0.00000087  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000180  0.00000000  0.00000137  0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000081 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000053 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000004  0.60959463  0.00000000 -0.00000000 -0.00000000  0.00000000  0.23819028

   7    1  |1 1>-         -0.00000621  0.00000000  0.00000000 -0.00000000  0.00012373  0.00000000 -0.00000878  0.00000000
                           0.17647643 -0.00000000  0.00000000  0.00000000  0.68509169 -0.00000000  0.25741958 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.69387657 -0.00000000 -0.00080278 -0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.61527691  0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.11752358  0.00000000 -0.53492604 -0.00000000 -0.00000000

  11    1  |1 1>-         -0.00002418  0.00000000  0.00000000  0.00000000 -0.00003186  0.00000000 -0.00001596  0.00000000
                           0.68702754  0.00000000 -0.00000000 -0.00000000 -0.17641483 -0.00000000  0.46808224  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00677241 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.59771167

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000123 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001311

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000702  0.00000000 -0.00000901  0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000009  0.00000000  0.00000000 -0.00000000 -0.00000850 -0.00000000  0.00000611 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000056 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>           0.00000000  0.00000169  0.00000068  0.00000003  0.00000000 -0.00000000  0.00000000 -0.00843411
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00347598 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00002170  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00347637 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000132 -0.00340626  0.00069578 -0.00000000 -0.00000000  0.00000000 -0.00000076
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000060 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00347638  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000025  0.00069597  0.00340504  0.00000000 -0.00000000 -0.00000000  0.00000018
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00001788  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000114  0.92474252  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000 -0.00000001 -0.00000002  0.92472667 -0.00000001 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00577175  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000001  0.92474266  0.00000114 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000187  0.73247513 -0.56434413 -0.00000001  0.00000001 -0.00000000  0.00006363
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.00000148  0.56430455  0.73253247  0.00000002 -0.00000001 -0.00000000  0.00005359
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00002222 -0.00001954 -0.00000091 -0.00000000  0.00000000 -0.00000000  0.23573552
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000198  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00100877  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000109  0.00176298  0.00096827  0.00000000 -0.00000000 -0.00000000 -0.00000011
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00100803 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000629  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00100984  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00174180 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.23874174 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006 -0.04748494  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.02613542 -0.01417262 -0.05230829 -0.00000000  0.00000000  0.00000000 -0.00000859
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.06007908  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00037499 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.04749526  0.00000006  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001641 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000010 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000  0.46770948 -0.04988816  0.03025924  0.00000000 -0.00000000  0.00000000  0.00001736
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.59771635 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000005 -0.03681131 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00001310 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000032  0.26015968 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000001  0.26014282 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00162370  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000  0.00002204 -0.14483716  0.26323771  0.00000000 -0.00000000 -0.00000000 -0.56106077
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000150  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00004139  0.00200860  0.00000000 -0.00000000 -0.00000000  0.00000001

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000186  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00100832 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00100830 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001255  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00200991  0.00000000  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000134  0.00000000 -0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00041082 -0.00097957 -0.04745253 -0.00000000  0.00000000  0.00000000 -0.00000030

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.17759884  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.01507623  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.01501865  0.00000002  0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00029646 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.04749713 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000  0.05819535  0.00000007  0.00000000

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.71000889  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000007 -0.05818051 -0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.74952311  0.06388019 -0.00131782  0.00000000  0.00000000 -0.00000000  0.00003726

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00002433  0.30053305 -0.00619187  0.00000000  0.00000000 -0.00000000 -0.56104969

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.26013850  0.00000032 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00001803  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000032  0.26013867  0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00100876 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000629  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00100805  0.00000000  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000109 -0.00172157  0.00104010  0.00000000 -0.00000000  0.00000000  0.00000012

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000240  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00100750 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000193 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00174316 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.04748641 -0.00000006  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00037499  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.06007868  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.02567417 -0.01195463  0.05287529  0.00000000 -0.00000000 -0.00000000 -0.00000803

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.22379360 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006 -0.04749475 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.46703378 -0.05110396 -0.02812580 -0.00000000  0.00000000  0.00000000  0.00001715

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000047 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00007554 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.03680883  0.00000005  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.26015936 -0.00000032 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00002203  0.15555906  0.25703930  0.00000001 -0.00000000 -0.00000000  0.56106299

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00162370  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000001 -0.26014278  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000321  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000152  0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55          56

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000017
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00683002 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000074  0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000025 -0.00000000 -0.00000001 -0.00683033 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00121250 -0.00670935
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000023 -0.00000000 -0.00000000  0.00683035 -0.00000001  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00671452  0.00121155
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00002489  0.00000000  0.00000000 -0.36727457  0.00000045 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000  0.00000045  0.00000000  0.00000000 -0.36727388  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00003982 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00002527  0.00000000 -0.00000045 -0.36727424 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.21746278 -0.29615744
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.29605408 -0.21753701
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006  0.00000103
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00035613 -0.00000000 -0.00000000  0.00004670 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00004567 -0.00007963
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00035574  0.00000000  0.00000000 -0.00004684  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000037  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00035555 -0.00000000 -0.00000000 -0.00004719 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00020235 -0.00000000  0.00000000  0.00008078  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000831  0.00000000  0.00000000  0.01227086 -0.00000002  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.01358652  0.00334635
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000 -0.00000831 -0.00000000 -0.00000000  0.01552214 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000168  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000282 -0.00000000 -0.00000002 -0.01226837 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000  0.00000234  0.00000000  0.00000000 -0.00000525  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00751599  0.01305610
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00001279  0.00000000  0.00000000  0.00951586 -0.00000001  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.70609942 -0.00000020 -0.00000000  0.65740967 -0.00000081  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000  0.70608268 -0.00000000 -0.00000000  0.65743192 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00072619 -0.00000000  0.00000000 -0.00007128  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.65653918 -0.38105668
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000002 -0.05376491  0.00000000 -0.00000000 -0.00000104 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00009030  0.00000021

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00035605  0.00000000  0.00000000  0.00004666 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00035605 -0.00000000  0.00000000  0.00004665  0.00000000  0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000028 -0.00000000 -0.00000000  0.00009152 -0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000042 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00041307  0.00000000  0.00000000  0.00000006  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.01224829 -0.00002776

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000260 -0.00000000  0.00000000  0.00389530 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000262  0.00000000 -0.00000000 -0.00388045 -0.00000000 -0.00000000  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000133  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000 -0.01225959  0.00000000  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00001614  0.00000000 -0.00000002 -0.01503806 -0.00000000 -0.00000000  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00001610 -0.00000000 -0.00000000  0.01503423 -0.00000002  0.00000000 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00003752 -0.01649939

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00174237  0.75905801

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000020  0.70606746 -0.00000000  0.00000081  0.65745248  0.00000000  0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.70606836  0.00000020  0.00000000  0.65745145 -0.00000081  0.00000000 -0.00000000  0.00000000

  16    1  |1 0>          -0.00000000  0.00000000 -0.00005530  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.05376425  0.00000000 -0.00000000  0.00000009 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00035613  0.00000000  0.00000000  0.00004670  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000037  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00035574 -0.00000000 -0.00000000  0.00004685 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00004531  0.00007983

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00035581 -0.00000000 -0.00000000  0.00004708 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00020187  0.00000000  0.00000000  0.00008084 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000828 -0.00000000  0.00000002  0.01227122  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000168 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000823 -0.00000000 -0.00000000  0.01552203 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.01357841  0.00339584

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000283  0.00000000 -0.00000000  0.01226828 -0.00000002  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00756236  0.01302465

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000235  0.00000000  0.00000000 -0.00002052  0.00000000  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00001277  0.00000000 -0.00000001 -0.00951520 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000020  0.70610031 -0.00000000 -0.00000081 -0.65740883 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.65828258  0.37803915

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00072619 -0.00000000  0.00000000 -0.00007128  0.00000000  0.00000000
                           0.00000000  0.00000000  0.70608440  0.00000000  0.00000000 -0.65743009  0.00000000  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.05376489 -0.00000002 -0.00000000 -0.00000095  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     57          58          59          60

   1    1  |0 0>           0.00187266 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000002  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000011  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000002 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000002  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.00000040  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000001 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000040
                          -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000070 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000060  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.97181723 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00001684  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000005  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00001684 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00001682
                           0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000957
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000018 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000195 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000031  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000008
                           0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000177 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000752 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.00000176  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.03801812  0.00000008
                           0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.03801710  0.00000000 -0.00000000
                           0.00000000  0.00000037  0.00000000 -0.00000000

  15    1  |1 1>+          0.13609619  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000000 -0.00000002  0.00000201  0.99855362
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00001683 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00001683

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000001 -0.00000000  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00001954  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000008 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000049  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000049

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000157

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000157 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000704 -0.00000000 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.13610099 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000008  0.03801694

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.03801690 -0.00000008

  16    1  |1 0>           0.00000000  0.00000961  0.00000000 -0.00000000
                           0.00000000  0.99855366 -0.00000001  0.00000002

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00001685

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00001684 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000005  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00001683  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000955 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000018

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000031 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000199 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000008 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000768 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000177  0.00000000  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000176

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000008  0.03801812

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.13609594  0.00000000  0.00000000  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000037 -0.00000000  0.00000000
                           0.00000000 -0.03801706  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000001  0.99855362 -0.00000201


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -8132.65307391     -0.00000851       -1.87      0.00000000        0.00      0.0000
     2   1  -8132.60499984      0.04806556    10549.17      0.04807407    10551.04      1.3082
     3   1  -8132.60499984      0.04806556    10549.17      0.04807407    10551.04      1.3082
     4   1  -8132.60499979      0.04806561    10549.18      0.04807412    10551.05      1.3082
     5   1  -8132.60432368      0.04874173    10697.57      0.04875024    10699.44      1.3266
     6   1  -8132.60432362      0.04874178    10697.58      0.04875029    10699.45      1.3266
     7   1  -8132.60432323      0.04874217    10697.67      0.04875068    10699.54      1.3266
     8   1  -8132.60432317      0.04874223    10697.68      0.04875074    10699.55      1.3266
     9   1  -8132.60432317      0.04874224    10697.68      0.04875074    10699.55      1.3266
    10   1  -8132.60309852      0.04996688    10966.46      0.04997539    10968.33      1.3599
    11   1  -8132.60309837      0.04996704    10966.50      0.04997555    10968.36      1.3599
    12   1  -8132.60309836      0.04996704    10966.50      0.04997555    10968.36      1.3599
    13   1  -8132.60309836      0.04996704    10966.50      0.04997555    10968.37      1.3599
    14   1  -8132.60309824      0.04996717    10966.53      0.04997568    10968.39      1.3599
    15   1  -8132.60309823      0.04996717    10966.53      0.04997568    10968.39      1.3599
    16   1  -8132.60309818      0.04996722    10966.54      0.04997573    10968.40      1.3599
    17   1  -8132.59400087      0.05906453    12963.17      0.05907304    12965.03      1.6075
    18   1  -8132.59400086      0.05906455    12963.17      0.05907305    12965.04      1.6075
    19   1  -8132.59400086      0.05906455    12963.17      0.05907306    12965.04      1.6075
    20   1  -8132.59400085      0.05906455    12963.17      0.05907306    12965.04      1.6075
    21   1  -8132.59400084      0.05906456    12963.17      0.05907307    12965.04      1.6075
    22   1  -8132.54925106      0.10381434    22784.61      0.10382285    22786.48      2.8252
    23   1  -8132.54925091      0.10381449    22784.65      0.10382300    22786.52      2.8252
    24   1  -8132.54925052      0.10381488    22784.73      0.10382339    22786.60      2.8252
    25   1  -8132.54925052      0.10381488    22784.73      0.10382339    22786.60      2.8252
    26   1  -8132.54925042      0.10381498    22784.76      0.10382349    22786.62      2.8252
    27   1  -8132.54806161      0.10500379    23045.67      0.10501230    23047.54      2.8575
    28   1  -8132.54806161      0.10500379    23045.67      0.10501230    23047.54      2.8575
    29   1  -8132.54806150      0.10500390    23045.69      0.10501241    23047.56      2.8575
    30   1  -8132.54806093      0.10500447    23045.82      0.10501298    23047.69      2.8575
    31   1  -8132.54806093      0.10500447    23045.82      0.10501298    23047.69      2.8575
    32   1  -8132.54806081      0.10500459    23045.84      0.10501310    23047.71      2.8576
    33   1  -8132.54806060      0.10500481    23045.89      0.10501331    23047.76      2.8576
    34   1  -8132.54660151      0.10646389    23366.12      0.10647240    23367.99      2.8973
    35   1  -8132.54660151      0.10646389    23366.12      0.10647240    23367.99      2.8973
    36   1  -8132.54660141      0.10646399    23366.14      0.10647250    23368.01      2.8973
    37   1  -8132.54660140      0.10646401    23366.15      0.10647252    23368.02      2.8973
    38   1  -8132.54660099      0.10646441    23366.24      0.10647292    23368.10      2.8973
    39   1  -8132.54660090      0.10646450    23366.26      0.10647301    23368.12      2.8973
    40   1  -8132.54660046      0.10646494    23366.35      0.10647345    23368.22      2.8973
    41   1  -8132.54660046      0.10646494    23366.35      0.10647345    23368.22      2.8973
    42   1  -8132.54660027      0.10646513    23366.40      0.10647364    23368.26      2.8973
    43   1  -8132.54003866      0.11302674    24806.50      0.11303525    24808.37      3.0758
    44   1  -8132.54003844      0.11302696    24806.55      0.11303547    24808.42      3.0759
    45   1  -8132.54003840      0.11302700    24806.56      0.11303551    24808.43      3.0759
    46   1  -8132.54003835      0.11302705    24806.57      0.11303556    24808.44      3.0759
    47   1  -8132.54003835      0.11302705    24806.57      0.11303556    24808.44      3.0759
    48   1  -8132.53956651      0.11349890    24910.13      0.11350741    24912.00      3.0887
    49   1  -8132.53798279      0.11508262    25257.72      0.11509113    25259.58      3.1318
    50   1  -8132.53798278      0.11508262    25257.72      0.11509113    25259.58      3.1318
    51   1  -8132.53798268      0.11508273    25257.74      0.11509123    25259.61      3.1318
    52   1  -8132.53522816      0.11783724    25862.29      0.11784575    25864.15      3.2067
    53   1  -8132.53522816      0.11783725    25862.29      0.11784576    25864.15      3.2067
    54   1  -8132.53522807      0.11783733    25862.30      0.11784584    25864.17      3.2067
    55   1  -8132.53522780      0.11783761    25862.37      0.11784612    25864.23      3.2068
    56   1  -8132.53522733      0.11783807    25862.47      0.11784658    25864.33      3.2068
    57   1  -8132.52906754      0.12399786    27214.38      0.12400637    27216.25      3.3744
    58   1  -8132.52871689      0.12434851    27291.34      0.12435702    27293.21      3.3839
    59   1  -8132.52871689      0.12434851    27291.34      0.12435702    27293.21      3.3839
    60   1  -8132.52871689      0.12434851    27291.34      0.12435702    27293.21      3.3839

 E0 =  -8132.65306540 is the energy of the lowest zeroth-order state
 E1 =  -8132.65307391 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99996268  0.00000000  0.00000000  0.00000000  0.00000005  0.00000021  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000007  0.00000000 -0.00000000 -0.09008089  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000738  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000274 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.09007713
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.01353869  0.08901363 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000267 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000006
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.08902444 -0.01353659  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000171  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00239350 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000020 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000000  0.00000173 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00239715
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00136028  0.00196747 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00196401  0.00136299 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00016834  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000015 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.54782296  0.00000009 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000029
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000012 -0.00000000  0.00000000 -0.00000000  0.42754208 -0.69170877  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.54781065  0.00000000 -0.00000000 -0.40671590  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000081 -0.00000000 -0.00000000  0.00003333  0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.00000009 -0.54740731 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.40696724
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00000005 -0.31648663 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.70383581
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.00000232 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+       0.00000010  0.00000000 -0.00000000  0.00000000  0.00003747 -0.00000636  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000197  0.00000000  0.00000000 -0.00004161 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000215  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00003259
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000014 -0.00000000 -0.00000000 -0.00000206  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000075  0.00000000 -0.00000000 -0.00000000 -0.00002148 -0.00003652 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000158 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000 -0.00045900 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00046079 -0.00000000  0.00000000  0.00105219 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000009 -0.00000000

 27  1    15    1  |1 1>+      -0.00498706  0.00000000  0.00000000 -0.00000000 -0.00103340 -0.00063841  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000 -0.00000424 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000005 -0.00000000  0.00000000 -0.00000000  0.81281596  0.02441592  0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.54778795 -0.00000009  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000029

 31  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000009 -0.54778639 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.40677207

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00006664  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00042431 -0.00000000  0.00000000  0.81304519 -0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000093 -0.00000000 -0.00000000  0.00000004  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.63230022  0.00000000  0.00000000  0.00054623  0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00003090  0.00000092  0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000139  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000139 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00001039

 37  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00003087 -0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000252  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00003859

 39  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000252  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000087 -0.00000000 -0.00000000 -0.00000000 -0.00000143  0.00004743 -0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00498709  0.00000000  0.00000000 -0.00000000 -0.00003647  0.00121412 -0.00000000  0.00000000

 42  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00045956  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00105362

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00045955  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000423 -0.00000000  0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000009  0.54782397  0.00000000 -0.00000000 -0.00000000  0.00000000  0.40670314

 46  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000081 -0.00000000 -0.00000000  0.00003333  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.54781322 -0.00000000  0.00000000  0.40671472 -0.00000000

 47  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000017  0.00000000  0.00000000  0.00000000  0.38525500  0.71612026 -0.00000000  0.00000000

 48  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.54782966  0.00000009 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000029

 49  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.31575403 -0.00000005  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000050

 50  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000232  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00003260

 51  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000197 -0.00000000 -0.00000000 -0.00004161  0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000010  0.00000000  0.00000000  0.00000000 -0.00003704 -0.00000856  0.00000000 -0.00000000

 53  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000216 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000074 -0.00000000 -0.00000000 -0.00000000  0.00002360 -0.00003518 -0.00000000 -0.00000000

 55  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000014 -0.00000000  0.00000000 -0.00000202 -0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000158  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002297

 57  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00045900  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00105045

 58  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00498707 -0.00000000  0.00000000 -0.00000000 -0.00106985  0.00057524 -0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000009 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00046079  0.00000000 -0.00000000 -0.00105219  0.00000000

 60  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000425 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000  0.00002067  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000039
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00002125  0.00000000 -0.00000952 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000103 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.09007658  0.00000000 -0.00000000  0.00002129 -0.00000000  0.00000904  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000778  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00239717  0.00000000 -0.00000000  0.00000095 -0.00000000  0.00000203  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000000  0.00000367  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000091 -0.00000000  0.00000204 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000005  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.40670451  0.00000000 -0.00000002  0.68009373 -0.00000028 -0.26570679 -0.00000004  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000  0.57735281  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.57408173 -0.00000002  0.00000002  0.00000000  0.00000000  0.45117832
                               -0.00000000  0.00000000 -0.00000009 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000040

 16  1     4    1  |1 1>+       0.00000029 -0.00000000  0.00000002  0.00000019  0.47243407  0.00000007 -0.55693095  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000050  0.00000000 -0.00000001 -0.00000015 -0.36487599  0.00000007 -0.51697086  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00003260  0.00000000  0.00000000 -0.00000664  0.00000000  0.00025363  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00020222  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.00009722 -0.00000000  0.00000000  0.00000000  0.00000000  0.00007853
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00024202  0.00000000 -0.00007589 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000  0.00023601  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00029828
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.00015601  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00002297 -0.00000000  0.00000000 -0.00018178  0.00000000 -0.00025186 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00105045  0.00000000 -0.00000000  0.00000107 -0.00000000  0.00000164  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000 -0.00000000 -0.00000010 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000135
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000  0.00000024  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000002 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.57734180 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.40677226  0.00000000 -0.00000001  0.42731068 -0.00000018  0.59204422  0.00000008 -0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000029 -0.00000000  0.00000002  0.00000017  0.42143658 -0.00000008  0.59624143 -0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000009  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.57752011 -0.00000002  0.00000002  0.00000000  0.00000000  0.00356765

 33  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000068
                                0.00000000  0.00000000  0.00509654  0.00000000 -0.00000000  0.00000000  0.00000000  0.77470631

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00025613 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00001043  0.00000000 -0.00000000  0.00027979 -0.00000000 -0.00023983 -0.00000000  0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00028229 -0.00000000  0.00023701 -0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00025605 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000181

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00014782 -0.00000000  0.00004428  0.00000000

 39  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00003858 -0.00000000  0.00000000 -0.00014852  0.00000000 -0.00004259 -0.00000000 -0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 41  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000045  0.00000000 -0.00000104 -0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00105362  0.00000000 -0.00000000 -0.00000046  0.00000000 -0.00000104 -0.00000000  0.00000000

 44  1    16    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000003

 45  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000029 -0.00000000  0.00000002  0.00000028  0.68268776  0.00000003 -0.25896912  0.00000000

 46  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000009 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000039
                                0.00000000  0.00000000  0.58040892  0.00000002 -0.00000002 -0.00000000  0.00000000  0.44300715

 47  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.57735603  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.40602579 -0.00000000  0.00000002 -0.46640842  0.00000019  0.56226178  0.00000008 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.70437850 -0.00000000  0.00000001 -0.37059558  0.00000015 -0.51258662 -0.00000007  0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000916 -0.00000000  0.00025354 -0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00009810 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00007745

 52  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00020207 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00003259  0.00000000 -0.00000000  0.00024276 -0.00000000  0.00007349  0.00000000 -0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00015620 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 55  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00023186  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00030151

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00017928 -0.00000000  0.00025366 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000105  0.00000000 -0.00000164  0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000024 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000008 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000135

 60  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000002 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000001  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000001  0.99588485  0.00000012 -0.00000001  0.00000001  0.00000000 -0.00632926  0.00000000
                               -0.00000000  0.00007706  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000001  0.00000002 -0.00000001  0.99588518 -0.00000000 -0.00000000 -0.00633094
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.32145489 -0.00000011  0.94258213  0.00000000 -0.00000002 -0.00113199  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000001  0.00000001 -0.00000001  0.99588523  0.00000001  0.00000000 -0.00000000  0.00000002
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.94258139 -0.00000003  0.32145431  0.00000001 -0.00000000 -0.00623973 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00014203  0.00000000 -0.00000000  0.00000000 -0.00000028
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00014161  0.00000000 -0.00000000  0.00000000 -0.00000000  0.09975681 -0.00000000
                               -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000023  0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00014204 -0.00000000 -0.00000000 -0.09977412
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00001745  0.00000000 -0.00014104 -0.00000000  0.00000000 -0.05917013  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00014066  0.00000000 -0.00001829  0.00000000  0.00000000  0.08041681  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000002 -0.00000000  0.00000004 -0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.03677647  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.06315817 -0.00000000  0.03764328 -0.00000000 -0.00000000  0.00031230  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.03677778 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00031478 -0.00000000
                                0.00000000 -0.00000285 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.03681738 -0.00000000 -0.00000000 -0.00031334
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000 -0.06367542  0.00000000  0.00000000  0.00054036
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00316542  0.00000000 -0.00000000  0.00000000 -0.00000138
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001

 19  1     7    1  |1 1>+       0.00348668 -0.00000000  0.00094874  0.00000000 -0.00000000  0.53726125  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.00400277  0.00000000 -0.00000000  0.00000000 -0.00000000  0.61411099 -0.00000000
                               -0.00000000  0.00000031  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000139  0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00316511  0.00000000  0.00000000  0.48562933
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.00000068  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00006556 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00005845  0.00000000 -0.00389156 -0.00000000  0.00000000 -0.29693251  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00245107  0.00000000 -0.00000000  0.00000000 -0.00000107
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00526582 -0.00000000 -0.00000000  0.00000000 -0.00000003
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000 -0.00526527 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00887270 -0.00000000
                                0.00000000 -0.00000041 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000

 27  1    15    1  |1 1>+      -0.00311107  0.00000000 -0.00521605 -0.00000000  0.00000000  0.00888617  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000  0.00000015
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.06418288  0.00000000 -0.03586908 -0.00000000  0.00000000  0.00062288  0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.03677726  0.00000000  0.00000000 -0.00000000  0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.03677725  0.00000000  0.00000000  0.00031527

 32  1     4    1  |1 0>        0.00000000 -0.00000569 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.07355690  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00062166  0.00000000

 33  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00004957  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000041  0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00276280 -0.00000000  0.00154384  0.00000000 -0.00000000  0.48550451  0.00000000 -0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00100582  0.00000000 -0.00000000  0.00000000 -0.00000044

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00100197  0.00000000  0.00000000  0.15354217

 37  1     9    1  |1 0>       -0.00000000  0.00000024  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000110  0.00000000
                                0.00000000 -0.00316280 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.48537019  0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00387568  0.00000000  0.00000000  0.59435151

 39  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00387466  0.00000000 -0.00000000  0.00000000 -0.00000169

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00207976 -0.00000000  0.00372161  0.00000000 -0.00000000 -0.00094933 -0.00000000 -0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00296115 -0.00000000  0.00529864  0.00000000 -0.00000000  0.00001519  0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00526541 -0.00000000 -0.00000000 -0.00886583

 43  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00526543 -0.00000000 -0.00000000  0.00000000 -0.00000003

 44  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.03677665  0.00000000  0.00000000  0.00031274

 46  1     2    1  |1 1>-       0.00000000 -0.00000285 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.03677798  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00031478  0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00103560  0.00000001 -0.07351727 -0.00000000  0.00000000  0.00031070 -0.00000000 -0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.03673207  0.00000000  0.00000000 -0.00000000  0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.06372398  0.00000000  0.00000000 -0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00316551 -0.00000000 -0.00000000 -0.48579144

 51  1     7    1  |1 1>-       0.00000000 -0.00000031 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000139 -0.00000000
                               -0.00000000  0.00400273  0.00000000 -0.00000000  0.00000000 -0.00000000  0.61411196 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00263841  0.00000000 -0.00247047 -0.00000000  0.00000000 -0.53716027 -0.00000000  0.00000000

 53  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00316508  0.00000000 -0.00000000  0.00000000 -0.00000138

 54  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00334250  0.00000000 -0.00199191  0.00000000  0.00000000  0.29792245  0.00000000  0.00000000

 55  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000326 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00067025  0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00245092  0.00000000  0.00000000  0.37575139

 57  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00526581  0.00000000  0.00000000  0.00886929

 58  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00607283 -0.00000000  0.00008360 -0.00000000 -0.00000000  0.00890130  0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000041 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000
                               -0.00000000  0.00526529  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00887267  0.00000000

 60  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00000000 -0.00000017 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000075
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000002 -0.00000000 -0.00000000 -0.00000149  0.00000000  0.00000000 -0.00000163  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00625349 -0.00000000 -0.00000000 -0.00000020  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00633093 -0.00000000 -0.00000150 -0.00000000 -0.00000000 -0.00000162 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00113457 -0.00000000 -0.00000000 -0.00000121 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.09977414  0.00000000  0.00001984 -0.00000000 -0.00000000  0.00007326  0.00000000 -0.00000000
                               -0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000599
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000028 -0.00000000  0.00000000 -0.00002005 -0.00000000  0.00000000 -0.00007294  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.08055895  0.00000000 -0.00000000 -0.00000410  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.05927531  0.00000000 -0.00000000  0.00000518 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000254  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00031274 -0.00000000 -0.00026687  0.00000000 -0.00000000  0.00017543  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00053953  0.00000000  0.00000000  0.00025581  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00025295
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00031753 -0.00000000  0.00000000 -0.00002741 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00009101  0.00000000 -0.00000000  0.00026424 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.48577324  0.00000000 -0.48342295  0.00000000  0.00000000 -0.31556939 -0.00000033  0.00000000
                               -0.00000013 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000009  0.00000001 -0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.13273660 -0.00000000 -0.00000000 -0.45672741 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.22735108
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000034

 21  1     9    1  |1 1>+       0.00000138  0.00000000  0.00000000  0.18451127 -0.00000000  0.00000057 -0.54685919  0.00000000
                                0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.53350845
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000081

 23  1    11    1  |1 1>+       0.00000000 -0.51521007 -0.00000000 -0.00000000 -0.35288559 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.37577493  0.00000000  0.23122148 -0.00000000 -0.00000000  0.66825129  0.00000070 -0.00000000
                               -0.00000010 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000020 -0.00000003  0.00000000

 25  1    13    1  |1 1>+       0.00886930  0.00000000  0.00000159 -0.00000000 -0.00000000  0.00000273  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000493
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00516231 -0.00000000  0.00000000  0.00000335  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000101  0.00000000  0.00000000 -0.00000062 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000092 -0.00000000 -0.00000000 -0.00025533 -0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00031527 -0.00000000  0.00010512 -0.00000000 -0.00000000  0.00030353  0.00000000 -0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00010531  0.00000000  0.00000000 -0.00030347  0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00025522

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000149

 34  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00070130  0.00000000  0.00000000  0.57770608  0.00000000 -0.00000000 -0.00000000

 35  1     7    1  |1 0>        0.00000004  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000006 -0.00000001 -0.00000000
                                0.15412956  0.00000000  0.81592737 -0.00000000 -0.00000000 -0.20570565 -0.00000022  0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000
                                0.00000044  0.00000000  0.00000000  0.81591315 -0.00000000  0.00000022 -0.20653242  0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000088
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.57764184

 38  1    10    1  |1 0>       -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000
                                0.00000169  0.00000000 -0.00000000 -0.11272164  0.00000000 -0.00000035  0.33543864 -0.00000000

 39  1    11    1  |1 0>        0.00000015  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000010  0.00000001 -0.00000000
                                0.59419939  0.00000000 -0.11373050  0.00000000 -0.00000000  0.33557301  0.00000035 -0.00000000

 40  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.65127348  0.00000000 -0.00000000  0.00001336 -0.00000000 -0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.01029673 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000003 -0.00000000 -0.00000000 -0.00000286  0.00000000  0.00000000 -0.00000345 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00886581  0.00000000  0.00000284  0.00000000  0.00000000  0.00000347  0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00026676 -0.00000000  0.00000000 -0.00017559  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00025487

 47  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00054045  0.00000000  0.00000000  0.00025581  0.00000000 -0.00000000  0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00031262 -0.00000000  0.00031767 -0.00000000 -0.00000000 -0.00002686 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00054078 -0.00000000 -0.00009042  0.00000000  0.00000000 -0.00026433 -0.00000000  0.00000000

 50  1     6    1  |1 1>-       0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000
                               -0.00000138 -0.00000000  0.00000000  0.48360353 -0.00000000 -0.00000033  0.31524349 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000035
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.22856190

 52  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.13381405  0.00000000  0.00000000  0.45637749  0.00000000 -0.00000000 -0.00000000

 53  1     9    1  |1 1>-       0.00000013  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000016 -0.00000002  0.00000000
                                0.48562940  0.00000000  0.18484206 -0.00000000  0.00000000 -0.54674666 -0.00000057  0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.51446323  0.00000000  0.00000000  0.35333682  0.00000000 -0.00000000  0.00000000

 55  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000080
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.52703832

 56  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000
                                0.00000107  0.00000000  0.00000000  0.23165189  0.00000000 -0.00000070  0.66812548 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000003  0.00000000  0.00000000  0.00000158 -0.00000000 -0.00000000  0.00000270  0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00513601  0.00000000 -0.00000000  0.00000333  0.00000000 -0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000494

 60  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000015 -0.00000000  0.00000101 -0.00000000 -0.00000000  0.00000062  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000032 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000193 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000061
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000180  0.00000000  0.00000176  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000009 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000032 -0.00000000  0.00000947  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00002114  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000009  0.00000000 -0.00000000  0.00000000 -0.00000038 -0.00000000 -0.00001575 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000 -0.00002169 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001790
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00001048 -0.00000000  0.00008045 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000770  0.00000000 -0.00010856 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000652  0.00000000  0.00000017  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000106  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000180 -0.00000000  0.00000136  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00019766 -0.00000000  0.00000000  0.00000000  0.00000166 -0.00000000 -0.00000088  0.00000000
                                0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.00000000 -0.00000081  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000240
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00000053 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000193
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.60936809 -0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.69375965 -0.00000000 -0.00000704 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.17803191  0.00000000 -0.00000000 -0.00000000 -0.68396397 -0.00000000  0.26040444  0.00000000
                               -0.00000627  0.00000000 -0.00000000 -0.00000000  0.00012353 -0.00000000  0.00000888 -0.00000000

 21  1     9    1  |1 1>+       0.00000000 -0.00000004  0.61506284  0.00000000 -0.00000000  0.00000000  0.00000000 -0.22437933
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.68201591 -0.00000000  0.00000000  0.00000000  0.17809474 -0.00000000  0.46744533  0.00000000
                               -0.00002400 -0.00000000 -0.00000000 -0.00000000 -0.00003216 -0.00000000  0.00001594 -0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.11720397  0.00000000  0.53453337  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00731294  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000116 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000013  0.00000000  0.00000000  0.00000000 -0.00000858 -0.00000000 -0.00000606  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000703  0.00000000 -0.00000911 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000000  0.00000000  0.00000056  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000321
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000189  0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000186

 32  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000102 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000297  0.00000000

 33  1     5    1  |1 0>       -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00033894 -0.00000000 -0.00000000 -0.00000000 -0.00000133  0.00000000  0.00000001 -0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00061260 -0.00000000  0.65431431  0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.48621686 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

 36  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000003 -0.48616425 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.17736250

 37  1     9    1  |1 0>        0.00000010  0.00000000  0.00000000  0.00000000  0.00000030  0.00000000 -0.00002231  0.00000000
                               -0.00282434  0.00000000 -0.00000000  0.00000000  0.00164767 -0.00000000  0.65446051  0.00000000

 38  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000001  0.11700658  0.00000000 -0.00000000 -0.00000000  0.00000000  0.71007225

 39  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.11680987  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.09840688 -0.00000000 -0.00056810  0.00000000 -0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000445 -0.00000000 -0.00000002 -0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000662  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001802

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000656  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000232  0.00000000  0.00000000  0.00000000 -0.00000170  0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000106 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000198

 46  1     2    1  |1 1>-      -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00019518  0.00000000  0.00000000  0.00000000  0.00000166 -0.00000000  0.00000087  0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000180  0.00000000  0.00000137  0.00000000  0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000081 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000053 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 50  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000004  0.60959463  0.00000000 -0.00000000 -0.00000000  0.00000000  0.23819028

 51  1     7    1  |1 1>-      -0.00000621  0.00000000  0.00000000 -0.00000000  0.00012373  0.00000000 -0.00000878  0.00000000
                                0.17647643 -0.00000000  0.00000000  0.00000000  0.68509169 -0.00000000  0.25741958 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.69387657 -0.00000000 -0.00080278 -0.00000000 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.61527691  0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

 54  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.11752358  0.00000000 -0.53492604 -0.00000000 -0.00000000

 55  1    11    1  |1 1>-      -0.00002418  0.00000000  0.00000000  0.00000000 -0.00003186  0.00000000 -0.00001596  0.00000000
                                0.68702754  0.00000000 -0.00000000 -0.00000000 -0.17641483 -0.00000000  0.46808224  0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00677241 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.59771167

 57  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000123 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001311

 58  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000702  0.00000000 -0.00000901  0.00000000 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000009  0.00000000  0.00000000 -0.00000000 -0.00000850 -0.00000000  0.00000611 -0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000056 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>        0.00000000  0.00000169  0.00000068  0.00000003  0.00000000 -0.00000000  0.00000000 -0.00843411
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00347598 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00002170  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00347637 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000132 -0.00340626  0.00069578 -0.00000000 -0.00000000  0.00000000 -0.00000076
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000060 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00347638  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000025  0.00069597  0.00340504  0.00000000 -0.00000000 -0.00000000  0.00000018
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00001788  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000114  0.92474252  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000 -0.00000001 -0.00000002  0.92472667 -0.00000001 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00577175  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000001  0.92474266  0.00000114 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000187  0.73247513 -0.56434413 -0.00000001  0.00000001 -0.00000000  0.00006363
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000148  0.56430455  0.73253247  0.00000002 -0.00000001 -0.00000000  0.00005359
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00002222 -0.00001954 -0.00000091 -0.00000000  0.00000000 -0.00000000  0.23573552
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000198  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00100877  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000  0.00000109  0.00176298  0.00096827  0.00000000 -0.00000000 -0.00000000 -0.00000011
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00100803 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000629  0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00100984  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00174180 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.23874174 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006 -0.04748494  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.02613542 -0.01417262 -0.05230829 -0.00000000  0.00000000  0.00000000 -0.00000859
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.06007908  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00037499 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.04749526  0.00000006  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001641 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000010 -0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.46770948 -0.04988816  0.03025924  0.00000000 -0.00000000  0.00000000  0.00001736
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.59771635 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000005 -0.03681131 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00001310 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000032  0.26015968 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000001  0.26014282 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00162370  0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00000000  0.00002204 -0.14483716  0.26323771  0.00000000 -0.00000000 -0.00000000 -0.56106077
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000150  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00004139  0.00200860  0.00000000 -0.00000000 -0.00000000  0.00000001

 30  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000186  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00100832 -0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00100830 -0.00000000 -0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001255  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00200991  0.00000000  0.00000000 -0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000134  0.00000000 -0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00041082 -0.00097957 -0.04745253 -0.00000000  0.00000000  0.00000000 -0.00000030

 35  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.17759884  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.01507623  0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.01501865  0.00000002  0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00029646 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.04749713 -0.00000000 -0.00000000 -0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000  0.05819535  0.00000007  0.00000000

 39  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.71000889  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000007 -0.05818051 -0.00000000

 40  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.74952311  0.06388019 -0.00131782  0.00000000  0.00000000 -0.00000000  0.00003726

 41  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00002433  0.30053305 -0.00619187  0.00000000  0.00000000 -0.00000000 -0.56104969

 42  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.26013850  0.00000032 -0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00001803  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000032  0.26013867  0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00100876 -0.00000000  0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000629  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00100805  0.00000000  0.00000000  0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000109 -0.00172157  0.00104010  0.00000000 -0.00000000  0.00000000  0.00000012

 48  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000240  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00100750 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000193 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00174316 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.04748641 -0.00000006  0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00037499  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.06007868  0.00000000  0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.02567417 -0.01195463  0.05287529  0.00000000 -0.00000000 -0.00000000 -0.00000803

 53  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.22379360 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006 -0.04749475 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.46703378 -0.05110396 -0.02812580 -0.00000000  0.00000000  0.00000000  0.00001715

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000047 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00007554 -0.00000000 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.03680883  0.00000005  0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.26015936 -0.00000032 -0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00002203  0.15555906  0.25703930  0.00000001 -0.00000000 -0.00000000  0.56106299

 59  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00162370  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000001 -0.26014278  0.00000000  0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000321  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000152  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55          56

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000017
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00683002 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000074  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000025 -0.00000000 -0.00000001 -0.00683033 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00121250 -0.00670935
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000023 -0.00000000 -0.00000000  0.00683035 -0.00000001  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00671452  0.00121155
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00002489  0.00000000  0.00000000 -0.36727457  0.00000045 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000  0.00000045  0.00000000  0.00000000 -0.36727388  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00003982 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00002527  0.00000000 -0.00000045 -0.36727424 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.21746278 -0.29615744
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.29605408 -0.21753701
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006  0.00000103
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00035613 -0.00000000 -0.00000000  0.00004670 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00004567 -0.00007963
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00035574  0.00000000  0.00000000 -0.00004684  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000037  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00035555 -0.00000000 -0.00000000 -0.00004719 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00020235 -0.00000000  0.00000000  0.00008078  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000831  0.00000000  0.00000000  0.01227086 -0.00000002  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.01358652  0.00334635
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.00000831 -0.00000000 -0.00000000  0.01552214 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000168  0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000 -0.00000282 -0.00000000 -0.00000002 -0.01226837 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.00000000  0.00000234  0.00000000  0.00000000 -0.00000525  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00751599  0.01305610
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00001279  0.00000000  0.00000000  0.00951586 -0.00000001  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.70609942 -0.00000020 -0.00000000  0.65740967 -0.00000081  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000  0.70608268 -0.00000000 -0.00000000  0.65743192 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00072619 -0.00000000  0.00000000 -0.00007128  0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.65653918 -0.38105668
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000002 -0.05376491  0.00000000 -0.00000000 -0.00000104 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00009030  0.00000021

 30  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00035605  0.00000000  0.00000000  0.00004666 -0.00000000  0.00000000 -0.00000000 -0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00035605 -0.00000000  0.00000000  0.00004665  0.00000000  0.00000000 -0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000028 -0.00000000 -0.00000000  0.00009152 -0.00000000 -0.00000000

 33  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000042 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00041307  0.00000000  0.00000000  0.00000006  0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.01224829 -0.00002776

 35  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000260 -0.00000000  0.00000000  0.00389530 -0.00000000  0.00000000 -0.00000000  0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000262  0.00000000 -0.00000000 -0.00388045 -0.00000000 -0.00000000  0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000133  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000 -0.01225959  0.00000000  0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00001614  0.00000000 -0.00000002 -0.01503806 -0.00000000 -0.00000000  0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00001610 -0.00000000 -0.00000000  0.01503423 -0.00000002  0.00000000 -0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00003752 -0.01649939

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00174237  0.75905801

 42  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000020  0.70606746 -0.00000000  0.00000081  0.65745248  0.00000000  0.00000000 -0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.70606836  0.00000020  0.00000000  0.65745145 -0.00000081  0.00000000 -0.00000000  0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00005530  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.05376425  0.00000000 -0.00000000  0.00000009 -0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00035613  0.00000000  0.00000000  0.00004670  0.00000000  0.00000000 -0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000037  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00035574 -0.00000000 -0.00000000  0.00004685 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00004531  0.00007983

 48  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00035581 -0.00000000 -0.00000000  0.00004708 -0.00000000  0.00000000 -0.00000000  0.00000000

 49  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00020187  0.00000000  0.00000000  0.00008084 -0.00000000  0.00000000 -0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000828 -0.00000000  0.00000002  0.01227122  0.00000000  0.00000000 -0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000168 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000823 -0.00000000 -0.00000000  0.01552203 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.01357841  0.00339584

 53  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000283  0.00000000 -0.00000000  0.01226828 -0.00000002  0.00000000 -0.00000000  0.00000000

 54  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00756236  0.01302465

 55  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000235  0.00000000  0.00000000 -0.00002052  0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00001277  0.00000000 -0.00000001 -0.00951520 -0.00000000 -0.00000000  0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000020  0.70610031 -0.00000000 -0.00000081 -0.65740883 -0.00000000 -0.00000000  0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.65828258  0.37803915

 59  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00072619 -0.00000000  0.00000000 -0.00007128  0.00000000  0.00000000
                                0.00000000  0.00000000  0.70608440  0.00000000  0.00000000 -0.65743009  0.00000000  0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.05376489 -0.00000002 -0.00000000 -0.00000095  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       57          58          59          60

  1  1     1    1  |0 0>        0.00187266 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000002  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000011  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000002 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000002  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000 -0.00000040  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000001 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000040
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000070 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000060  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.97181723 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00001684  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000005  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00001684 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00001682
                                0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000957
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000018 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000195 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.00000031  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000008
                                0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000177 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000752 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.00000176  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.03801812  0.00000008
                                0.00000000  0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.03801710  0.00000000 -0.00000000
                                0.00000000  0.00000037  0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.13609619  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00000002  0.00000201  0.99855362
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00001683 -0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00001683

 32  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000001 -0.00000000  0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00001954  0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000008 -0.00000000  0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000049  0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000049

 37  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

 38  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000157

 39  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000157 -0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000704 -0.00000000 -0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.13610099 -0.00000000 -0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000008  0.03801694

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.03801690 -0.00000008

 44  1    16    1  |1 0>        0.00000000  0.00000961  0.00000000 -0.00000000
                                0.00000000  0.99855366 -0.00000001  0.00000002

 45  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00001685

 46  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00001684 -0.00000000  0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000005  0.00000000 -0.00000000  0.00000000

 48  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00001683  0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000955 -0.00000000

 50  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000018

 51  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000031 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000199 -0.00000000  0.00000000 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000008 -0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000768 -0.00000000 -0.00000000 -0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000177  0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000176

 57  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000008  0.03801812

 58  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.13609594  0.00000000  0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000037 -0.00000000  0.00000000
                                0.00000000 -0.03801706  0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000001  0.99855362 -0.00000201



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.81%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.81%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.79%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.79%    0.02%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   18.28%   47.85%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.54%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%   29.97%    0.00%    0.00%    0.00%    0.00%   16.56%
 17  1     5    1  |1 1>+         0.00%    0.00%   10.02%    0.00%    0.00%    0.00%    0.00%   49.54%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.07%    0.06%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%   16.55%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.10%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.98%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%   16.54%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.54%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   14.84%   51.28%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    9.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.81%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+        16.54%    0.00%    0.00%   46.25%    0.00%    7.06%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%   32.96%    0.00%    0.00%    0.00%    0.00%   20.36%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   22.32%    0.00%   31.02%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   13.31%    0.00%   26.73%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>         16.55%    0.00%    0.00%   18.26%    0.00%   35.05%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%   17.76%    0.00%   35.55%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%   33.35%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.02%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   46.61%    0.00%    6.71%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%   33.69%    0.00%    0.00%    0.00%    0.00%   19.63%
 47  1     3    1  |1 1>-         0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-        16.49%    0.00%    0.00%   21.75%    0.00%   31.61%    0.00%    0.00%
 49  1     5    1  |1 1>-        49.61%    0.00%    0.00%   13.73%    0.00%   26.27%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%   99.18%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.18%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>         10.33%    0.00%   88.85%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%   99.18%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>         88.85%    0.00%   10.33%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.35%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.65%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.40%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.41%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   28.86%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.71%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.58%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    8.82%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.41%    0.00%    0.13%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.54%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.57%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.36%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.56%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   35.33%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.54%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.13%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.41%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.60%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.71%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   28.85%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    8.88%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.12%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          1.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.65%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.35%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+        23.60%    0.00%   23.37%    0.00%    0.00%    9.96%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    1.76%    0.00%    0.00%   20.86%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    5.17%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    3.40%    0.00%    0.00%   29.91%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   28.46%
 23  1    11    1  |1 1>+         0.00%   26.54%    0.00%    0.00%   12.45%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+        14.12%    0.00%    5.35%    0.00%    0.00%   44.66%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.37%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          2.38%    0.00%   66.57%    0.00%    0.00%    4.23%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%   66.57%    0.00%    0.00%    4.27%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.37%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    1.27%    0.00%    0.00%   11.25%    0.00%
 39  1    11    1  |1 0>         35.31%    0.00%    1.29%    0.00%    0.00%   11.26%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%   42.42%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%   23.39%    0.00%    0.00%    9.94%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    5.22%
 52  1     8    1  |1 1>-         0.00%    1.79%    0.00%    0.00%   20.83%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-        23.58%    0.00%    3.42%    0.00%    0.00%   29.89%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%   26.47%    0.00%    0.00%   12.48%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   27.78%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    5.37%    0.00%    0.00%   44.64%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%   37.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%   48.13%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         3.17%    0.00%    0.00%    0.00%   46.78%    0.00%    6.78%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%   37.83%    0.00%    0.00%    0.00%    0.00%    5.03%
 22  1    10    1  |1 1>+        46.51%    0.00%    0.00%    0.00%    3.17%    0.00%   21.85%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    1.37%    0.00%   28.57%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.81%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%   23.64%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%   23.64%    0.00%    0.00%    0.00%    0.00%    3.15%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.83%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    1.37%    0.00%    0.00%    0.00%    0.00%   50.42%
 39  1    11    1  |1 0>          0.00%    1.36%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.97%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%   37.16%    0.00%    0.00%    0.00%    0.00%    5.67%
 51  1     7    1  |1 1>-         3.11%    0.00%    0.00%    0.00%   46.94%    0.00%    6.63%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%   48.15%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%   37.86%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    1.38%    0.00%   28.61%    0.00%    0.00%
 55  1    11    1  |1 1>-        47.20%    0.00%    0.00%    0.00%    3.11%    0.00%   21.91%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   35.73%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   85.51%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%   85.52%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   85.51%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%   53.65%   31.85%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%   31.84%   53.66%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    5.56%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         5.70%    0.00%    0.00%    0.00%    0.00%    0.00%    0.23%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.07%    0.02%    0.27%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.36%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.23%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%   21.88%    0.25%    0.09%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+        35.73%    0.00%    0.00%    0.00%    0.00%    0.00%    0.14%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.77%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    6.77%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    2.10%    6.93%    0.00%    0.00%    0.00%   31.48%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.23%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          3.15%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.23%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.34%    0.00%    0.00%
 39  1    11    1  |1 0>         50.41%    0.00%    0.00%    0.00%    0.00%    0.00%    0.34%    0.00%
 40  1    12    1  |1 0>          0.00%   56.18%    0.41%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    9.03%    0.00%    0.00%    0.00%    0.00%   31.48%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    6.77%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.77%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.23%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.36%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.07%    0.01%    0.28%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         5.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.23%    0.00%
 54  1    10    1  |1 1>-         0.00%   21.81%    0.26%    0.08%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.14%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    6.77%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    2.42%    6.61%    0.00%    0.00%    0.00%   31.48%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    6.77%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55       56

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%   13.49%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   13.49%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   13.49%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    4.73%    8.77%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.76%    4.73%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.02%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+        49.86%    0.00%    0.00%   43.22%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%   49.86%    0.00%    0.00%   43.22%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   43.10%   14.52%
 28  1    16    1  |1 1>+         0.00%    0.29%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   57.62%
 42  1    14    1  |1 0>          0.00%   49.85%    0.00%    0.00%   43.22%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>         49.85%    0.00%    0.00%   43.22%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.29%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.02%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%   49.86%    0.00%    0.00%   43.22%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   43.33%   14.29%
 59  1    15    1  |1 1>-         0.00%    0.00%   49.86%    0.00%    0.00%   43.22%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.29%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     57       58       59       60

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>         94.44%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.14%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.14%    0.00%    0.00%
 27  1    15    1  |1 1>+         1.85%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%   99.71%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          1.85%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.14%
 43  1    15    1  |1 0>          0.00%    0.00%    0.14%    0.00%
 44  1    16    1  |1 0>          0.00%   99.71%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.14%
 58  1    14    1  |1 1>-         1.85%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.14%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%   99.71%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1102.15       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     2620.65       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    119819.05 103879.72    219.49  11665.73   4023.98     13.51      0.11     16.05
 REAL TIME  *    120987.84 SEC
 DISK USED  *         2.72 GB (local),       67.26 GB (total)
 SF USED    *        17.54 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-X2C energy=  -8132.528716889569

              CI              CI           MULTI         RHF-SCF
  -8132.47980741  -8132.47973573  -8131.90506618  -8131.99704799
 **********************************************************************************************************************************
 Molpro calculation terminated
