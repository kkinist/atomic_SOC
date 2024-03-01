
 Working directory              : /wrk/irikura/molpro.PhUz22YVFp/
 Global scratch directory       : /wrk/irikura/molpro.PhUz22YVFp/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.PhUz22YVFp/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,F SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={F};
 
                                                                                 ! d-aug-cc-pVTZ from BSE
 spherical
 basis={
                                                                                 !
                                                                             ! fluorine             (12s,7p,4d,3f) -&gt; [6s,5p,4d,3f]
 s, F , 19500.0000000, 2923.0000000, 664.5000000, 187.5000000, 60.6200000, 21.4200000, 7.9500000, 2.2570000, 0.8815000, 0.3041000, 0.0915800, 0.0276
 c, 1.10, 0.0005070, 0.0039230, 0.0202000, 0.0790100, 0.2304390, 0.4328720, 0.3499640, 0.0432330, -0.0078920, 0.0023840
 c, 8.8, 1.0000000
 c, 1.10, -0.0001170, -0.0009120, -0.0047170, -0.0190860, -0.0596550, -0.1400100, -0.1767820, 0.1716250, 0.6050430, 0.3695120
 c, 10.10, 1.0000000
 c, 11.11, 1.0000000
 c, 12.12, 1.000000
 p, F , 43.8800000, 9.9260000, 2.9300000, 0.9132000, 0.2672000, 0.0736100, 0.0203
 c, 4.4, 1.0000000
 c, 1.5, 0.0166650, 0.1044720, 0.3172600, 0.4873430, 0.3346040
 c, 5.5, 1.0000000
 c, 6.6, 1.0000000
 c, 7.7, 1.000000
 d, F , 3.1070000, 0.8550000, 0.2920000, 0.0997
 c, 1.1, 1.0000000
 c, 2.2, 1.0000000
 c, 3.3, 1.0000000
 c, 4.4, 1.000000
 f, F , 1.9170000, 0.7240000, 0.2730
 c, 1.1, 1.0000000
 c, 2.2, 1.0000000
 c, 3.3, 1.000000
 }
 
 set,dkho=101
 
                                                                                 ! start with dication to get better 3s3p orbitals
 {rhf,so-sci;wf,nelec=7,sym=2,spin=3}
 
                                                                                 ! Active space (7/8) to get 3p orbs
 {multi
     closed,1,0;
     occ,3,6
     wf,nelec=9,sym=2,spin=1;state,8;
     wf,nelec=9,sym=2,spin=3;state,8;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=2,spin=1;state,8; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,8; save,5203.2}
 hlsdiag(9) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   F SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 01-Mar-24          TIME: 10:15:37  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics



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

   1  F       9.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    9
 NUMBER OF PRIMITIVE AOS:          87
 NUMBER OF SYMMETRY AOS:           74
 NUMBER OF CONTRACTIONS:           62   (   26Ag  +   36Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     4.194 MB (compressed) written to integral file ( 23.7%)

     Node minimum: 0.262 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:      81615.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:      81615      RECORD LENGTH: 524288

 Memory used in sort:       0.64 MW

 SORT1 READ     2237269. AND WROTE       17415. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      204291. AND WROTE      985185. INTEGRALS IN     12 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:       81195.  Node maximum:       82926. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 4 5 6 7 8   910 4 5 6 7 8 910 4   5 6 7 8 910

 Eigenvalues of metric

         1 0.990E-02 0.859E-01 0.171E+00 0.171E+00 0.171E+00 0.171E+00 0.171E+00 0.324E+00
         2 0.511E-01 0.511E-01 0.511E-01 0.159E+00 0.159E+00 0.159E+00 0.228E+00 0.228E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.73       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.65      0.42
 REAL TIME  *         1.41 SEC
 DISK USED  *        29.04 MB (local),      398.18 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   3
 Initial beta  occupancy:   2   0
 
 SO-SCI SOLVER WITH NELEC=7 SYM=2 MS2=3 THRE=1.0D-08 THRG=3.2D-06
 
 Authors: D.A. Kreplin, H.-J. Werner (2022)
 
 Number of closed-shell orbitals:                 2   (    2    0)
 Number of singly occupied active orbitals:       3   (    0    3)
 Number of virtual orbitals:                     57   (   24   33)
 
 ITER.  MIC  NCI          ENERGY    ENERGY CHANGE          GRAD      ORB GRAD        CI RES  NQN        STEP      TIME
    1    1    0     -97.26323032     -97.26323032    1.22702561    1.22702561    0.00000000    0    0.37E+00      0.03
    2    1    0     -97.67454272      -0.41131240    0.22224503    0.22224503    0.00000000    0    0.51E-01      0.05
    3    1    0     -97.68152643      -0.00698371    0.02092416    0.02092416    0.00000000    0    0.32E-02      0.06
    4    1    0     -97.68158352      -0.00005710    0.00365036    0.00365036    0.00000000    1    0.63E-03      0.08
    5    1    0     -97.68158537      -0.00000184    0.00018284    0.00018284    0.00000000    2    0.30E-04      0.10
    6    1    0     -97.68158537      -0.00000000    0.00002165    0.00002165    0.00000000    3    0.44E-05      0.12

 CONVERGENCE REACHED!  Final gradient:     0.00000101 ( 0.10E-05)
                       Final energy:     -97.68158537
 

 Final alpha occupancy:   2   3
 Final beta  occupancy:   2   0

 !RHF STATE 1.2 Energy                -97.681585373139
  RHF One-electron energy            -126.282346981435
  RHF Two-electron energy              28.600761608295
  RHF Kinetic energy                   97.912633871563
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.997640258572

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -28.10453     1  1  s    1.00586
    2.1     2.00000    -2.92253     1  3  s    1.14604
    1.2     1.00000    -2.34223     1  2  px   1.23708    1  3  px  -0.28774
    2.2     1.00000    -2.34223     1  2  py   1.17309    1  2  pz   0.39273    1  3  py  -0.27286
    3.2     1.00000    -2.34223     1  2  py  -0.39273    1  2  pz   1.17308    1  3  pz  -0.27286


 HOMO      3.2    -2.342235 =     -63.7354eV
 LUMO      3.1    -0.467133 =     -12.7113eV
 LUMO-HOMO         1.875101 =      51.0241eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      23       28.89       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380   
                                         AOSYM     SMH     JKOP   

              2       4        0.43       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.76      0.11      0.42
 REAL TIME  *         1.56 SEC
 DISK USED  *        29.40 MB (local),      402.41 MB (total)
 SF USED    *         0.71 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      53 (   23   30)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL (state 1.2)

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 5 3 2 1 2   4 6 3 5 1 2 6 4 3 5   2 5 6 4 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.379D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.252D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.253D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.853D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.188D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.179D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 6 9 710 8 4 5 8  10 6 7 9 5 4 3 1 2 4   5 9 710 8 6

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 
 Number of orbital rotations:  251  ( 2 closed/active, 23 closed/virtual, 0 active/active, 226 active/virtual )
 Total number of variables:    22299
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   30    0    -98.97088227     -99.08710649   -0.11622422    0.63550870 0.00348985 0.00582167  0.11E+01      1.68
   2    7   29    0    -99.09287366     -99.09384985   -0.00097620    0.04549884 0.00002423 0.00002724  0.11E+00      3.60
   3    9   32    0    -99.09385646     -99.09385658   -0.00000011    0.00048144 0.00000016 0.00000021  0.11E-02      5.76
   4    3    7    0    -99.09385658     -99.09385658    0.00000000    0.00000019 0.00000001 0.00000002  0.30E-06      6.25

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.68E-08)
                       Final energy:    -99.09385658
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy               -99.449444615419
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.70769073
 One electron energy                          -140.08630779
 Two electron energy                            40.63686318
 Virial ratio                                    1.98750596
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy               -99.449444615419
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.70769073
 One electron energy                          -140.08630779
 Two electron energy                            40.63686318
 Virial ratio                                    1.98750596
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy               -99.449444615419
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.70769073
 One electron energy                          -140.08630779
 Two electron energy                            40.63686318
 Virial ratio                                    1.98750596
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy               -99.008193659659
 Nuclear energy                                  0.00000000
 Kinetic energy                                 98.98280615
 One electron energy                          -134.80837219
 Two electron energy                            35.80017853
 Virial ratio                                    2.00025648
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy               -99.008193659659
 Nuclear energy                                  0.00000000
 Kinetic energy                                 98.98280615
 One electron energy                          -134.80837219
 Two electron energy                            35.80017853
 Virial ratio                                    2.00025648
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy               -99.008193659659
 Nuclear energy                                  0.00000000
 Kinetic energy                                 98.98280615
 One electron energy                          -134.80837219
 Two electron energy                            35.80017853
 Virial ratio                                    2.00025648
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy               -99.008193659652
 Nuclear energy                                  0.00000000
 Kinetic energy                                 98.98280615
 One electron energy                          -134.80837219
 Two electron energy                            35.80017853
 Virial ratio                                    2.00025648
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy               -99.008193659652
 Nuclear energy                                  0.00000000
 Kinetic energy                                 98.98280615
 One electron energy                          -134.80837219
 Two electron energy                            35.80017853
 Virial ratio                                    2.00025648
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy               -99.017731814099
 Nuclear energy                                  0.00000000
 Kinetic energy                                 98.94970694
 One electron energy                          -134.77545930
 Two electron energy                            35.75772748
 Virial ratio                                    2.00068747
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy               -99.017731814099
 Nuclear energy                                  0.00000000
 Kinetic energy                                 98.94970694
 One electron energy                          -134.77545930
 Two electron energy                            35.75772748
 Virial ratio                                    2.00068747
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy               -99.017731814099
 Nuclear energy                                  0.00000000
 Kinetic energy                                 98.94970694
 One electron energy                          -134.77545930
 Two electron energy                            35.75772748
 Virial ratio                                    2.00068747
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy               -99.011841525282
 Nuclear energy                                  0.00000000
 Kinetic energy                                 98.96168321
 One electron energy                          -134.78768990
 Two electron energy                            35.77584838
 Virial ratio                                    2.00050685
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy               -99.011841525282
 Nuclear energy                                  0.00000000
 Kinetic energy                                 98.96168321
 One electron energy                          -134.78768990
 Two electron energy                            35.77584838
 Virial ratio                                    2.00050685
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy               -99.011841525282
 Nuclear energy                                  0.00000000
 Kinetic energy                                 98.96168321
 One electron energy                          -134.78768990
 Two electron energy                            35.77584838
 Virial ratio                                    2.00050685
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy               -99.011841525276
 Nuclear energy                                  0.00000000
 Kinetic energy                                 98.96168321
 One electron energy                          -134.78768990
 Two electron energy                            35.77584838
 Virial ratio                                    2.00050685
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy               -99.011841525276
 Nuclear energy                                  0.00000000
 Kinetic energy                                 98.96168321
 One electron energy                          -134.78768990
 Two electron energy                            35.77584838
 Virial ratio                                    2.00050685
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999539398910
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.159081302533
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.841379298557
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.128404384016
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.084835016729
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     3.786760012975
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.466525803194
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     3.533474783086
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.212533204904
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.809950513394
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.977516281702
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     1.286261095370
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.000455982067
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     3.713256379464
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.393110575823
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     2.606915967275
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999691503554
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.841079572343
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.159228924103
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.727092225019
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     1.104174772350
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.168747219140
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     3.878630125299
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.121355658192
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.824049979533
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.192775246016
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.983174774451
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     3.707235224984
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.008410107776
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     1.284348215782
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     3.953824235864
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.046182215594
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.000769097536
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999839125124
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999391777341
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.144503390965
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.810990210921
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.044492767885
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.654844071507
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     2.345169558722
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.963416815563
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.997274240590
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.039308943847
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     1.006503679646
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     3.991133910156
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.002395404755
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     0.653065188312
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     3.346901817130
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     6.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     6.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     6.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000000
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000000
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000000
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000000
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 5 3 4 2 1   2 3 6 5 4 2 6 3 5 4   2 6 5 3 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 2 1 3 2   1 3 6 810 9 7 5 410   8 6 7 9 5 4 3 2 1 5   4 9 710 8 6
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -26.86475     1  1  s    1.00529
    2.1     1.99641    -1.92117     1  3  s    1.04576
    3.1     0.00393     1.20229     1  2  s   -0.50268    1  3  s   -1.30682    1  4  s    1.88688
    1.2     1.39267    -0.85465     1  2  px   1.08069
    2.2     1.39267    -0.85465     1  2  pz   1.08069
    3.2     1.39267    -0.85465     1  2  py   1.08069
    4.2     0.27388     0.03598     1  4  px   0.43149    1  5  px   0.68349
    5.2     0.27388     0.03598     1  4  pz   0.43149    1  5  pz   0.68349
    6.2     0.27388     0.03598     1  4  py   0.43149    1  5  py   0.68349
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 2a2000      0.97817173      0.01241156      0.02413312     -0.00000000     -0.00000000      0.00000000      0.00000000
 20 a22000     -0.02100123      0.89734445      0.38972845      0.00000000      0.00000000      0.00000000     -0.00000000
 20 22a000     -0.01718728     -0.39009649      0.89726568      0.00000000     -0.00000000     -0.00000000      0.00000000
 20 aa200b     -0.00000000      0.00000000      0.00000000      0.00025719      0.00019127      0.00092577     -0.11579125
 20 2aab00      0.00000000      0.00000000     -0.00000000     -0.00093609      0.00111524     -0.00022818      0.62480949
 20 aa2b00     -0.09731279     -0.00123476     -0.00240087     -0.12635241      0.55728532     -0.07011052     -0.00129816
 20 2aa00b      0.09731279      0.00123476      0.00240087     -0.12635241      0.55728532     -0.07011052     -0.00129816
 20 aa20b0     -0.00208929      0.08927174      0.03877189     -0.11910785     -0.09681209     -0.55487751      0.00011129
 20 a2a00b     -0.00208929      0.08927174      0.03877189      0.11910785      0.09681209      0.55487751     -0.00011129
 20 2aa0b0      0.00170987      0.03880850     -0.08926390      0.54890507      0.10727575     -0.13654253      0.00060001
 20 a2ab00      0.00170987      0.03880850     -0.08926390     -0.54890507     -0.10727575      0.13654253     -0.00060001
 20 a2a0b0     -0.00000000      0.00000000      0.00000000     -0.00067890      0.00130651      0.00069759      0.50901823
 20 ba200a     -0.00000000     -0.00000000     -0.00000000     -0.00012021     -0.00010821     -0.00046532      0.05201084
 20 ab200a     -0.00000000     -0.00000000     -0.00000000     -0.00013698     -0.00008307     -0.00046045      0.06378041
 20 2aba00     -0.00000000     -0.00000000      0.00000000      0.00047024     -0.00056539      0.00010566     -0.31444567
 20 2baa00     -0.00000000     -0.00000000     -0.00000000      0.00046586     -0.00054985      0.00012251     -0.31036382
 20 ab2a00      0.02074249      0.00026319      0.00051175      0.06383200     -0.28153508      0.03541915      0.00065582
 20 2ba00a     -0.02074249     -0.00026319     -0.00051175      0.06383200     -0.28153508      0.03541915      0.00065582
 20 ba20a0      0.00044534     -0.01902852     -0.00826434      0.06017212      0.04890852      0.28031868     -0.00005622
 20 b2a00a      0.00044534     -0.01902852     -0.00826434     -0.06017212     -0.04890852     -0.28031868      0.00005622
 20 2ab0a0     -0.00036446     -0.00827214      0.01902685     -0.27730146     -0.05419466      0.06897995     -0.00030312
 20 a2ba00     -0.00036446     -0.00827214      0.01902685      0.27730146      0.05419466     -0.06897995      0.00030312
 20 ba2a00      0.07657029      0.00097156      0.00188912      0.06252041     -0.27575024      0.03469137      0.00064234
 20 2ab00a     -0.07657029     -0.00097156     -0.00188912      0.06252041     -0.27575024      0.03469137      0.00064234
 20 ab20a0      0.00164395     -0.07024322     -0.03050755      0.05893573      0.04790357      0.27455883     -0.00005507
 20 a2b00a      0.00164395     -0.07024322     -0.03050755     -0.05893573     -0.04790357     -0.27455883      0.00005507
 20 2ba0a0     -0.00134540     -0.03053636      0.07023705     -0.27160361     -0.05308110      0.06756258     -0.00029689
 20 b2aa00     -0.00134540     -0.03053636      0.07023705      0.27160361      0.05308110     -0.06756258      0.00029689
 20 a2b0a0      0.00000000     -0.00000000     -0.00000000      0.00034564     -0.00065805     -0.00034281     -0.25835298
 20 b2a0a0      0.00000000     -0.00000000     -0.00000000      0.00033326     -0.00064846     -0.00035479     -0.25066525
 ab 2a2000      0.06047649      0.00076736      0.00149206     -0.00000000     -0.00000000     -0.00000000      0.00000000
 ab a22000     -0.00129842      0.05547926      0.02409537      0.00000000     -0.00000000      0.00000000     -0.00000000
 ab 22a000     -0.00106262     -0.02411812      0.05547439      0.00000000     -0.00000000     -0.00000000      0.00000000
 
 Energy:      -99.44944462    -99.44944462    -99.44944462    -99.00819366    -99.00819366    -99.00819366    -99.00819366

 State:              8
 20 2a2000     -0.00000000
 20 a22000     -0.00000000
 20 22a000     -0.00000000
 20 aa200b      0.65461710
 20 2aab00     -0.22703096
 20 aa2b00     -0.00024366
 20 2aa00b     -0.00024366
 20 aa20b0      0.00087948
 20 a2a00b     -0.00087948
 20 2aa0b0      0.00005223
 20 a2ab00     -0.00005223
 20 a2a0b0      0.42758614
 20 ba200a     -0.32834947
 20 ab200a     -0.32626763
 20 2aba00      0.10789863
 20 2baa00      0.11913233
 20 ab2a00      0.00012310
 20 2ba00a      0.00012310
 20 ba20a0     -0.00044431
 20 b2a00a      0.00044431
 20 2ab0a0     -0.00002638
 20 a2ba00      0.00002638
 20 ba2a00      0.00012057
 20 2ab00a      0.00012057
 20 ab20a0     -0.00043518
 20 a2b00a      0.00043518
 20 2ba0a0     -0.00002584
 20 b2aa00      0.00002584
 20 a2b0a0     -0.20921714
 20 b2a0a0     -0.21836900
 ab 2a2000     -0.00000000
 ab a22000     -0.00000000
 ab 22a000     -0.00000000
 
 Energy:      -99.00819366
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 aa200a      0.00000000      0.00000000      0.00000000      0.00035238      0.00003254     -0.00229960      0.08752677
 20 a2a0a0     -0.00000000      0.00000000      0.00000000     -0.00005397      0.00000097      0.00002406      0.74520790
 20 aa2a00      0.13495002     -0.03683630      0.69155080      0.03284770      0.70448560     -0.01980179      0.00004804
 20 2aa00a     -0.13495002      0.03683630     -0.69155080      0.03284770      0.70448560     -0.01980179      0.00004804
 20 a2a00a      0.62610668      0.30758529     -0.10579528     -0.21793924     -0.00869817     -0.67096464      0.00084571
 20 aa20a0      0.62610668      0.30758529     -0.10579528      0.21793924      0.00869817      0.67096464     -0.00084571
 20 a2aa00     -0.29595581      0.63391269      0.09151929      0.67021968     -0.03735554     -0.21720969      0.00047902
 20 2aa0a0     -0.29595581      0.63391269      0.09151929     -0.67021968      0.03735554      0.21720969     -0.00047902
 20 2aaa00     -0.00000000      0.00000000      0.00000000     -0.00040635     -0.00003157      0.00232366      0.65768113
 
 Energy:      -99.01773181    -99.01773181    -99.01773181    -99.01184153    -99.01184153    -99.01184153    -99.01184153

 State:              8
 20 aa200a      0.80995579
 20 a2a0a0      0.32918068
 20 aa2a00     -0.00010401
 20 2aa00a     -0.00010401
 20 a2a00a     -0.00190121
 20 aa20a0      0.00190121
 20 a2aa00     -0.00095854
 20 2aa0a0      0.00095854
 20 2aaa00     -0.48077511
 
 Energy:      -99.01184153
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.80       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.60       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.97      3.20      0.11      0.42
 REAL TIME  *         9.82 SEC
 DISK USED  *        30.48 MB (local),      415.46 MB (total)
 SF USED    *         3.94 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -99.44944462   2.0
    -99.44944462   2.0
    -99.44944462   2.0
    -99.00819366   6.0
    -99.00819366   6.0
    -99.00819366   6.0
    -99.00819366   6.0
    -99.00819366   6.0
    -99.01773181   2.0
    -99.01773181   2.0
    -99.01773181   2.0
    -99.01184153   6.0
    -99.01184153   6.0
    -99.01184153   6.0
    -99.01184153   6.0
    -99.01184153   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                  9
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:      554 conf     1204 CSFs
 N elec internal:     1016 conf     2352 CSFs
 N-1 el internal:      784 conf     2688 CSFs
 N-2 el internal:      504 conf     2520 CSFs

 Number of electrons in valence space:                      7
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      53 (  23  30 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  12

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -99.44944462
     2       -99.44944462
     3       -99.44944462
     4       -99.00819366
     5       -99.00819366
     6       -99.00819366
     7       -99.00819366
     8       -99.00819366

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2668D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2866D-06

 Number of blocks in overlap matrix:    12   Smallest eigenvalue:  0.27D-06
 Number of N-2 electron functions:     476
 Number of N-1 electron functions:    2688

 Number of internal configurations:                 1204
 Number of singly external configurations:         71344
 Number of doubly external configurations:        336299
 Total number of contracted configurations:       408847
 Total number of uncontracted configurations:    1836164

 Diagonal Coupling coefficients finished.               Storage:   1342192 words, CPU-Time:      0.56 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    264450 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -99.44944462     0.00000000    -0.25458138  0.66D-01  0.12D-01     1.03
    1     2     2     1.00000000     0.00000000   -99.44944462     0.00000000    -0.25440647  0.66D-01  0.11D-01     1.03
    1     3     3     1.00000000     0.00000000   -99.44944462    -0.00000000    -0.25390849  0.66D-01  0.11D-01     1.03
    1     4     4     1.00000000     0.00000000   -99.00819366    -0.00000000    -0.16352681  0.20D-01  0.93D-02     1.03
    1     5     5     1.00000000     0.00000000   -99.00819366     0.00000000    -0.16361219  0.20D-01  0.94D-02     1.03
    1     6     6     1.00000000     0.00000000   -99.00819366     0.00000000    -0.16375936  0.20D-01  0.94D-02     1.03
    1     7     7     1.00000000     0.00000000   -99.00819366     0.00000000    -0.16568921  0.20D-01  0.99D-02     1.03
    1     8     8     1.00000000     0.00000000   -99.00819366    -0.00000000    -0.16362323  0.20D-01  0.93D-02     1.03
    2     1     1     1.06394057    -0.23232576   -99.68177037    -0.23232576    -0.01511890  0.15D-02  0.13D-02     4.80
    2     2     2     1.06395729    -0.23226606   -99.68171067    -0.23226606    -0.01514157  0.15D-02  0.13D-02     4.80
    2     3     3     1.06401366    -0.23208397   -99.68152858    -0.23208397    -0.01522975  0.15D-02  0.13D-02     4.80
    2     4     4     1.02849201    -0.16157953   -99.16977319    -0.16157953    -0.00484879  0.31D-03  0.43D-03     4.80
    2     5     5     1.02847377    -0.16157780   -99.16977146    -0.16157780    -0.00485154  0.31D-03  0.43D-03     4.80
    2     6     6     1.02858300    -0.16155380   -99.16974746    -0.16155380    -0.00489316  0.30D-03  0.44D-03     4.80
    2     7     7     1.02848460    -0.16154951   -99.16974317    -0.16154951    -0.00486876  0.32D-03  0.43D-03     4.80
    2     8     8     1.02872786    -0.16152708   -99.16972074    -0.16152708    -0.00490413  0.32D-03  0.43D-03     4.80
    3     1     1     1.06425544    -0.24869999   -99.69814461    -0.01637423    -0.00107834  0.56D-04  0.11D-03     8.33
    3     2     2     1.06424998    -0.24869354   -99.69813815    -0.01642748    -0.00108070  0.57D-04  0.11D-03     8.33
    3     3     3     1.06425541    -0.24866827   -99.69811288    -0.01658430    -0.00109618  0.58D-04  0.11D-03     8.33
    3     4     4     1.02981440    -0.16685710   -99.17505076    -0.00527757    -0.00039505  0.45D-04  0.40D-04     8.33
    3     5     5     1.02981330    -0.16685563   -99.17504929    -0.00527783    -0.00039691  0.46D-04  0.40D-04     8.33
    3     6     6     1.02981045    -0.16684981   -99.17504347    -0.00529601    -0.00039782  0.45D-04  0.40D-04     8.33
    3     7     7     1.02985494    -0.16684904   -99.17504270    -0.00529953    -0.00039645  0.46D-04  0.40D-04     8.33
    3     8     8     1.02980085    -0.16684174   -99.17503540    -0.00531465    -0.00040755  0.46D-04  0.42D-04     8.33
    4     1     1     1.06635029    -0.25007747   -99.69952209    -0.00137748    -0.00011602  0.58D-05  0.11D-04    11.67
    4     2     2     1.06634517    -0.25007659   -99.69952120    -0.00138305    -0.00011660  0.58D-05  0.11D-04    11.67
    4     3     3     1.06633708    -0.25007395   -99.69951856    -0.00140568    -0.00011836  0.59D-05  0.11D-04    11.67
    4     4     4     1.03132628    -0.16737124   -99.17556490    -0.00051414    -0.00006152  0.73D-05  0.64D-05    11.67
    4     5     5     1.03132647    -0.16737119   -99.17556485    -0.00051556    -0.00006150  0.73D-05  0.64D-05    11.67
    4     6     6     1.03133266    -0.16737019   -99.17556385    -0.00052038    -0.00006175  0.74D-05  0.63D-05    11.67
    4     7     7     1.03137246    -0.16737004   -99.17556370    -0.00052100    -0.00006206  0.67D-05  0.64D-05    11.67
    4     8     8     1.03135147    -0.16736787   -99.17556153    -0.00052614    -0.00006406  0.69D-05  0.70D-05    11.67
    5     1     1     1.06730193    -0.25022289   -99.69966750    -0.00014542    -0.00001369  0.83D-06  0.13D-05    14.80
    5     2     2     1.06730297    -0.25022277   -99.69966739    -0.00014619    -0.00001375  0.84D-06  0.13D-05    14.80
    5     3     3     1.06729998    -0.25022250   -99.69966712    -0.00014855    -0.00001396  0.85D-06  0.13D-05    14.80
    5     4     4     1.03179520    -0.16745104   -99.17564470    -0.00007980    -0.00001122  0.98D-06  0.12D-05    14.80
    5     5     5     1.03179656    -0.16745098   -99.17564464    -0.00007979    -0.00001124  0.99D-06  0.12D-05    14.80
    5     6     6     1.03179893    -0.16745074   -99.17564440    -0.00008055    -0.00001127  0.99D-06  0.12D-05    14.80
    5     7     7     1.03182078    -0.16745071   -99.17564437    -0.00008067    -0.00001142  0.94D-06  0.12D-05    14.80
    5     8     8     1.03181334    -0.16744981   -99.17564347    -0.00008193    -0.00001192  0.92D-06  0.13D-05    14.80
    6     1     1     1.06721051    -0.25024058   -99.69968520    -0.00001770    -0.00000204  0.11D-06  0.21D-06    17.94
    6     2     2     1.06721067    -0.25024056   -99.69968518    -0.00001779    -0.00000205  0.11D-06  0.21D-06    17.94
    6     3     3     1.06720973    -0.25024055   -99.69968517    -0.00001805    -0.00000207  0.11D-06  0.21D-06    17.94
    6     4     4     1.03191574    -0.16746611   -99.17565977    -0.00001507    -0.00000264  0.30D-06  0.27D-06    17.94
    6     5     5     1.03191625    -0.16746609   -99.17565975    -0.00001511    -0.00000265  0.30D-06  0.27D-06    17.94
    6     6     6     1.03192581    -0.16746607   -99.17565972    -0.00001532    -0.00000275  0.28D-06  0.28D-06    17.94
    6     7     7     1.03191808    -0.16746596   -99.17565962    -0.00001525    -0.00000267  0.29D-06  0.27D-06    17.94
    6     8     8     1.03191677    -0.16746569   -99.17565935    -0.00001588    -0.00000285  0.31D-06  0.29D-06    17.94
    7     1     1     1.06724521    -0.25024322   -99.69968783    -0.00000263    -0.00000041  0.22D-07  0.38D-07    21.14
    7     2     2     1.06724634    -0.25024319   -99.69968781    -0.00000263    -0.00000040  0.21D-07  0.38D-07    21.14
    7     3     3     1.06724577    -0.25024319   -99.69968780    -0.00000263    -0.00000040  0.22D-07  0.38D-07    21.14
    7     4     4     1.03201569    -0.16746961   -99.17566327    -0.00000350    -0.00000073  0.71D-07  0.72D-07    21.14
    7     5     5     1.03200866    -0.16746952   -99.17566318    -0.00000343    -0.00000070  0.74D-07  0.69D-07    21.14
    7     6     6     1.03200869    -0.16746950   -99.17566316    -0.00000344    -0.00000070  0.74D-07  0.69D-07    21.14
    7     7     7     1.03200966    -0.16746940   -99.17566306    -0.00000344    -0.00000070  0.74D-07  0.70D-07    21.14
    7     8     8     1.03201209    -0.16746935   -99.17566301    -0.00000367    -0.00000077  0.74D-07  0.78D-07    21.14
    8     1     1     1.06726934    -0.25024371   -99.69968833    -0.00000050    -0.00000008  0.34D-08  0.72D-08    24.32
    8     2     2     1.06726961    -0.25024367   -99.69968829    -0.00000048    -0.00000008  0.32D-08  0.72D-08    24.32
    8     3     3     1.06726957    -0.25024367   -99.69968829    -0.00000049    -0.00000008  0.33D-08  0.72D-08    24.32
    8     4     4     1.03204009    -0.16747052   -99.17566418    -0.00000090    -0.00000020  0.14D-07  0.23D-07    24.32
    8     5     5     1.03203670    -0.16747037   -99.17566403    -0.00000086    -0.00000019  0.14D-07  0.22D-07    24.32
    8     6     6     1.03203676    -0.16747036   -99.17566402    -0.00000086    -0.00000019  0.14D-07  0.22D-07    24.32
    8     7     7     1.03203827    -0.16747029   -99.17566395    -0.00000089    -0.00000022  0.13D-07  0.27D-07    24.32
    8     8     8     1.03203718    -0.16747026   -99.17566392    -0.00000091    -0.00000019  0.14D-07  0.22D-07    24.32
    9     1     1     1.06726944    -0.25024381   -99.69968843    -0.00000010    -0.00000002  0.83D-09  0.16D-08    27.56
    9     2     2     1.06726947    -0.25024377   -99.69968838    -0.00000009    -0.00000002  0.83D-09  0.16D-08    27.56
    9     3     3     1.06726941    -0.25024377   -99.69968838    -0.00000009    -0.00000002  0.83D-09  0.16D-08    27.56
    9     4     4     1.03205281    -0.16747077   -99.17566443    -0.00000026    -0.00000007  0.38D-08  0.79D-08    27.56
    9     5     5     1.03205113    -0.16747061   -99.17566427    -0.00000024    -0.00000006  0.39D-08  0.74D-08    27.56
    9     6     6     1.03205124    -0.16747060   -99.17566426    -0.00000024    -0.00000006  0.39D-08  0.75D-08    27.56
    9     7     7     1.03205116    -0.16747056   -99.17566422    -0.00000027    -0.00000007  0.43D-08  0.85D-08    27.56
    9     8     8     1.03205148    -0.16747051   -99.17566417    -0.00000024    -0.00000006  0.38D-08  0.75D-08    27.56
   10     1     1     1.06726943    -0.25024381   -99.69968843    -0.00000000    -0.00000002  0.83D-09  0.16D-08    29.92
   10     2     2     1.06726944    -0.25024377   -99.69968838    -0.00000000    -0.00000002  0.83D-09  0.16D-08    29.92
   10     3     3     1.06726940    -0.25024377   -99.69968838    -0.00000000    -0.00000002  0.83D-09  0.16D-08    29.92
   10     4     4     1.03206176    -0.16747085   -99.17566451    -0.00000008    -0.00000002  0.16D-08  0.23D-08    29.92
   10     5     5     1.03206846    -0.16747071   -99.17566437    -0.00000009    -0.00000001  0.35D-09  0.94D-09    29.92
   10     6     6     1.03206076    -0.16747069   -99.17566435    -0.00000009    -0.00000002  0.16D-08  0.21D-08    29.92
   10     7     7     1.03206861    -0.16747068   -99.17566434    -0.00000012    -0.00000001  0.35D-09  0.11D-08    29.92
   10     8     8     1.03206816    -0.16747061   -99.17566427    -0.00000010    -0.00000001  0.33D-09  0.93D-09    29.92


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.2%
 S   0.8%   1.8%
 P   3.4%  15.9%  49.4%

 Initialization:   2.7%
 Other:           24.8%

 Total CPU:       29.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 202/2000           0.9600444  -0.0000085  -0.0000236  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000179
 2022/000           0.0000236   0.0024490   0.9600413   0.0000000  -0.0000000   0.0000117  -0.0000000   0.0000000
 20/22000           0.0000085   0.9600412  -0.0024490  -0.0000000  -0.0000273  -0.0000000   0.0000000  -0.0000000
 20/2/0\0           0.0000000   0.0000000   0.0000000   0.1132224   0.0000042   0.0000247   0.7935538  -0.0001299
 202//\00          -0.0000000  -0.0000000   0.0000000   0.7435016  -0.0000134   0.0000093   0.2984878  -0.0000360
 20//20\0           0.0000006   0.0635391  -0.0001621   0.0000149   0.6943027   0.0000158  -0.0000058   0.0000025
 20//2\00          -0.0635391   0.0000006   0.0000016  -0.0000127  -0.0000025  -0.0000306   0.0001155   0.6941977
 202//0\0          -0.0000016  -0.0001621  -0.0635390  -0.0000000  -0.0000158   0.6941320  -0.0000216   0.0000306
 20/2/\00          -0.0000016  -0.0001621  -0.0635390   0.0000000   0.0000158  -0.6938682   0.0000216  -0.0000306
 202//00\           0.0635391  -0.0000006  -0.0000016  -0.0000127  -0.0000025  -0.0000306   0.0001154   0.6937976
 20/2/00\           0.0000006   0.0635391  -0.0001621  -0.0000149  -0.6936923  -0.0000158   0.0000058  -0.0000025
 20//200\          -0.0000000  -0.0000000   0.0000000  -0.6306006   0.0000176   0.0000154   0.4944092  -0.0000938
 /\2/2000           0.0613393  -0.0000005  -0.0000015  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000043
 /\/22000           0.0000005   0.0613392  -0.0001565  -0.0000000  -0.0000068  -0.0000000   0.0000000  -0.0000000
 /\22/000           0.0000015   0.0001565   0.0613392   0.0000000  -0.0000000   0.0000028  -0.0000000   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 202/\000  10.2     0.0886290  -0.0000008  -0.0000022   0.0000004   0.0000001   0.0000011  -0.0000040  -0.0241864
 20/\2000  11.2    -0.0886289   0.0000008   0.0000022   0.0000004   0.0000001   0.0000011  -0.0000040  -0.0242198
 20/2\000  10.2     0.0000008   0.0886286  -0.0002261   0.0000005   0.0241774   0.0000005  -0.0000002   0.0000001
 20/\2000  12.2     0.0000008   0.0886286  -0.0002261  -0.0000005  -0.0242287  -0.0000006   0.0000002  -0.0000001
 202/\000  12.2    -0.0000022  -0.0002261  -0.0886285   0.0000000   0.0000006  -0.0242126   0.0000008  -0.0000011
 20/2\000  11.2    -0.0000022  -0.0002261  -0.0886285  -0.0000000  -0.0000005   0.0241901  -0.0000008   0.0000011
 202/\000   7.2    -0.0715543   0.0000006   0.0000018  -0.0000007  -0.0000001  -0.0000016   0.0000060   0.0362708
 20/\2000   8.2     0.0715542  -0.0000006  -0.0000018  -0.0000007  -0.0000001  -0.0000016   0.0000060   0.0363278
 20/2\000   7.2    -0.0000006  -0.0715541   0.0001825  -0.0000008  -0.0362564  -0.0000008   0.0000003  -0.0000001
 20/2\000   8.2     0.0000018   0.0001825   0.0715540   0.0000000   0.0000008  -0.0362398   0.0000011  -0.0000016
 20/\2000   9.2    -0.0000006  -0.0715538   0.0001825   0.0000008   0.0363443   0.0000008  -0.0000003   0.0000001
 202/\000   9.2     0.0000018   0.0001825   0.0715536  -0.0000000  -0.0000008   0.0362789  -0.0000011   0.0000016

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000024    0.000009    0.964279    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2           0.002460    0.964276   -0.000009   -0.000000    0.000000    0.000000    0.000000   -0.000000
 3           0.964276   -0.002460   -0.000024    0.000000    0.000000   -0.000000    0.000000   -0.000000
 4           0.000000    0.000000    0.000000   -0.000018   -0.000000    0.000021    0.100696    0.979163
 5           0.000000    0.000047    0.000000   -0.000004   -0.000022    0.984324    0.000006   -0.000022
 6          -0.000021    0.000000    0.000000   -0.000043    0.984327    0.000022    0.000030   -0.000003
 7           0.000000   -0.000000   -0.000000    0.000164   -0.000031   -0.000008    0.979160   -0.100696
 8          -0.000000    0.000000   -0.000031    0.984324    0.000043    0.000004   -0.000161    0.000035

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.964279   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000015
 2          -0.000000    0.964279    0.000000    0.000000    0.000023   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.964279   -0.000000   -0.000000   -0.000010    0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.984327   -0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.000023   -0.000000   -0.000000    0.984324   -0.000000    0.000000   -0.000000
 6           0.000000   -0.000000   -0.000010   -0.000000   -0.000000    0.984327   -0.000000    0.000000
 7          -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.984324   -0.000000
 8          -0.000015    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.984324


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96427913 (fixed)   0.96797238 (relaxed)   0.96427913 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00767479    0.00000000   -0.12615199
 Singles      0.04886798   -0.11649289   -0.11969170
 Pairs        0.01891773   -0.00000000   -0.00440012
 Total        1.07546050   -0.11649289   -0.25024381
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.44944462
 Nuclear energy                         0.00000000
 Kinetic energy                        99.94819114
 One electron energy                 -139.13029563
 Two electron energy                   39.43060721
 Virial quotient                       -0.99751368
 Correlation energy                    -0.25024381
 !MRCI STATE 1.2 Energy               -99.699688426032

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.71857195 (Davidson, fixed reference)
 Cluster corrected energies           -99.71652219 (Davidson, relaxed reference)
 Cluster corrected energies           -99.71857195 (Davidson, rotated reference)

 Cluster corrected energies           -99.71258512 (Pople, fixed reference)
 Cluster corrected energies           -99.71115629 (Pople, relaxed reference)
 Cluster corrected energies           -99.71258512 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.96427598 (fixed)   0.96797237 (relaxed)   0.96427912 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00767480   -0.00000000   -0.12615198
 Singles      0.04886795   -0.11649287   -0.11969169
 Pairs        0.01891777    0.00000000   -0.00440010
 Total        1.07546052   -0.11649287   -0.25024377
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.44944462
 Nuclear energy                         0.00000000
 Kinetic energy                        99.94818687
 One electron energy                 -139.13029364
 Two electron energy                   39.43060525
 Virial quotient                       -0.99751373
 Correlation energy                    -0.25024377
 !MRCI STATE 2.2 Energy               -99.699688384221

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.71857191 (Davidson, fixed reference)
 Cluster corrected energies           -99.71652214 (Davidson, relaxed reference)
 Cluster corrected energies           -99.71857191 (Davidson, rotated reference)

 Cluster corrected energies           -99.71258508 (Pople, fixed reference)
 Cluster corrected energies           -99.71115625 (Pople, relaxed reference)
 Cluster corrected energies           -99.71258508 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96427600 (fixed)   0.96797239 (relaxed)   0.96427914 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00767480    0.00000000   -0.12615196
 Singles      0.04886790   -0.11649289   -0.11969170
 Pairs        0.01891778    0.00000000   -0.00440010
 Total        1.07546048   -0.11649289   -0.25024377
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.44944462
 Nuclear energy                         0.00000000
 Kinetic energy                        99.94818468
 One electron energy                 -139.13029346
 Two electron energy                   39.43060508
 Virial quotient                       -0.99751375
 Correlation energy                    -0.25024377
 !MRCI STATE 3.2 Energy               -99.699688383845

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.71857190 (Davidson, fixed reference)
 Cluster corrected energies           -99.71652213 (Davidson, relaxed reference)
 Cluster corrected energies           -99.71857190 (Davidson, rotated reference)

 Cluster corrected energies           -99.71258507 (Pople, fixed reference)
 Cluster corrected energies           -99.71115624 (Pople, relaxed reference)
 Cluster corrected energies           -99.71258507 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.97916282 (fixed)   0.98434458 (relaxed)   0.98432698 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003578   -0.00000000   -0.00049314
 Singles      0.01960293   -0.07159961   -0.07255331
 Pairs        0.01245998   -0.09536826   -0.09442440
 Total        1.03209869   -0.16696788   -0.16747085
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.00819366
 Nuclear energy                         0.00000000
 Kinetic energy                        99.33529147
 One electron energy                 -134.74797024
 Two electron energy                   35.57230573
 Virial quotient                       -0.99839305
 Correlation energy                    -0.16747085
 !MRCI STATE 4.2 Energy               -99.175664512908

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.18104011 (Davidson, fixed reference)
 Cluster corrected energies           -99.18103392 (Davidson, relaxed reference)
 Cluster corrected energies           -99.18104011 (Davidson, rotated reference)

 Cluster corrected energies           -99.17928615 (Pople, fixed reference)
 Cluster corrected energies           -99.17928195 (Pople, relaxed reference)
 Cluster corrected energies           -99.17928615 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.98432367 (fixed)   0.98434139 (relaxed)   0.98432368 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003600   -0.00000000   -0.09289661
 Singles      0.01960726   -0.07159975   -0.07255393
 Pairs        0.01246235    0.00000212   -0.00202017
 Total        1.03210561   -0.07159763   -0.16747071
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.00819366
 Nuclear energy                         0.00000000
 Kinetic energy                        99.33521975
 One electron energy                 -134.74780955
 Two electron energy                   35.57214519
 Virial quotient                       -0.99839377
 Correlation energy                    -0.16747071
 !MRCI STATE 5.2 Energy               -99.175664365813

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.18104111 (Davidson, fixed reference)
 Cluster corrected energies           -99.18103489 (Davidson, relaxed reference)
 Cluster corrected energies           -99.18104111 (Davidson, rotated reference)

 Cluster corrected energies           -99.17928679 (Pople, fixed reference)
 Cluster corrected energies           -99.17928256 (Pople, relaxed reference)
 Cluster corrected energies           -99.17928679 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.98432744 (fixed)   0.98434506 (relaxed)   0.98432744 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003581   -0.00000000   -0.09289589
 Singles      0.01960175   -0.07159936   -0.07255291
 Pairs        0.01246016    0.00000031   -0.00202189
 Total        1.03209772   -0.07159905   -0.16747069
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.00819366
 Nuclear energy                         0.00000000
 Kinetic energy                        99.33529515
 One electron energy                 -134.74798621
 Two electron energy                   35.57232186
 Virial quotient                       -0.99839301
 Correlation energy                    -0.16747069
 !MRCI STATE 6.2 Energy               -99.175664350152

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.18103978 (Davidson, fixed reference)
 Cluster corrected energies           -99.18103359 (Davidson, relaxed reference)
 Cluster corrected energies           -99.18103978 (Davidson, rotated reference)

 Cluster corrected energies           -99.17928588 (Pople, fixed reference)
 Cluster corrected energies           -99.17928167 (Pople, relaxed reference)
 Cluster corrected energies           -99.17928588 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.97915957 (fixed)   0.98434132 (relaxed)   0.98432375 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003569   -0.00000000   -0.10239653
 Singles      0.01960768   -0.07160019   -0.07255417
 Pairs        0.01246208    0.00980756    0.00748003
 Total        1.03210544   -0.06179264   -0.16747068
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.00819366
 Nuclear energy                         0.00000000
 Kinetic energy                        99.33522305
 One electron energy                 -134.74781544
 Two electron energy                   35.57215110
 Virial quotient                       -0.99839373
 Correlation energy                    -0.16747068
 !MRCI STATE 7.2 Energy               -99.175664339354

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.18104106 (Davidson, fixed reference)
 Cluster corrected energies           -99.18103489 (Davidson, relaxed reference)
 Cluster corrected energies           -99.18104106 (Davidson, rotated reference)

 Cluster corrected energies           -99.17928675 (Pople, fixed reference)
 Cluster corrected energies           -99.17928255 (Pople, relaxed reference)
 Cluster corrected energies           -99.17928675 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.98432386 (fixed)   0.98434153 (relaxed)   0.98432387 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003589   -0.00000000   -0.09289135
 Singles      0.01960702   -0.07159960   -0.07255380
 Pairs        0.01246229   -0.00000338   -0.00202546
 Total        1.03210520   -0.07160298   -0.16747061
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.00819366
 Nuclear energy                         0.00000000
 Kinetic energy                        99.33521153
 One electron energy                 -134.74780533
 Two electron energy                   35.57214106
 Virial quotient                       -0.99839385
 Correlation energy                    -0.16747061
 !MRCI STATE 8.2 Energy               -99.175664270538

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.18104095 (Davidson, fixed reference)
 Cluster corrected energies           -99.18103475 (Davidson, relaxed reference)
 Cluster corrected energies           -99.18104095 (Davidson, rotated reference)

 Cluster corrected energies           -99.17928665 (Pople, fixed reference)
 Cluster corrected energies           -99.17928243 (Pople, relaxed reference)
 Cluster corrected energies           -99.17928665 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.80       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       26.94       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        36.41     32.43      3.20      0.11      0.42
 REAL TIME  *        46.83 SEC
 DISK USED  *        56.82 MB (local),      731.45 MB (total)
 SF USED    *       268.39 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -99.71857195  AU                              
 SETTING HLSDIAG(2)     =       -99.71857191  AU                              
 SETTING HLSDIAG(3)     =       -99.71857190  AU                              
 SETTING HLSDIAG(4)     =       -99.18104011  AU                              
 SETTING HLSDIAG(5)     =       -99.18104111  AU                              
 SETTING HLSDIAG(6)     =       -99.18103978  AU                              
 SETTING HLSDIAG(7)     =       -99.18104106  AU                              
 SETTING HLSDIAG(8)     =       -99.18104095  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Quartet 
 Number of electrons:                  9
 Maximum number of shells:             3
 Maximum number of spin couplings:    14

 Reference space:      344 conf      656 CSFs
 N elec internal:      736 conf     1344 CSFs
 N-1 el internal:      728 conf     1932 CSFs
 N-2 el internal:      492 conf     2060 CSFs

 Number of electrons in valence space:                      7
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      53 (  23  30 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -99.01773181
     2       -99.01773181
     3       -99.01773181
     4       -99.01184153
     5       -99.01184153
     6       -99.01184153
     7       -99.01184153
     8       -99.01184153

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.8522D-07

 Number of blocks in overlap matrix:    10   Smallest eigenvalue:  0.85D-07
 Number of N-2 electron functions:     443
 Number of N-1 electron functions:    1932

 Number of internal configurations:                  656
 Number of singly external configurations:         51044
 Number of doubly external configurations:        311687
 Total number of contracted configurations:       363387
 Total number of uncontracted configurations:    1483482

 Diagonal Coupling coefficients finished.               Storage:    888452 words, CPU-Time:      0.20 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    262189 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -99.01773181    -0.00000000    -0.16179561  0.18D-01  0.90D-02     0.52
    1     2     2     1.00000000     0.00000000   -99.01773181     0.00000000    -0.16188706  0.18D-01  0.90D-02     0.52
    1     3     3     1.00000000     0.00000000   -99.01773181    -0.00000000    -0.16201941  0.18D-01  0.90D-02     0.52
    1     4     4     1.00000000     0.00000000   -99.01184153     0.00000000    -0.16196312  0.19D-01  0.90D-02     0.52
    1     5     5     1.00000000     0.00000000   -99.01184153    -0.00000000    -0.16201930  0.19D-01  0.90D-02     0.52
    1     6     6     1.00000000     0.00000000   -99.01184153     0.00000000    -0.16215455  0.19D-01  0.90D-02     0.52
    1     7     7     1.00000000     0.00000000   -99.01184153    -0.00000000    -0.16262681  0.19D-01  0.91D-02     0.52
    1     8     8     1.00000000     0.00000000   -99.01184153     0.00000000    -0.16516440  0.19D-01  0.98D-02     0.52
    2     1     1     1.02652679    -0.16016908   -99.17790090    -0.16016908    -0.00506911  0.31D-03  0.43D-03     3.05
    2     2     2     1.02651414    -0.16015339   -99.17788521    -0.16015339    -0.00507275  0.31D-03  0.43D-03     3.05
    2     3     3     1.02650740    -0.16012953   -99.17786134    -0.16012953    -0.00508658  0.31D-03  0.43D-03     3.05
    2     4     4     1.02707755    -0.16070035   -99.17254188    -0.16070035    -0.00498626  0.29D-03  0.44D-03     3.05
    2     5     5     1.02715842    -0.16064493   -99.17248646    -0.16064493    -0.00500828  0.31D-03  0.42D-03     3.05
    2     6     6     1.02724450    -0.16040807   -99.17224960    -0.16040807    -0.00517565  0.32D-03  0.43D-03     3.05
    2     7     7     1.02723069    -0.16039265   -99.17223418    -0.16039265    -0.00518020  0.32D-03  0.43D-03     3.05
    2     8     8     1.02722495    -0.16038100   -99.17222252    -0.16038100    -0.00519248  0.32D-03  0.44D-03     3.05
    3     1     1     1.02782818    -0.16576593   -99.18349774    -0.00559684    -0.00042079  0.24D-04  0.41D-04     5.61
    3     2     2     1.02782551    -0.16575930   -99.18349111    -0.00560590    -0.00042458  0.25D-04  0.41D-04     5.61
    3     3     3     1.02782380    -0.16575918   -99.18349099    -0.00562965    -0.00042559  0.25D-04  0.41D-04     5.61
    3     4     4     1.02842432    -0.16618973   -99.17803126    -0.00548938    -0.00041261  0.29D-04  0.40D-04     5.61
    3     5     5     1.02844839    -0.16618155   -99.17802308    -0.00553662    -0.00041554  0.28D-04  0.40D-04     5.61
    3     6     6     1.02848590    -0.16615616   -99.17799768    -0.00574809    -0.00043445  0.28D-04  0.42D-04     5.61
    3     7     7     1.02848206    -0.16615309   -99.17799461    -0.00576044    -0.00043685  0.28D-04  0.42D-04     5.61
    3     8     8     1.02848307    -0.16614983   -99.17799136    -0.00576884    -0.00043808  0.28D-04  0.42D-04     5.61
    4     1     1     1.02872904    -0.16631391   -99.18404572    -0.00054798    -0.00006265  0.58D-05  0.60D-05     8.15
    4     2     2     1.02873041    -0.16631383   -99.18404564    -0.00055453    -0.00006258  0.58D-05  0.60D-05     8.15
    4     3     3     1.02873060    -0.16631296   -99.18404477    -0.00055378    -0.00006322  0.58D-05  0.61D-05     8.15
    4     4     4     1.02954750    -0.16673133   -99.17857285    -0.00054160    -0.00006501  0.58D-05  0.62D-05     8.15
    4     5     5     1.02955414    -0.16672920   -99.17857073    -0.00054765    -0.00006556  0.58D-05  0.64D-05     8.15
    4     6     6     1.02954335    -0.16672758   -99.17856911    -0.00057143    -0.00006817  0.59D-05  0.66D-05     8.15
    4     7     7     1.02954386    -0.16672751   -99.17856903    -0.00057442    -0.00006824  0.59D-05  0.66D-05     8.15
    4     8     8     1.02954389    -0.16672688   -99.17856840    -0.00057705    -0.00006871  0.59D-05  0.66D-05     8.15
    5     1     1     1.02886855    -0.16639644   -99.18412826    -0.00008254    -0.00001099  0.98D-06  0.11D-05    10.70
    5     2     2     1.02887120    -0.16639620   -99.18412801    -0.00008237    -0.00001112  0.99D-06  0.11D-05    10.70
    5     3     3     1.02887035    -0.16639613   -99.18412795    -0.00008317    -0.00001117  0.10D-05  0.11D-05    10.70
    5     4     4     1.02976868    -0.16681912   -99.17866065    -0.00008780    -0.00001243  0.74D-06  0.12D-05    10.70
    5     5     5     1.02976752    -0.16681849   -99.17866001    -0.00008929    -0.00001293  0.76D-06  0.13D-05    10.70
    5     6     6     1.02976838    -0.16681837   -99.17865989    -0.00009078    -0.00001298  0.76D-06  0.13D-05    10.70
    5     7     7     1.02976733    -0.16681836   -99.17865988    -0.00009085    -0.00001300  0.76D-06  0.13D-05    10.70
    5     8     8     1.02977672    -0.16681818   -99.17865971    -0.00009130    -0.00001299  0.74D-06  0.13D-05    10.70
    6     1     1     1.02887007    -0.16641214   -99.18414396    -0.00001570    -0.00000277  0.23D-06  0.27D-06    13.38
    6     2     2     1.02886953    -0.16641204   -99.18414385    -0.00001584    -0.00000282  0.24D-06  0.27D-06    13.38
    6     3     3     1.02886920    -0.16641202   -99.18414383    -0.00001588    -0.00000282  0.24D-06  0.27D-06    13.38
    6     4     4     1.02977518    -0.16683713   -99.17867866    -0.00001801    -0.00000330  0.18D-06  0.31D-06    13.38
    6     5     5     1.02977453    -0.16683699   -99.17867851    -0.00001850    -0.00000337  0.18D-06  0.32D-06    13.38
    6     6     6     1.02977448    -0.16683694   -99.17867846    -0.00001857    -0.00000339  0.18D-06  0.32D-06    13.38
    6     7     7     1.02977402    -0.16683694   -99.17867846    -0.00001858    -0.00000338  0.18D-06  0.32D-06    13.38
    6     8     8     1.02977188    -0.16683683   -99.17867835    -0.00001864    -0.00000343  0.19D-06  0.32D-06    13.38
    7     1     1     1.02889393    -0.16641596   -99.18414778    -0.00000382    -0.00000083  0.89D-07  0.75D-07    15.92
    7     2     2     1.02889363    -0.16641592   -99.18414774    -0.00000388    -0.00000085  0.92D-07  0.77D-07    15.92
    7     3     3     1.02889348    -0.16641590   -99.18414772    -0.00000389    -0.00000085  0.92D-07  0.77D-07    15.92
    7     4     4     1.02980314    -0.16684168   -99.17868320    -0.00000455    -0.00000102  0.95D-07  0.92D-07    15.92
    7     5     5     1.02980321    -0.16684163   -99.17868316    -0.00000465    -0.00000106  0.10D-06  0.94D-07    15.92
    7     6     6     1.02980328    -0.16684161   -99.17868313    -0.00000467    -0.00000106  0.10D-06  0.95D-07    15.92
    7     7     7     1.02980309    -0.16684160   -99.17868313    -0.00000467    -0.00000106  0.10D-06  0.95D-07    15.92
    7     8     8     1.02980409    -0.16684151   -99.17868303    -0.00000468    -0.00000107  0.10D-06  0.97D-07    15.92
    8     1     1     1.02889563    -0.16641699   -99.18414880    -0.00000102    -0.00000023  0.20D-07  0.24D-07    18.46
    8     2     2     1.02889556    -0.16641697   -99.18414878    -0.00000105    -0.00000024  0.20D-07  0.25D-07    18.46
    8     3     3     1.02889552    -0.16641695   -99.18414877    -0.00000105    -0.00000024  0.20D-07  0.25D-07    18.46
    8     4     4     1.02980376    -0.16684296   -99.17868448    -0.00000128    -0.00000031  0.23D-07  0.30D-07    18.46
    8     5     5     1.02980411    -0.16684296   -99.17868448    -0.00000132    -0.00000032  0.24D-07  0.32D-07    18.46
    8     6     6     1.02980424    -0.16684294   -99.17868446    -0.00000133    -0.00000033  0.25D-07  0.33D-07    18.46
    8     7     7     1.02980423    -0.16684294   -99.17868446    -0.00000133    -0.00000033  0.25D-07  0.32D-07    18.46
    8     8     8     1.02980386    -0.16684285   -99.17868437    -0.00000134    -0.00000033  0.25D-07  0.33D-07    18.46
    9     1     1     1.02889865    -0.16641729   -99.18414910    -0.00000030    -0.00000008  0.45D-08  0.82D-08    21.13
    9     2     2     1.02889849    -0.16641728   -99.18414909    -0.00000031    -0.00000008  0.46D-08  0.86D-08    21.13
    9     3     3     1.02889849    -0.16641726   -99.18414908    -0.00000031    -0.00000008  0.46D-08  0.86D-08    21.13
    9     4     4     1.02980459    -0.16684338   -99.17868490    -0.00000042    -0.00000011  0.59D-08  0.12D-07    21.13
    9     5     5     1.02980452    -0.16684337   -99.17868490    -0.00000042    -0.00000011  0.60D-08  0.11D-07    21.13
    9     6     6     1.02980456    -0.16684336   -99.17868489    -0.00000043    -0.00000012  0.59D-08  0.12D-07    21.13
    9     7     7     1.02980461    -0.16684336   -99.17868489    -0.00000043    -0.00000011  0.59D-08  0.12D-07    21.13
    9     8     8     1.02980395    -0.16684329   -99.17868482    -0.00000044    -0.00000012  0.64D-08  0.12D-07    21.13
   10     1     1     1.02890121    -0.16641739   -99.18414920    -0.00000010    -0.00000003  0.22D-08  0.26D-08    23.64
   10     2     2     1.02890119    -0.16641738   -99.18414920    -0.00000011    -0.00000003  0.23D-08  0.27D-08    23.64
   10     3     3     1.02890116    -0.16641737   -99.18414918    -0.00000011    -0.00000003  0.23D-08  0.27D-08    23.64
   10     4     4     1.02980692    -0.16684353   -99.17868506    -0.00000015    -0.00000004  0.36D-08  0.40D-08    23.64
   10     5     5     1.02980687    -0.16684352   -99.17868505    -0.00000015    -0.00000004  0.34D-08  0.38D-08    23.64
   10     6     6     1.02980692    -0.16684352   -99.17868504    -0.00000015    -0.00000004  0.37D-08  0.40D-08    23.64
   10     7     7     1.02980692    -0.16684352   -99.17868504    -0.00000015    -0.00000004  0.37D-08  0.40D-08    23.64
   10     8     8     1.02980716    -0.16684345   -99.17868497    -0.00000016    -0.00000004  0.41D-08  0.41D-08    23.64


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.6%   1.6%
 P   2.4%  16.3%  47.8%

 Initialization:   1.7%
 Other:           28.9%

 Total CPU:       23.6 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 20//200/          -0.0000000   0.0000000   0.0000000  -0.0000169   0.2028564  -0.0000000  -0.0000000   0.7769844
 20/2/0/0           0.0000000  -0.0000000  -0.0000000  -0.0000382   0.7741040   0.0000000   0.0000000   0.2124529
 20//20/0          -0.0000000   0.6954933   0.0000514   0.0000000   0.0000000   0.6952391  -0.0002277   0.0000000
 20//2/00          -0.0000000   0.0000514  -0.6954927  -0.0000000   0.0000000   0.0002277   0.6952397   0.0000000
 20/2//00           0.6954926   0.0000000  -0.0000000  -0.6952398  -0.0000325  -0.0000000  -0.0000000  -0.0000067
 202//0/0           0.6954910   0.0000000  -0.0000000   0.6952414   0.0000325  -0.0000000   0.0000000   0.0000067
 202//00/           0.0000000  -0.0000514   0.6954907  -0.0000000  -0.0000000   0.0002277   0.6952415  -0.0000000
 20/2/00/           0.0000000   0.6954901   0.0000514  -0.0000000  -0.0000000  -0.6952422   0.0002277  -0.0000000
 202///00          -0.0000000   0.0000000   0.0000000  -0.0000213   0.5712543  -0.0000000  -0.0000000  -0.5638067

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.985813    0.000000    0.000000   -0.000001    0.000000   -0.000000    0.000000    0.000000
 2           0.000000   -0.000073    0.985813   -0.000000    0.000000    0.000002   -0.000000    0.000000
 3          -0.000000    0.985813    0.000073   -0.000000   -0.000001    0.000000    0.000000    0.000000
 4           0.000001    0.000000    0.000000    0.985402   -0.000000    0.000000   -0.000042   -0.000021
 5           0.000000   -0.000000   -0.000000    0.000046    0.000000    0.000000    0.953685    0.247996
 6          -0.000000    0.000000   -0.000002    0.000000    0.000323    0.985402    0.000000   -0.000000
 7          -0.000000    0.000001    0.000000    0.000000    0.985402   -0.000323    0.000000   -0.000000
 8           0.000000   -0.000000   -0.000000    0.000009   -0.000000    0.000000   -0.247996    0.953685

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.985813    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.985813    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.985813    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.985402   -0.000000    0.000000   -0.000000    0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.985402   -0.000000    0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.985402    0.000000    0.000000
 7           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.985402   -0.000000
 8           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.985402


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.98581304 (fixed)   0.98585527 (relaxed)   0.98581304 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008567   -0.00000000   -0.09242577
 Singles      0.01664311   -0.07132651   -0.07200732
 Pairs        0.01226058   -0.00000000   -0.00198430
 Total        1.02898936   -0.07132651   -0.16641739
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.01773181
 Nuclear energy                         0.00000000
 Kinetic energy                        99.33488718
 One electron energy                 -134.80388454
 Two electron energy                   35.61973534
 Virial quotient                       -0.99848253
 Correlation energy                    -0.16641739
 !MRCI STATE 1.2 Energy               -99.184149201892

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.18897354 (Davidson, fixed reference)
 Cluster corrected energies           -99.18895887 (Davidson, relaxed reference)
 Cluster corrected energies           -99.18897354 (Davidson, rotated reference)

 Cluster corrected energies           -99.18656086 (Pople, fixed reference)
 Cluster corrected energies           -99.18655353 (Pople, relaxed reference)
 Cluster corrected energies           -99.18656086 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.98581304 (fixed)   0.98585528 (relaxed)   0.98581304 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008568   -0.00000000   -0.09242579
 Singles      0.01664315   -0.07132649   -0.07200733
 Pairs        0.01226052    0.00000000   -0.00198426
 Total        1.02898935   -0.07132649   -0.16641738
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.01773181
 Nuclear energy                         0.00000000
 Kinetic energy                        99.33489165
 One electron energy                 -134.80388950
 Two electron energy                   35.61974031
 Virial quotient                       -0.99848248
 Correlation energy                    -0.16641738
 !MRCI STATE 2.2 Energy               -99.184149198378

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.18897353 (Davidson, fixed reference)
 Cluster corrected energies           -99.18895886 (Davidson, relaxed reference)
 Cluster corrected energies           -99.18897353 (Davidson, rotated reference)

 Cluster corrected energies           -99.18656086 (Pople, fixed reference)
 Cluster corrected energies           -99.18655353 (Pople, relaxed reference)
 Cluster corrected energies           -99.18656086 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.98581306 (fixed)   0.98585529 (relaxed)   0.98581306 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008568   -0.00000000   -0.09242581
 Singles      0.01664312   -0.07132645   -0.07200732
 Pairs        0.01226052    0.00000000   -0.00198424
 Total        1.02898931   -0.07132645   -0.16641737
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.01773181
 Nuclear energy                         0.00000000
 Kinetic energy                        99.33489306
 One electron energy                 -134.80388962
 Two electron energy                   35.61974043
 Virial quotient                       -0.99848247
 Correlation energy                    -0.16641737
 !MRCI STATE 3.2 Energy               -99.184149182946

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.18897351 (Davidson, fixed reference)
 Cluster corrected energies           -99.18895884 (Davidson, relaxed reference)
 Cluster corrected energies           -99.18897351 (Davidson, rotated reference)

 Cluster corrected energies           -99.18656084 (Pople, fixed reference)
 Cluster corrected energies           -99.18655351 (Pople, relaxed reference)
 Cluster corrected energies           -99.18656084 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.98540187 (fixed)   0.98542165 (relaxed)   0.98540187 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004014    0.00000000   -0.09264836
 Singles      0.01745287   -0.07143848   -0.07219386
 Pairs        0.01235525    0.00000201   -0.00200130
 Total        1.02984825   -0.07143647   -0.16684353
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.01184153
 Nuclear energy                         0.00000000
 Kinetic energy                        99.33614393
 One electron energy                 -134.77141419
 Two electron energy                   35.59272913
 Virial quotient                       -0.99841489
 Correlation energy                    -0.16684353
 !MRCI STATE 4.2 Energy               -99.178685056764

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.18366504 (Davidson, fixed reference)
 Cluster corrected energies           -99.18365815 (Davidson, relaxed reference)
 Cluster corrected energies           -99.18366504 (Davidson, rotated reference)

 Cluster corrected energies           -99.18117450 (Pople, fixed reference)
 Cluster corrected energies           -99.18117105 (Pople, relaxed reference)
 Cluster corrected energies           -99.18117450 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95368478 (fixed)   0.98542167 (relaxed)   0.98540189 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004014    0.00000000   -0.06933163
 Singles      0.01745271   -0.07143840   -0.07219376
 Pairs        0.01235536   -0.02401077   -0.02531813
 Total        1.02984821   -0.09544917   -0.16684352
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.01184153
 Nuclear energy                         0.00000000
 Kinetic energy                        99.33613658
 One electron energy                 -134.77141235
 Two electron energy                   35.59272730
 Virial quotient                       -0.99841496
 Correlation energy                    -0.16684352
 !MRCI STATE 5.2 Energy               -99.178685045649

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.18366503 (Davidson, fixed reference)
 Cluster corrected energies           -99.18365813 (Davidson, relaxed reference)
 Cluster corrected energies           -99.18366503 (Davidson, rotated reference)

 Cluster corrected energies           -99.18117448 (Pople, fixed reference)
 Cluster corrected energies           -99.18117104 (Pople, relaxed reference)
 Cluster corrected energies           -99.18117448 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.98540181 (fixed)   0.98542164 (relaxed)   0.98540187 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004014    0.00000000   -0.09264636
 Singles      0.01745292   -0.07143852   -0.07219386
 Pairs        0.01235520   -0.00000000   -0.00200330
 Total        1.02984826   -0.07143852   -0.16684352
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.01184153
 Nuclear energy                         0.00000000
 Kinetic energy                        99.33614805
 One electron energy                 -134.77141560
 Two electron energy                   35.59273056
 Virial quotient                       -0.99841485
 Correlation energy                    -0.16684352
 !MRCI STATE 6.2 Energy               -99.178685042567

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.18366503 (Davidson, fixed reference)
 Cluster corrected energies           -99.18365813 (Davidson, relaxed reference)
 Cluster corrected energies           -99.18366503 (Davidson, rotated reference)

 Cluster corrected energies           -99.18117448 (Pople, fixed reference)
 Cluster corrected energies           -99.18117104 (Pople, relaxed reference)
 Cluster corrected energies           -99.18117448 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.98540182 (fixed)   0.98542165 (relaxed)   0.98540187 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004014    0.00000000   -0.09264638
 Singles      0.01745290   -0.07143850   -0.07219386
 Pairs        0.01235521    0.00000000   -0.00200327
 Total        1.02984825   -0.07143850   -0.16684352
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.01184153
 Nuclear energy                         0.00000000
 Kinetic energy                        99.33614599
 One electron energy                 -134.77141508
 Two electron energy                   35.59273004
 Virial quotient                       -0.99841487
 Correlation energy                    -0.16684352
 !MRCI STATE 7.2 Energy               -99.178685040926

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.18366503 (Davidson, fixed reference)
 Cluster corrected energies           -99.18365813 (Davidson, relaxed reference)
 Cluster corrected energies           -99.18366503 (Davidson, rotated reference)

 Cluster corrected energies           -99.18117448 (Pople, fixed reference)
 Cluster corrected energies           -99.18117103 (Pople, relaxed reference)
 Cluster corrected energies           -99.18117448 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.95368454 (fixed)   0.98542153 (relaxed)   0.98540167 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004031    0.00000000   -0.00298832
 Singles      0.01745272   -0.07143781   -0.07219369
 Pairs        0.01235564   -0.09233484   -0.09166144
 Total        1.02984868   -0.16377265   -0.16684345
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.01184153
 Nuclear energy                         0.00000000
 Kinetic energy                        99.33617816
 One electron energy                 -134.77143964
 Two electron energy                   35.59275466
 Virial quotient                       -0.99841454
 Correlation energy                    -0.16684345
 !MRCI STATE 8.2 Energy               -99.178684973848

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.18366503 (Davidson, fixed reference)
 Cluster corrected energies           -99.18365810 (Davidson, relaxed reference)
 Cluster corrected energies           -99.18366503 (Davidson, rotated reference)

 Cluster corrected energies           -99.18117445 (Pople, fixed reference)
 Cluster corrected energies           -99.18117099 (Pople, relaxed reference)
 Cluster corrected energies           -99.18117445 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.80       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       50.25       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        61.70     25.28     32.43      3.20      0.11      0.42
 REAL TIME  *        76.26 SEC
 DISK USED  *        80.13 MB (local),     1011.16 MB (total)
 SF USED    *       268.39 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(9)     =       -99.18897354  AU                              
 SETTING HLSDIAG(10)    =       -99.18897353  AU                              
 SETTING HLSDIAG(11)    =       -99.18897351  AU                              
 SETTING HLSDIAG(12)    =       -99.18366504  AU                              
 SETTING HLSDIAG(13)    =       -99.18366503  AU                              
 SETTING HLSDIAG(14)    =       -99.18366503  AU                              
 SETTING HLSDIAG(15)    =       -99.18366503  AU                              
 SETTING HLSDIAG(16)    =       -99.18366503  AU                              


        HLSDIAG
    -99.71857195
    -99.71857191
    -99.71857190
    -99.18104011
    -99.18104111
    -99.18103978
    -99.18104106
    -99.18104095
    -99.18897354
    -99.18897353
    -99.18897351
    -99.18366504
    -99.18366503
    -99.18366503
    -99.18366503
    -99.18366503
                                                  


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

 Time for Seward_LS:       0.24 sec

         645947. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      291 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.24 sec, REAL time:      0.26 sec


 SORTLS1 read     1178670. and wrote     1178670. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.02 sec
 SORTLS2 read     1178670. and wrote     5731155. SO integrals in    36 records. CPU time:      0.00 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    50.3 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    50.3 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:    -99.699688    -99.699688    -99.699688    -99.175665    -99.175664    -99.175664    -99.175664    -99.175664
 Replaced energies:    -99.718572    -99.718572    -99.718572    -99.181040    -99.181041    -99.181040    -99.181041    -99.181041

 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:    -99.184149    -99.184149    -99.184149    -99.178685    -99.178685    -99.178685    -99.178685    -99.178685
 Replaced energies:    -99.188974    -99.188974    -99.188974    -99.183665    -99.183665    -99.183665    -99.183665    -99.183665

 >>> Fock matrix approximation error in all internal so: 
  -3.3288587966540057       (exact)   -3.3464495474282319       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.4784249133834974E-005  (exact)    1.0144217981512011E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.8742835134831696E-005  (exact)    2.0058959034187636E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.2803972105989243E-004  (exact)    2.4405076640937021E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.5879449641951397E-004  (exact)   -9.1910452745613401E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.1639846360794275       (exact)   -5.5266136562664459       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.4592318343874813E-004  (exact)    2.4867842607604435E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.5332052880069478       (exact)    5.9062932025627681       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.9845196431377651E-005  (exact)   -1.0611690037420707E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.1201939707793425E-004  (exact)   -3.3690524065710723E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.2263826217082960       (exact)    2.4312433544182723       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.6874172222484679E-004  (exact)   -2.9596658723063851E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.4917787190523873E-003  (exact)   -8.5869167413538047E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.3288278406410949       (exact)   -3.3661226967278339       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.0876931219803990E-004  (exact)    4.3633041830765736E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.1732400145743947E-004  (exact)   -1.2694520593068025E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.1611995808311812       (exact)    5.5843413617452402       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.9285044153655940E-006  (exact)    5.8999530099944238E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.2791117780626320E-004  (exact)    2.4659546840264117E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.8077866929543807       (exact)   -3.8261354861581780       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.5034609731787312E-004  (exact)    1.5171498116885363E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.0306000605321230E-004  (exact)   -9.6709278543260789E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.2467887129289667E-004  (exact)    3.9225726547189498E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.4774772785157484E-004  (exact)   -2.3247846628874681E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.3347423007936040E-004  (exact)    8.7594101921290013E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.6125778398960664       (exact)    5.2666436651250974       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.0552007847522894E-004  (exact)   -2.0666328807116287E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.1286924757370667       (exact)   -3.1610775088595506       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.9812302863104031E-003  (exact)    8.0638435482794767E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.6887001954840378E-004  (exact)   -1.5608981722954127E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.8874934516909789       (exact)   -7.2907409494945270       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.7936616211757398E-004  (exact)   -1.6580180118924592E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.6123882310091840E-005  (exact)    6.1121762789101929E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.3354698599708512E-004  (exact)    2.1955379910134181E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.2471271226993513E-003  (exact)   -1.2595877398072805E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.1835130803299183       (exact)   -3.9506681337459550       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.7688576928710570E-004  (exact)    1.6638756450584454E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.5136142970201643E-003  (exact)   -1.4009615847487519E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   10.413425645958780       (exact)    9.7558050162058034       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.8087754950708386E-003  (exact)   -1.6951238135302592E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.7135240239768304E-003  (exact)   -9.8105761353451375E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.8077637730800595       (exact)   -3.8458089405840967       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.3702045919088024E-003  (exact)    1.2939413650053322E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2746187150722760E-004  (exact)    1.1822444543791882E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.6106839684409282       (exact)   -5.2042546528198272       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.2360937687437794E-003  (exact)   -3.0333516389233380E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.4706142363001586E-004  (exact)   -2.2915328651685216E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.0921640193317210       (exact)    3.1241690491939846       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.8880432178684550E-003  (exact)   -7.9696870838359482E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.7099724376233927E-004  (exact)   -1.5804961696435851E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.9847575764061300       (exact)   -7.3800780168007529       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.8149328665378170E-004  (exact)   -1.6774395749360847E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.6903189682864582E-005  (exact)    6.1836900431013831E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.4826952636579578E-005  (exact)    2.3705513780964111E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.6884533079720061       (exact)   -5.0498611821991792       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.3121394564916312E-004  (exact)    1.4078357674860047E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.1460751099417885E-004  (exact)    1.2141652571292717E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.6834323069207460       (exact)    3.9022717174174097       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.9866445964266008E-004  (exact)   -7.4169723725999749E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.3288776231871982       (exact)    3.3660845349568360       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.4729076146392923E-005  (exact)    1.0249415762050273E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.9990590533815691E-004  (exact)    4.2823111573510081E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.2781203623954398E-004  (exact)    2.4648488114119819E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.5818257187514953E-004  (exact)   -9.2852253825807633E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.1603918910597173       (exact)   -5.5833229033064606       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.1652602642396835E-004  (exact)    2.1912016095064596E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.3288489266364900       (exact)   -3.3463515707201523       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.4918262293976303E-003  (exact)    8.5364746378917174E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.1045183702615764E-004  (exact)   -1.1821206734786962E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.1595833695989510       (exact)   -5.5222148254661443       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.1724304906611246E-004  (exact)   -1.2548795138284558E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.3128011018091053E-005  (exact)    4.6158810408324534E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.9997781137418017E-004  (exact)   -4.3253944461857358E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.9271675353059852       (exact)    6.4744268396488387       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.4377605509653319E-005  (exact)   -6.9120122659894966E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.5483145844295945E-004  (exact)    7.0202534492108378E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.8288269036358855       (exact)    8.2990726328629734       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.3411937649642608E-003  (exact)   -1.2614029286027238E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8341570379287026E-003  (exact)    2.8636926257736383E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.1110075703917337       (exact)    1.1225857532679679       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.2363016116054491E-004  (exact)    3.0247833337382341E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.4687866339204433E-004  (exact)    2.2820144072518162E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -10.859429228736779       (exact)   -10.037841427712419       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.5025382562444749E-004  (exact)    6.9994854934467287E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.7953365368733265E-004  (exact)   -4.4325593006237047E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.8077768171461925       (exact)    3.8459097431229221       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2132525836282635E-003  (exact)    1.2189517850824338E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.0308403023368100E-004  (exact)   -9.5615068497069682E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.8575993808837600E-003  (exact)   -1.7426538835081408E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.4767776508574283E-004  (exact)   -2.2971829516951338E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.3312094735687888E-004  (exact)    8.6547636795788964E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.6102158664880717       (exact)    5.2034944095692524       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.2134936539313964E-003  (exact)   -1.2258200000649395E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.8077655189279969       (exact)    3.8262027229705033       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.7134959590692953E-003  (exact)   -9.7605282044197616E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.2012167931040239E-004  (exact)   -1.1270683441328500E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.6095014422267591       (exact)   -5.2630529455055717       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.2739661209086212E-004  (exact)   -1.1952384973099766E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.6693824475366039E-005  (exact)    4.3813376939413380E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.8578462367656872E-003  (exact)   -1.7233773353053422E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.0463302542679703E-004  (exact)    1.0572375822213264E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.0844895323413031E-002  (exact)    1.0957918722356906E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.2512679651142298       (exact)    4.2955740252849353       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.6431208564499169E-005  (exact)    6.2089405785081380E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.4445230667763099E-005  (exact)   -5.9563708676582700E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8349419509027785       (exact)    2.6202813788794543       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.5121147147649407E-006  (exact)   -1.9152967544308484E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2514268758086566E-004  (exact)    1.1566459765288777E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.8438278984321661       (exact)   -3.8640386151647439       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.8055317076733463E-003  (exact)    9.8570884337070789E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2770432653269259E-004  (exact)    1.3666557812827684E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.9637661180438259       (exact)    6.3821414867278206       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.3563323990612897E-004  (exact)    1.4514125324610602E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.9899769173395425E-005  (exact)   -5.3400510050916091E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.1663741202364116E-005  (exact)    2.3183364405539714E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.4597386610015827E-005  (exact)   -9.5657608282277191E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.8055515413364627E-003  (exact)   -9.9154073388940858E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.8438352947090335       (exact)   -3.8868996505039082       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.1654766929779166E-005  (exact)   -8.0969429203355653E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.3559092355717913E-004  (exact)    1.4669318663686242E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.9621993141385916       (exact)   -6.4506220235643239       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.1786288403817472E-004  (exact)   -3.3758979051515118E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.6322485256801873E-004  (exact)   -2.8478238634135401E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.8397170572049522E-004  (exact)   -2.8715322201746453E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.97008373376825718       (exact)    1.0961789832197570       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.6232196388878895E-005  (exact)    3.7488549388709463E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.2848359801956128E-004  (exact)   -2.4985900040324423E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.8130661978170384       (exact)    7.2857513853609657       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.1152411429414734E-003  (exact)   -1.1915390928181899E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8051972230612882E-004  (exact)    2.8321827471889863E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.3968185179160484       (exact)    4.4181086571620023       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.1216194372662330E-002  (exact)   -1.1270504718796953E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.3879758018264560E-004  (exact)    1.3023727223202599E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.4814988257970798       (exact)    6.0818193981315476       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.4736964223270680E-004  (exact)    1.3828667133745120E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.4308215479376125E-005  (exact)   -5.0959378348201731E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.7092965520260211E-005  (exact)   -1.5851046149435237E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.8956620578326264       (exact)   -4.9465415753001798       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.4895281188197326E-004  (exact)    2.5040029658449960E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.1985739795740976E-004  (exact)    1.2110597511938852E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.3052099663460121E-005  (exact)   -5.8421251304992544E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.9032056733272539E-004  (exact)    2.7256449597288303E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.5169268096140444E-004  (exact)   -1.4055940738784739E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.7134718735765103E-004  (exact)    5.2939665979799988E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.4353012687394986       (exact)    3.1830612678730916       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.0822224463107790E-004  (exact)    1.0930379082263313E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.1216250946419681E-002  (exact)    1.1328315096452575E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.3968431312255083       (exact)    4.4407730972778818       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.2019651035627480E-003  (exact)   -3.9394952573083156E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.4741980530371348E-004  (exact)    1.3675083098592513E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.4805629631386168       (exact)   -6.0114459463955736       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.0070117983397433E-004  (exact)    7.6017665425140120E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.8627778134037379E-004  (exact)   -2.6555798741200278E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.4400642738879265E-003  (exact)   -1.4544523199388776E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -12.829598957268070       (exact)   -12.028215609747701       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8999211279870520E-004  (exact)    2.7217162679878348E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.1794342750862685E-003  (exact)    2.0233255448754103E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.8292163793703373       (exact)    1.7500412091377680       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.3972582299269755E-004  (exact)   -5.1185224377880859E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.3484942802629285       (exact)   -1.3623795060592960       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.2941697798773761E-004  (exact)    2.1201579290432658E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.0751658794631179E-004  (exact)    1.0024326988457184E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.5167603211607279E-004  (exact)    5.0983352071724440E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.0783339556746522E-003  (exact)   -1.9207012851392812E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -12.496195278368962       (exact)   -11.548399406727070       (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -99.71857195

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     128.03
                            0.00      -0.00       0.00       1.74      -0.00       0.00      12.23      -0.00       0.00      -0.33

    2   2.2  0.5  0.5       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00    -128.03       0.00
                            0.00      -0.00     128.01      -0.00      -0.03     -10.70       0.00      -0.00       0.33      -0.00

    3   3.2  0.5  0.5       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.33      -0.00
                           -0.00    -128.01      -0.00      -0.00     -10.70       0.03      -0.00      -0.00     128.03      -0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00  117974.60       0.00       0.00       0.00       0.00      -0.00      -0.03
                           -1.74       0.00       0.00       0.00      -0.00      -0.01       0.02     107.08       0.00      11.48

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00  117974.38       0.00       0.00       0.00      10.72      -0.00
                            0.00       0.03      10.70       0.00      -0.00     -54.12       0.00      -0.00      -0.00      -0.00

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00  117974.68       0.00       0.00       0.00      -0.00
                           -0.00      10.70      -0.03       0.01      54.12       0.00      -0.00      -0.00      10.72       0.00

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00  117974.39       0.00       0.00       0.02
                          -12.23      -0.00       0.00      -0.02      -0.00       0.00      -0.00     -15.25      -0.00       4.62

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00  117974.42       0.00      10.71
                            0.00       0.00       0.00    -107.08       0.00       0.00      15.25       0.00       0.00       0.03

    9   1.2  0.5 -0.5      -0.00    -128.03       0.33      -0.00      10.72       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.33    -128.03      -0.00       0.00     -10.72       0.00      -0.00      -0.00       0.00

   10   2.2  0.5 -0.5     128.03       0.00      -0.00      -0.03      -0.00      -0.00       0.02      10.71       0.00       0.01
                            0.33       0.00       0.00     -11.48       0.00      -0.00      -4.62      -0.03      -0.00       0.00

   11   3.2  0.5 -0.5      -0.33       0.00       0.00      -9.73       0.00       0.00       7.64      -0.03       0.00       0.00
                          128.03      -0.00       0.00       0.03       0.00       0.00       0.01     -10.71       0.00     128.01

   12   4.2  0.5 -0.5       0.00       0.03       9.73      -0.00      -0.00      66.75      -0.00       0.00       0.00       0.00
                            0.00      11.48      -0.03      -0.00     -40.29      -0.00      -0.00      -0.00       1.74      -0.00

   13   5.2  0.5 -0.5     -10.72       0.00      -0.00       0.00      -0.00       0.00      -0.01     -54.04       0.00       0.00
                           -0.00      -0.00      -0.00      40.29       0.00      -0.00    -100.38       0.02      -0.00      -0.03

   14   6.2  0.5 -0.5      -0.00       0.00      -0.00     -66.75      -0.00       0.00     -85.11       0.01       0.00       0.00
                           10.72       0.00      -0.00       0.00       0.00      -0.00      -0.01     -54.09       0.00     -10.70

   15   7.2  0.5 -0.5      -0.00      -0.02      -7.64       0.00       0.01      85.11       0.00       0.00       0.00       0.00
                           -0.00       4.62      -0.01       0.00     100.38       0.01      -0.00       0.00      12.23       0.00

   16   8.2  0.5 -0.5      -0.00     -10.71       0.03      -0.00      54.04      -0.01      -0.00      -0.00       0.00       0.00
                            0.00       0.03      10.71       0.00      -0.02      54.09      -0.00       0.00      -0.00      -0.00

   17   1.2  1.5  1.5      -0.00       0.00      -0.00      28.56      -0.00      -0.00     -22.44       0.00       0.00       0.00
                          -17.25       0.00       0.00       0.00       0.00       0.00      -0.01     -31.44      -0.00      -0.00

   18   2.2  1.5  1.5     -17.26      -0.00       0.00      -0.00      -0.00      -0.00       0.01      31.43       0.00       0.00
                           -0.00       0.00       0.00      33.67      -0.00      -0.00      13.54      -0.00      -0.00      -0.00

   19   3.2  1.5  1.5      -0.00      17.25      -0.04       0.00      31.43       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.04     -17.26       0.00      -0.00      31.41       0.00       0.00      -0.00      -0.00

   20   4.2  1.5  1.5      -0.00       0.00       0.00     -41.63       0.00      -0.00     -53.04       0.01       0.00       0.00
                          -20.28       0.00       0.00      -0.00       0.00      -0.00       0.01      33.65      -0.00      -0.00

   21   5.2  1.5  1.5      -0.00      -0.02      -5.95      -0.00      -0.00      65.29      -0.00       0.00       0.00       0.00
                           -0.00     -16.73       0.04      -0.00     -47.22      -0.00       0.00       0.00      -0.00      -0.00

   22   6.2  1.5  1.5     -20.20      -0.01       0.00       0.00       0.01       0.00      -0.01     -33.60       0.00       0.00
                           -0.00      -0.00      -0.01     -24.96       0.00      -0.01      62.16      -0.01      -0.00      -0.00

   23   7.2  1.5  1.5       0.01     -20.27       0.05       0.00      33.68       0.00      -0.00       0.01       0.00       0.00
                           -0.00      -0.05     -20.21       0.01       0.00     -33.55      -0.02      -0.00      -0.00      -0.00

   24   8.2  1.5  1.5      -0.00      -0.06     -22.75      -0.00       0.00     -17.13       0.00      -0.00       0.00       0.00
                           -0.00      16.53      -0.04      -0.00     -47.70      -0.00       0.00       0.00      -0.00      -0.00

   25   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00     -19.91       0.05       0.00      36.31       0.00      -0.00       0.00      -9.96       0.00

   26   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -9.97      -0.00
                           -0.00      -0.05     -19.94      -0.00       0.00     -36.30      -0.00      -0.00      -0.00       0.00

   27   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       9.96
                           -0.00      -0.00      -0.00       5.95       0.00      -0.00      41.48      -0.01      -0.00      -0.03

   28   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      23.42      -0.06       0.00      38.84       0.00      -0.00      -0.00     -11.71       0.00

   29   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01
                          -26.18       0.00       0.00      -0.00       0.00      -0.00       0.00      20.58      -0.00      -9.66

   30   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -11.66      -0.00
                            0.00       0.06      23.32      -0.03       0.00     -38.83       0.00      -0.00      -0.00      -0.00

   31   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -11.70
                           -0.00      -0.00      -0.01     -76.84       0.00       0.01      10.95      -0.00      -0.00      -0.03

   32   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.03
                           -7.22       0.00       0.00       0.00       0.00       0.00      -0.01     -74.96      -0.00       9.54

   33   1.2  1.5 -0.5      -0.00       0.00      -0.00      16.49      -0.00      -0.00     -12.96       0.00       0.00       0.00
                            9.96      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      18.15      -0.00     -19.91

   34   2.2  1.5 -0.5      -9.97      -0.00       0.00      -0.00      -0.00      -0.00       0.00      18.15       0.00       0.00
                            0.00      -0.00      -0.00     -19.44       0.00       0.00      -7.82       0.00      -0.00      -0.05

   35   3.2  1.5 -0.5      -0.00       9.96      -0.03       0.00      18.14       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.03       9.97      -0.00       0.00     -18.14      -0.00      -0.00      -0.00      -0.00

   36   4.2  1.5 -0.5      -0.00       0.00       0.00     -24.03       0.00      -0.00     -30.62       0.00       0.00       0.00
                           11.71      -0.00      -0.00       0.00      -0.00       0.00      -0.00     -19.43       0.00      23.42

   37   5.2  1.5 -0.5      -0.00      -0.01      -3.44      -0.00      -0.00      37.70      -0.00       0.00       0.00       0.00
                            0.00       9.66      -0.02       0.00      27.27       0.00      -0.00      -0.00     -26.18       0.00

   38   6.2  1.5 -0.5     -11.66      -0.00       0.00       0.00       0.01       0.00      -0.00     -19.40       0.00       0.00
                            0.00       0.00       0.00      14.41      -0.00       0.01     -35.89       0.01       0.00       0.06

   39   7.2  1.5 -0.5       0.00     -11.70       0.03       0.00      19.44       0.00      -0.00       0.01       0.00       0.00
                            0.00       0.03      11.67      -0.00      -0.00      19.37       0.01       0.00      -0.00      -0.00

   40   8.2  1.5 -0.5      -0.00      -0.03     -13.14      -0.00       0.00      -9.89       0.00      -0.00       0.00       0.00
                            0.00      -9.54       0.02       0.00      27.54       0.00      -0.00      -0.00      -7.22       0.00

   41   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      17.25      -0.00

   42   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -17.26      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   43   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      17.25
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.04

   44   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      20.28      -0.00

   45   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.02
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      16.73

   46   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -20.20      -0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   47   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01     -20.27
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.05

   48   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.06
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -16.53


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5      -0.33       0.00     -10.72      -0.00      -0.00      -0.00      -0.00     -17.26      -0.00      -0.00
                         -128.03      -0.00       0.00     -10.72       0.00      -0.00      17.25       0.00       0.00      20.28

    2   2.2  0.5  0.5       0.00       0.03       0.00       0.00      -0.02     -10.71       0.00      -0.00      17.25       0.00
                            0.00     -11.48       0.00      -0.00      -4.62      -0.03      -0.00      -0.00       0.04      -0.00

    3   3.2  0.5  0.5       0.00       9.73      -0.00      -0.00      -7.64       0.03      -0.00       0.00      -0.04       0.00
                           -0.00       0.03       0.00       0.00       0.01     -10.71      -0.00      -0.00      17.26      -0.00

    4   4.2  0.5  0.5      -9.73      -0.00       0.00     -66.75       0.00      -0.00      28.56      -0.00       0.00     -41.63
                           -0.03       0.00     -40.29      -0.00      -0.00      -0.00      -0.00     -33.67      -0.00       0.00

    5   5.2  0.5  0.5       0.00      -0.00      -0.00      -0.00       0.01      54.04      -0.00      -0.00      31.43       0.00
                           -0.00      40.29      -0.00      -0.00    -100.38       0.02      -0.00       0.00       0.00      -0.00

    6   6.2  0.5  0.5       0.00      66.75       0.00       0.00      85.11      -0.01      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.01     -54.09      -0.00       0.00     -31.41       0.00

    7   7.2  0.5  0.5       7.64      -0.00      -0.01     -85.11       0.00      -0.00     -22.44       0.01      -0.00     -53.04
                           -0.01       0.00     100.38       0.01       0.00       0.00       0.01     -13.54      -0.00      -0.01

    8   8.2  0.5  0.5      -0.03       0.00     -54.04       0.01       0.00      -0.00       0.00      31.43       0.00       0.01
                           10.71       0.00      -0.02      54.09      -0.00      -0.00      31.44       0.00      -0.00     -33.65

    9   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -1.74       0.00      -0.00     -12.23       0.00       0.00       0.00       0.00       0.00

   10   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -128.01       0.00       0.03      10.70      -0.00       0.00       0.00       0.00       0.00       0.00

   11   3.2  0.5 -0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      10.70      -0.03       0.00       0.00       0.00       0.00       0.00       0.00

   12   4.2  0.5 -0.5       0.00  117974.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.01      -0.02    -107.08       0.00       0.00       0.00       0.00

   13   5.2  0.5 -0.5       0.00       0.00  117974.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.70      -0.00       0.00      54.12      -0.00       0.00       0.00       0.00       0.00       0.00

   14   6.2  0.5 -0.5       0.00       0.00       0.00  117974.68       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.01     -54.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   7.2  0.5 -0.5       0.00       0.00       0.00       0.00  117974.39       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.02       0.00      -0.00       0.00      15.25       0.00       0.00       0.00       0.00

   16   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00  117974.42       0.00       0.00       0.00       0.00
                           -0.00     107.08      -0.00      -0.00     -15.25      -0.00       0.00       0.00       0.00       0.00

   17   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00  116233.42       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      77.32       0.01      -0.00

   18   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00  116233.42       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -77.32      -0.00       0.00     -80.92

   19   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  116233.42       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01      -0.00      -0.00      -0.01

   20   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  117398.50
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      80.92       0.01      -0.00

   21   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.01     -90.10      -0.00

   22   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -80.92       0.00       0.00     -77.50

   23   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.03       0.00       0.00       0.03

   24   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -24.81       0.00

   25   1.2  1.5  0.5      -0.00      16.49      -0.00      -0.00     -12.96       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00     -18.15      -0.00       0.00     -44.64      -0.00

   26   2.2  1.5  0.5       0.00      -0.00      -0.00      -0.00       0.00      18.15       0.00      -0.00      44.64      -0.00
                            0.00      19.44      -0.00      -0.00       7.82      -0.00      -0.00      -0.00       0.00       0.00

   27   3.2  1.5  0.5      -0.03       0.00      18.14       0.00      -0.00       0.00      -0.00     -44.64       0.00      -0.00
                           -9.97       0.00      -0.00      18.14       0.00       0.00      44.64      -0.00       0.00     -46.72

   28   4.2  1.5  0.5       0.00     -24.03       0.00      -0.00     -30.62       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      19.43       0.00      -0.00      46.72      -0.00

   29   5.2  1.5  0.5      -3.44      -0.00      -0.00      37.70      -0.00       0.00      13.63      -0.00      -0.00      86.59
                            0.02      -0.00     -27.27      -0.00       0.00       0.00      -0.00      38.39       0.01      -0.00

   30   6.2  1.5  0.5       0.00       0.00       0.01       0.00      -0.00     -19.40      -0.00      -0.01     -46.72       0.00
                           -0.00     -14.41       0.00      -0.01      35.89      -0.01      -0.02       0.00       0.00       0.02

   31   7.2  1.5  0.5       0.03       0.00      19.44       0.00      -0.00       0.01       0.00     -46.72       0.01      -0.00
                          -11.67       0.00       0.00     -19.37      -0.01      -0.00     -46.72       0.00       0.00      44.75

   32   8.2  1.5  0.5     -13.14      -0.00       0.00      -9.89       0.00      -0.00      52.16       0.00      -0.00     -22.61
                           -0.02      -0.00     -27.54      -0.00       0.00       0.00      -0.00     -37.94      -0.00      -0.00

   33   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05       0.00      36.31       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   34   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -19.94      -0.00       0.00     -36.30      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       5.95       0.00      -0.00      41.48      -0.01      -0.00      -0.00      -0.00      -0.00

   36   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.06       0.00      38.84       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      20.58      -0.00      -0.00      -0.00      -0.00

   38   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           23.32      -0.03       0.00     -38.83       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01     -76.84       0.00       0.01      10.95      -0.00      -0.00      -0.00      -0.00      -0.00

   40   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.01     -74.96      -0.00      -0.00      -0.00      -0.00

   41   1.2  1.5 -1.5      -0.00      28.56      -0.00      -0.00     -22.44       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.01      31.44      -0.00      -0.00      -0.00      -0.00

   42   2.2  1.5 -1.5       0.00      -0.00      -0.00      -0.00       0.01      31.43       0.00       0.00       0.00       0.00
                           -0.00     -33.67       0.00       0.00     -13.54       0.00      -0.00      -0.00      -0.00      -0.00

   43   3.2  1.5 -1.5      -0.04       0.00      31.43       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           17.26      -0.00       0.00     -31.41      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   4.2  1.5 -1.5       0.00     -41.63       0.00      -0.00     -53.04       0.01       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.01     -33.65      -0.00      -0.00      -0.00      -0.00

   45   5.2  1.5 -1.5      -5.95      -0.00      -0.00      65.29      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04       0.00      47.22       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   6.2  1.5 -1.5       0.00       0.00       0.01       0.00      -0.01     -33.60       0.00       0.00       0.00       0.00
                            0.01      24.96      -0.00       0.01     -62.16       0.01      -0.00      -0.00      -0.00      -0.00

   47   7.2  1.5 -1.5       0.05       0.00      33.68       0.00      -0.00       0.01       0.00       0.00       0.00       0.00
                           20.21      -0.01      -0.00      33.55       0.02       0.00      -0.00      -0.00      -0.00      -0.00

   48   8.2  1.5 -1.5     -22.75      -0.00       0.00     -17.13       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.04       0.00      47.70       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5      -0.00     -20.20       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      26.18      -0.00

    2   2.2  0.5  0.5      -0.02      -0.01     -20.27      -0.06       0.00       0.00       0.00       0.00       0.00       0.00
                           16.73       0.00       0.05     -16.53      19.91       0.05       0.00     -23.42      -0.00      -0.06

    3   3.2  0.5  0.5      -5.95       0.00       0.05     -22.75       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04       0.01      20.21       0.04      -0.05      19.94       0.00       0.06      -0.00     -23.32

    4   4.2  0.5  0.5      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      24.96      -0.01       0.00      -0.00       0.00      -5.95      -0.00       0.00       0.03

    5   5.2  0.5  0.5      -0.00       0.01      33.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           47.22      -0.00      -0.00      47.70     -36.31      -0.00      -0.00     -38.84      -0.00      -0.00

    6   6.2  0.5  0.5      65.29       0.00       0.00     -17.13       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01      33.55       0.00      -0.00      36.30       0.00      -0.00       0.00      38.83

    7   7.2  0.5  0.5      -0.00      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -62.16       0.02      -0.00       0.00       0.00     -41.48       0.00      -0.00      -0.00

    8   8.2  0.5  0.5       0.00     -33.60       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01       0.00      -0.00      -0.00       0.00       0.01       0.00     -20.58       0.00

    9   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -9.97      -0.00      -0.00      -0.00     -11.66
                            0.00       0.00       0.00       0.00       9.96       0.00       0.00      11.71       0.00       0.00

   10   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00       9.96       0.00      -0.01      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.03      -0.00       9.66       0.00

   11   3.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.03       0.00      -3.44       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       9.97      -0.00      -0.02       0.00

   12   4.2  0.5 -0.5       0.00       0.00       0.00       0.00      16.49      -0.00       0.00     -24.03      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00     -19.44      -0.00       0.00       0.00      14.41

   13   5.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      18.14       0.00      -0.00       0.01
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      27.27      -0.00

   14   6.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      37.70       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00     -18.14       0.00       0.00       0.01

   15   7.2  0.5 -0.5       0.00       0.00       0.00       0.00     -12.96       0.00      -0.00     -30.62      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -7.82      -0.00      -0.00      -0.00     -35.89

   16   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      18.15       0.00       0.00       0.00     -19.40
                            0.00       0.00       0.00       0.00      18.15       0.00      -0.00     -19.43      -0.00       0.01

   17   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      13.63      -0.00
                            0.00      80.92      -0.03       0.00       0.00       0.00     -44.64      -0.00       0.00       0.02

   18   2.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00      -0.00     -44.64       0.00      -0.00      -0.01
                           -0.01      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     -38.39      -0.00

   19   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00      44.64       0.00       0.00      -0.00     -46.72
                           90.10      -0.00      -0.00      24.81      44.64      -0.00      -0.00     -46.72      -0.01      -0.00

   20   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      86.59       0.00
                            0.00      77.50      -0.03      -0.00       0.00      -0.00      46.72       0.00       0.00      -0.02

   21   5.2  1.5  1.5  117398.50       0.00       0.00       0.00     -13.63       0.00       0.00     -86.59       0.00      -0.00
                           -0.00       0.02      41.07      -0.00      -0.00      38.39       0.01      -0.00       0.00      62.88

   22   6.2  1.5  1.5       0.00  117398.50       0.00       0.00       0.00       0.01      46.72      -0.00       0.00      -0.00
                           -0.02       0.00      -0.00       0.05      -0.02       0.00       0.00       0.02     -62.88      -0.00

   23   7.2  1.5  1.5       0.00       0.00  117398.50       0.00      -0.00      46.72      -0.01       0.00       0.00     -44.74
                          -41.07       0.00      -0.00     149.46     -46.72       0.00       0.00      44.75       0.02       0.00

   24   8.2  1.5  1.5       0.00       0.00       0.00  117398.50     -52.16      -0.00       0.00      22.61       0.00       0.00
                            0.00      -0.05    -149.46       0.00      -0.00     -37.94      -0.00      -0.00      -0.00      63.68

   25   1.2  1.5  0.5     -13.63       0.00      -0.00     -52.16  116233.42       0.00       0.00       0.00       0.00       0.00
                            0.00       0.02      46.72       0.00      -0.00      25.77       0.00      -0.00       0.00      26.97

   26   2.2  1.5  0.5       0.00       0.01      46.72      -0.00       0.00  116233.42       0.00       0.00       0.00       0.00
                          -38.39      -0.00      -0.00      37.94     -25.77      -0.00       0.00     -26.97      -0.00      -0.00

   27   3.2  1.5  0.5       0.00      46.72      -0.01       0.00       0.00       0.00  116233.42       0.00       0.00       0.00
                           -0.01      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      30.03      -0.00

   28   4.2  1.5  0.5     -86.59      -0.00       0.00      22.61       0.00       0.00       0.00  117398.50       0.00       0.00
                            0.00      -0.02     -44.75       0.00       0.00      26.97       0.00      -0.00       0.00      25.83

   29   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  117398.50       0.00
                           -0.00      62.88      -0.02       0.00      -0.00       0.00     -30.03      -0.00      -0.00       0.01

   30   6.2  1.5  0.5      -0.00      -0.00     -44.74       0.00       0.00       0.00       0.00       0.00       0.00  117398.50
                          -62.88       0.00      -0.00     -63.68     -26.97       0.00       0.00     -25.83      -0.01       0.00

   31   7.2  1.5  0.5      -0.00      44.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02       0.00      -0.00       0.02       0.01       0.00       0.00       0.01     -13.69       0.00

   32   8.2  1.5  0.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      63.68      -0.02      -0.00      -0.00       0.00      -8.27       0.00       0.00      -0.02

   33   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00     -15.74       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -51.55      -0.00       0.00       0.02

   34   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      51.55      -0.00       0.00       0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.01     -44.33      -0.00

   35   3.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00     -51.55       0.00      -0.00       0.00      53.95
                           -0.00      -0.00      -0.00      -0.00      51.55      -0.00       0.00     -53.95      -0.01      -0.00

   36   4.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00     -99.98      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.01      53.95      -0.00       0.00      -0.02

   37   5.2  1.5 -0.5       0.00       0.00       0.00       0.00      15.74      -0.00      -0.00      99.98       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      44.33       0.01      -0.00      -0.00      72.61

   38   6.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.01     -53.95       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.02       0.00       0.00       0.02     -72.61       0.00

   39   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00     -53.95       0.01      -0.00      -0.00      51.67
                           -0.00      -0.00      -0.00      -0.00     -53.95       0.00       0.00      51.67       0.03       0.00

   40   8.2  1.5 -0.5       0.00       0.00       0.00       0.00      60.23       0.00      -0.00     -26.11      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     -43.81      -0.00      -0.00      -0.00      73.53

   41   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  0.5  0.5       0.00       0.00      -0.00      -9.97      -0.00      -0.00      -0.00     -11.66       0.00      -0.00
                            0.00       7.22      -9.96      -0.00      -0.00     -11.71      -0.00      -0.00      -0.00      -0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00      -0.00       9.96       0.00      -0.01      -0.00     -11.70      -0.03
                            0.00      -0.00       0.00       0.00      -0.03       0.00      -9.66      -0.00      -0.03       9.54

    3   3.2  0.5  0.5       0.00       0.00      -0.00       0.00      -0.03       0.00      -3.44       0.00       0.03     -13.14
                            0.01      -0.00       0.00       0.00      -9.97       0.00       0.02      -0.00     -11.67      -0.02

    4   4.2  0.5  0.5       0.00       0.00      16.49      -0.00       0.00     -24.03      -0.00       0.00       0.00      -0.00
                           76.84      -0.00       0.00      19.44       0.00      -0.00      -0.00     -14.41       0.00      -0.00

    5   5.2  0.5  0.5       0.00       0.00      -0.00      -0.00      18.14       0.00      -0.00       0.01      19.44       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00     -27.27       0.00       0.00     -27.54

    6   6.2  0.5  0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00      37.70       0.00       0.00      -9.89
                           -0.01      -0.00       0.00      -0.00      18.14      -0.00      -0.00      -0.01     -19.37      -0.00

    7   7.2  0.5  0.5       0.00       0.00     -12.96       0.00      -0.00     -30.62      -0.00      -0.00      -0.00       0.00
                          -10.95       0.01      -0.00       7.82       0.00       0.00       0.00      35.89      -0.01       0.00

    8   8.2  0.5  0.5       0.00       0.00       0.00      18.15       0.00       0.00       0.00     -19.40       0.01      -0.00
                            0.00      74.96     -18.15      -0.00       0.00      19.43       0.00      -0.01      -0.00       0.00

    9   1.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      26.18      -0.00       0.00       7.22

   10   2.2  0.5 -0.5     -11.70      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -9.54      19.91       0.05       0.00     -23.42      -0.00      -0.06       0.00      -0.00

   11   3.2  0.5 -0.5       0.03     -13.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           11.67       0.02      -0.05      19.94       0.00       0.06      -0.00     -23.32       0.01      -0.00

   12   4.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -5.95      -0.00       0.00       0.03      76.84      -0.00

   13   5.2  0.5 -0.5      19.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      27.54     -36.31      -0.00      -0.00     -38.84      -0.00      -0.00      -0.00      -0.00

   14   6.2  0.5 -0.5       0.00      -9.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           19.37       0.00      -0.00      36.30       0.00      -0.00       0.00      38.83      -0.01      -0.00

   15   7.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00       0.00       0.00     -41.48       0.00      -0.00      -0.00     -10.95       0.01

   16   8.2  0.5 -0.5       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.01       0.00     -20.58       0.00       0.00      74.96

   17   1.2  1.5  1.5       0.00      52.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           46.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   2.2  1.5  1.5     -46.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      37.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   3.2  1.5  1.5       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   4.2  1.5  1.5      -0.00     -22.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -44.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   5.2  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   6.2  1.5  1.5      44.74      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -63.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   7.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   8.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00      15.74      -0.00       0.00      60.23
                           -0.01       0.00       0.00       0.00     -51.55      -0.00       0.00       0.02      53.95       0.00

   26   2.2  1.5  0.5       0.00       0.00      -0.00      -0.00     -51.55       0.00      -0.00      -0.01     -53.95       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.01     -44.33      -0.00      -0.00      43.81

   27   3.2  1.5  0.5       0.00       0.00       0.00      51.55       0.00       0.00      -0.00     -53.95       0.01      -0.00
                           -0.00       8.27      51.55      -0.00      -0.00     -53.95      -0.01      -0.00      -0.00       0.00

   28   4.2  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00      99.98       0.00      -0.00     -26.11
                           -0.01      -0.00       0.00      -0.01      53.95       0.00       0.00      -0.02     -51.67       0.00

   29   5.2  1.5  0.5       0.00       0.00     -15.74       0.00       0.00     -99.98       0.00      -0.00      -0.00      -0.00
                           13.69      -0.00      -0.00      44.33       0.01      -0.00       0.00      72.61      -0.03       0.00

   30   6.2  1.5  0.5       0.00       0.00       0.00       0.01      53.95      -0.00       0.00      -0.00      51.67      -0.00
                           -0.00       0.02      -0.02       0.00       0.00       0.02     -72.61      -0.00      -0.00     -73.53

   31   7.2  1.5  0.5  117398.50       0.00      -0.00      53.95      -0.01       0.00       0.00     -51.67       0.00      -0.00
                           -0.00      49.82     -53.95       0.00       0.00      51.67       0.03       0.00       0.00       0.02

   32   8.2  1.5  0.5       0.00  117398.50     -60.23      -0.00       0.00      26.11       0.00       0.00       0.00      -0.00
                          -49.82       0.00      -0.00     -43.81      -0.00      -0.00      -0.00      73.53      -0.02       0.00

   33   1.2  1.5 -0.5      -0.00     -60.23  116233.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           53.95       0.00       0.00     -25.77      -0.00       0.00      -0.00     -26.97       0.01      -0.00

   34   2.2  1.5 -0.5      53.95      -0.00       0.00  116233.42       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      43.81      25.77       0.00      -0.00      26.97       0.00       0.00       0.00       0.00

   35   3.2  1.5 -0.5      -0.01       0.00       0.00       0.00  116233.42       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00     -30.03       0.00       0.00      -8.27

   36   4.2  1.5 -0.5       0.00      26.11       0.00       0.00       0.00  117398.50       0.00       0.00       0.00       0.00
                          -51.67       0.00      -0.00     -26.97      -0.00       0.00      -0.00     -25.83       0.01       0.00

   37   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00  117398.50       0.00       0.00       0.00
                           -0.03       0.00       0.00      -0.00      30.03       0.00       0.00      -0.01     -13.69       0.00

   38   6.2  1.5 -0.5     -51.67       0.00       0.00       0.00       0.00       0.00       0.00  117398.50       0.00       0.00
                           -0.00     -73.53      26.97      -0.00      -0.00      25.83       0.01      -0.00       0.00      -0.02

   39   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  117398.50       0.00
                           -0.00       0.02      -0.01      -0.00      -0.00      -0.01      13.69      -0.00       0.00     -49.82

   40   8.2  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  117398.50
                           -0.02      -0.00       0.00      -0.00       8.27      -0.00      -0.00       0.02      49.82      -0.00

   41   1.2  1.5 -1.5       0.00       0.00      -0.00      -0.00       0.00       0.00     -13.63       0.00      -0.00     -52.16
                           -0.00      -0.00      -0.00       0.00     -44.64      -0.00       0.00       0.02      46.72       0.00

   42   2.2  1.5 -1.5       0.00       0.00       0.00      -0.00      44.64      -0.00       0.00       0.01      46.72      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00     -38.39      -0.00      -0.00      37.94

   43   3.2  1.5 -1.5       0.00       0.00      -0.00     -44.64       0.00      -0.00       0.00      46.72      -0.01       0.00
                           -0.00      -0.00      44.64      -0.00       0.00     -46.72      -0.01      -0.00      -0.00       0.00

   44   4.2  1.5 -1.5       0.00       0.00      -0.00       0.00       0.00       0.00     -86.59      -0.00       0.00      22.61
                           -0.00      -0.00       0.00      -0.00      46.72      -0.00       0.00      -0.02     -44.75       0.00

   45   5.2  1.5 -1.5       0.00       0.00      13.63      -0.00      -0.00      86.59       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      38.39       0.01      -0.00      -0.00      62.88      -0.02       0.00

   46   6.2  1.5 -1.5       0.00       0.00      -0.00      -0.01     -46.72       0.00      -0.00      -0.00     -44.74       0.00
                           -0.00      -0.00      -0.02       0.00       0.00       0.02     -62.88       0.00      -0.00     -63.68

   47   7.2  1.5 -1.5       0.00       0.00       0.00     -46.72       0.01      -0.00      -0.00      44.74       0.00       0.00
                           -0.00      -0.00     -46.72       0.00       0.00      44.75       0.02       0.00      -0.00       0.02

   48   8.2  1.5 -1.5       0.00       0.00      52.16       0.00      -0.00     -22.61      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00     -37.94      -0.00      -0.00      -0.00      63.68      -0.02      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   1.2  0.5 -0.5      -0.00     -17.26      -0.00      -0.00      -0.00     -20.20       0.01      -0.00
                          -17.25      -0.00      -0.00     -20.28      -0.00      -0.00      -0.00      -0.00

   10   2.2  0.5 -0.5       0.00      -0.00      17.25       0.00      -0.02      -0.01     -20.27      -0.06
                            0.00       0.00      -0.04       0.00     -16.73      -0.00      -0.05      16.53

   11   3.2  0.5 -0.5      -0.00       0.00      -0.04       0.00      -5.95       0.00       0.05     -22.75
                            0.00       0.00     -17.26       0.00       0.04      -0.01     -20.21      -0.04

   12   4.2  0.5 -0.5      28.56      -0.00       0.00     -41.63      -0.00       0.00       0.00      -0.00
                            0.00      33.67       0.00      -0.00      -0.00     -24.96       0.01      -0.00

   13   5.2  0.5 -0.5      -0.00      -0.00      31.43       0.00      -0.00       0.01      33.68       0.00
                            0.00      -0.00      -0.00       0.00     -47.22       0.00       0.00     -47.70

   14   6.2  0.5 -0.5      -0.00      -0.00       0.00      -0.00      65.29       0.00       0.00     -17.13
                            0.00      -0.00      31.41      -0.00      -0.00      -0.01     -33.55      -0.00

   15   7.2  0.5 -0.5     -22.44       0.01      -0.00     -53.04      -0.00      -0.01      -0.00       0.00
                           -0.01      13.54       0.00       0.01       0.00      62.16      -0.02       0.00

   16   8.2  0.5 -0.5       0.00      31.43       0.00       0.01       0.00     -33.60       0.01      -0.00
                          -31.44      -0.00       0.00      33.65       0.00      -0.01      -0.00       0.00

   17   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   1.2  1.5 -0.5      -0.00       0.00      -0.00      -0.00      13.63      -0.00       0.00      52.16
                            0.00       0.00     -44.64      -0.00       0.00       0.02      46.72       0.00

   34   2.2  1.5 -0.5      -0.00      -0.00     -44.64       0.00      -0.00      -0.01     -46.72       0.00
                           -0.00       0.00       0.00       0.00     -38.39      -0.00      -0.00      37.94

   35   3.2  1.5 -0.5       0.00      44.64       0.00       0.00      -0.00     -46.72       0.01      -0.00
                           44.64      -0.00      -0.00     -46.72      -0.01      -0.00      -0.00       0.00

   36   4.2  1.5 -0.5       0.00      -0.00      -0.00       0.00      86.59       0.00      -0.00     -22.61
                            0.00      -0.00      46.72       0.00       0.00      -0.02     -44.75       0.00

   37   5.2  1.5 -0.5     -13.63       0.00       0.00     -86.59       0.00      -0.00      -0.00      -0.00
                           -0.00      38.39       0.01      -0.00       0.00      62.88      -0.02       0.00

   38   6.2  1.5 -0.5       0.00       0.01      46.72      -0.00       0.00      -0.00      44.74      -0.00
                           -0.02       0.00       0.00       0.02     -62.88      -0.00      -0.00     -63.68

   39   7.2  1.5 -0.5      -0.00      46.72      -0.01       0.00       0.00     -44.74       0.00      -0.00
                          -46.72       0.00       0.00      44.75       0.02       0.00       0.00       0.02

   40   8.2  1.5 -0.5     -52.16      -0.00       0.00      22.61       0.00       0.00       0.00      -0.00
                           -0.00     -37.94      -0.00      -0.00      -0.00      63.68      -0.02       0.00

   41   1.2  1.5 -1.5  116233.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -77.32      -0.01       0.00      -0.00     -80.92       0.03      -0.00

   42   2.2  1.5 -1.5       0.00  116233.42       0.00       0.00       0.00       0.00       0.00       0.00
                           77.32       0.00      -0.00      80.92       0.01       0.00       0.00       0.00

   43   3.2  1.5 -1.5       0.00       0.00  116233.42       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00       0.01     -90.10       0.00       0.00     -24.81

   44   4.2  1.5 -1.5       0.00       0.00       0.00  117398.50       0.00       0.00       0.00       0.00
                           -0.00     -80.92      -0.01       0.00      -0.00     -77.50       0.03       0.00

   45   5.2  1.5 -1.5       0.00       0.00       0.00       0.00  117398.50       0.00       0.00       0.00
                            0.00      -0.01      90.10       0.00       0.00      -0.02     -41.07       0.00

   46   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00  117398.50       0.00       0.00
                           80.92      -0.00      -0.00      77.50       0.02      -0.00       0.00      -0.05

   47   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00  117398.50       0.00
                           -0.03      -0.00      -0.00      -0.03      41.07      -0.00       0.00    -149.46

   48   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00  117398.50
                            0.00      -0.00      24.81      -0.00      -0.00       0.05     149.46      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -99.71915544    -0.00058349     -128.06      0.00000000        0.00      0.0000
     2   -99.71915544    -0.00058349     -128.06      0.00000000        0.00      0.0000
     3   -99.71915527    -0.00058332     -128.02      0.00000017        0.04      0.0000
     4   -99.71915527    -0.00058332     -128.02      0.00000017        0.04      0.0000
     5   -99.71740540     0.00116655      256.03      0.00175003      384.09      0.0476
     6   -99.71740540     0.00116655      256.03      0.00175003      384.09      0.0476
     7   -99.18938759     0.52918436   116142.54      0.52976784   116270.60     14.4157
     8   -99.18938759     0.52918436   116142.54      0.52976784   116270.60     14.4157
     9   -99.18938759     0.52918436   116142.54      0.52976785   116270.60     14.4157
    10   -99.18938759     0.52918436   116142.54      0.52976785   116270.60     14.4157
    11   -99.18938757     0.52918438   116142.55      0.52976787   116270.61     14.4157
    12   -99.18938757     0.52918438   116142.55      0.52976787   116270.61     14.4157
    13   -99.18878102     0.52979093   116275.67      0.53037442   116403.73     14.4322
    14   -99.18878102     0.52979093   116275.67      0.53037442   116403.73     14.4322
    15   -99.18878097     0.52979098   116275.68      0.53037447   116403.74     14.4322
    16   -99.18878097     0.52979098   116275.68      0.53037447   116403.74     14.4322
    17   -99.18839939     0.53017256   116359.43      0.53075605   116487.49     14.4426
    18   -99.18839939     0.53017256   116359.43      0.53075605   116487.49     14.4426
    19   -99.18437129     0.53420066   117243.49      0.53478415   117371.55     14.5522
    20   -99.18437129     0.53420066   117243.49      0.53478415   117371.55     14.5522
    21   -99.18437128     0.53420067   117243.50      0.53478416   117371.56     14.5522
    22   -99.18437128     0.53420067   117243.50      0.53478416   117371.56     14.5522
    23   -99.18437127     0.53420068   117243.50      0.53478417   117371.56     14.5522
    24   -99.18437127     0.53420068   117243.50      0.53478417   117371.56     14.5522
    25   -99.18437126     0.53420069   117243.50      0.53478418   117371.56     14.5522
    26   -99.18437126     0.53420069   117243.50      0.53478418   117371.56     14.5522
    27   -99.18360987     0.53496208   117410.60      0.53554557   117538.67     14.5729
    28   -99.18360987     0.53496208   117410.60      0.53554557   117538.67     14.5729
    29   -99.18360978     0.53496217   117410.63      0.53554566   117538.69     14.5729
    30   -99.18360978     0.53496217   117410.63      0.53554566   117538.69     14.5729
    31   -99.18360934     0.53496261   117410.72      0.53554610   117538.78     14.5730
    32   -99.18360934     0.53496261   117410.72      0.53554610   117538.78     14.5730
    33   -99.18297247     0.53559948   117550.50      0.53618297   117678.56     14.5903
    34   -99.18297247     0.53559948   117550.50      0.53618297   117678.56     14.5903
    35   -99.18297220     0.53559975   117550.56      0.53618324   117678.62     14.5903
    36   -99.18297220     0.53559975   117550.56      0.53618324   117678.62     14.5903
    37   -99.18259253     0.53597942   117633.89      0.53656291   117761.95     14.6006
    38   -99.18259253     0.53597942   117633.89      0.53656291   117761.95     14.6006
    39   -99.18141001     0.53716194   117893.42      0.53774543   118021.48     14.6328
    40   -99.18141001     0.53716194   117893.42      0.53774543   118021.48     14.6328
    41   -99.18140933     0.53716262   117893.57      0.53774611   118021.63     14.6328
    42   -99.18140933     0.53716262   117893.57      0.53774611   118021.63     14.6328
    43   -99.18140863     0.53716332   117893.72      0.53774681   118021.78     14.6328
    44   -99.18140863     0.53716332   117893.72      0.53774681   118021.78     14.6328
    45   -99.18024590     0.53832605   118148.91      0.53890954   118276.97     14.6645
    46   -99.18024590     0.53832605   118148.91      0.53890954   118276.97     14.6645
    47   -99.18024485     0.53832710   118149.14      0.53891059   118277.20     14.6645
    48   -99.18024485     0.53832710   118149.14      0.53891059   118277.20     14.6645


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.011146103   0.816408566  -0.001944441  -0.000125775   0.577247258  -0.011593370   0.000000017   0.000000001
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.242021370  -0.003308918  -0.046543619   0.689064153  -0.006676242  -0.332417781   0.000000000  -0.000000010
                         0.330825649  -0.004514441  -0.004379325   0.147076971  -0.009463319  -0.471896452  -0.000000000   0.000000005

    3    3.2  0.5  0.5   0.328185522  -0.004492855   0.004393231  -0.147556041  -0.009477612  -0.471901149   0.000000001  -0.000000024
                        -0.239926399   0.003274538  -0.046671976   0.690940737   0.006671178   0.332421381   0.000000001  -0.000000044

    4    4.2  0.5  0.5  -0.000000001  -0.000000013  -0.000005569  -0.000001342  -0.000000000  -0.000000000  -0.000000156   0.000003881
                         0.000000249   0.000018400   0.000126550   0.000008297  -0.000000056   0.000000001  -0.016529244  -0.000549584

    5    5.2  0.5  0.5  -0.000065245   0.000000890  -0.000004243   0.000062823  -0.000000001  -0.000000037   0.000461894  -0.013989541
                        -0.000089702   0.000001224  -0.000000392   0.000013259  -0.000000001  -0.000000052  -0.000257625   0.007662902

    6    6.2  0.5  0.5   0.000089944  -0.000001227  -0.000000391   0.000013129   0.000000001   0.000000045   0.000012437  -0.000381564
                        -0.000065438   0.000000897   0.000004207  -0.000062321  -0.000000001  -0.000000032   0.000024485  -0.000695802

    7    7.2  0.5  0.5  -0.000000003   0.000000002   0.000000815   0.000000195  -0.000000000  -0.000000000   0.000001832  -0.000004163
                         0.000001733   0.000126851  -0.000018350  -0.000001201  -0.000000157   0.000000003   0.017025067   0.000565726

    8    8.2  0.5  0.5   0.000000008   0.000000312   0.000127877   0.000008385  -0.000000009   0.000000000   0.011193611   0.000373254
                        -0.000000004  -0.000000007   0.000005628   0.000001355   0.000000000  -0.000000000  -0.000003108   0.000002330

    9    1.2  0.5 -0.5   0.480248322  -0.006556640   0.000121810  -0.001883156   0.006652311   0.331226234   0.000000000  -0.000000015
                         0.660215492  -0.009013660   0.000031328  -0.000484329   0.009494893   0.472761651  -0.000000000   0.000000008

   10    2.2  0.5 -0.5  -0.005597205  -0.409900862  -0.703980667  -0.046167471   0.577222379  -0.011581244  -0.000000012  -0.000000000
                        -0.000020267  -0.001111938  -0.029193553  -0.007351979   0.001472324  -0.000037717   0.000000000   0.000000000

   11    3.2  0.5 -0.5   0.000005163   0.000970811  -0.029197009  -0.007370483  -0.001472577   0.000025368   0.000000000  -0.000000000
                        -0.005559525  -0.406533481   0.705917432   0.046295246   0.577228292  -0.011590043   0.000000050   0.000000002

   12    4.2  0.5 -0.5   0.000014872  -0.000000201  -0.000000767   0.000026128  -0.000000001  -0.000000046   0.000267427  -0.007940611
                        -0.000010835   0.000000148   0.000008370  -0.000123948   0.000000001   0.000000032   0.000480146  -0.014496985

   13    5.2  0.5 -0.5   0.000001513   0.000110920  -0.000064145  -0.000004207   0.000000064  -0.000000001  -0.015950778  -0.000528867
                         0.000000000  -0.000000004  -0.000002807  -0.000000678   0.000000000  -0.000000000  -0.000000058  -0.000004053

   14    6.2  0.5 -0.5   0.000000004   0.000000009   0.000002808   0.000000670   0.000000000  -0.000000000  -0.000000382   0.000000855
                        -0.000001520  -0.000111230  -0.000063627  -0.000004172  -0.000000055   0.000000001   0.000793556   0.000027449

   15    7.2  0.5 -0.5   0.000102584  -0.000001400   0.000000111  -0.000003782  -0.000000003  -0.000000129  -0.000275429   0.008177338
                        -0.000074618   0.000001022  -0.000001212   0.000017975   0.000000002   0.000000090  -0.000494168   0.014932650

   16    8.2  0.5 -0.5   0.000000178  -0.000000002  -0.000008458   0.000125249  -0.000000000  -0.000000005   0.000326241  -0.009818807
                         0.000000256  -0.000000009  -0.000000777   0.000026401  -0.000000000  -0.000000007  -0.000181357   0.005374753

   17    1.2  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000003   0.000000000   0.000000001  -0.000001306  -0.000151308
                         0.000001648   0.000120831  -0.000000288  -0.000000019   0.000085622  -0.000001717   0.620884850   0.020661356

   18    2.2  1.5  1.5   0.000001650   0.000120959  -0.000000289  -0.000000004   0.000085713  -0.000001719  -0.349731217  -0.011667648
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000001233  -0.000073152

   19    3.2  1.5  1.5  -0.000000282   0.000000013   0.000013806  -0.000204459   0.000000006  -0.000000041  -0.007117110   0.215236949
                        -0.000000350   0.000000006   0.000001264  -0.000043107  -0.000000001  -0.000000059   0.003970069  -0.117898065

   20    4.2  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000005   0.000000000   0.000000000  -0.000000016  -0.000001337
                         0.000001918   0.000140611  -0.000000334  -0.000000029   0.000099693  -0.000001999   0.004835092   0.000161528

   21    5.2  1.5  1.5  -0.000030481   0.000000416   0.000000822  -0.000028026   0.000000870   0.000043405  -0.000336334   0.009989318
                         0.000022190  -0.000000296  -0.000008978   0.000132948  -0.000000606  -0.000030411  -0.000600062   0.018236764

   22    6.2  1.5  1.5   0.000001938   0.000140109  -0.000000334  -0.000000022   0.000099337  -0.000002030  -0.054873694  -0.001830005
                         0.000000038  -0.000000001   0.000000000  -0.000000003  -0.000000001  -0.000000054  -0.000000191  -0.000010956

   23    7.2  1.5  1.5   0.000082568  -0.000001173   0.000000001  -0.000000015  -0.000002324  -0.000114199   0.000501972  -0.014627577
                         0.000113510  -0.000001548   0.000000001  -0.000000018  -0.000003269  -0.000162998  -0.000269983   0.008012679

   24    8.2  1.5  1.5   0.000110095  -0.000001501   0.000000228  -0.000007773  -0.000003172  -0.000158195  -0.000372437   0.011055380
                        -0.000080079   0.000001094  -0.000002485   0.000036798   0.000002225   0.000110835  -0.000666890   0.020183017

   25    1.2  1.5  0.5  -0.000113060   0.000001542   0.000000727  -0.000024794   0.000000812   0.000040488  -0.007239355   0.214915534
                         0.000082257  -0.000001122  -0.000007946   0.000117670  -0.000000569  -0.000028366  -0.012955587   0.392355802

   26    2.2  1.5  0.5   0.000081989  -0.000001124   0.000007999  -0.000118451  -0.000000563  -0.000028403  -0.000707907   0.019553869
                         0.000112736  -0.000001537   0.000000733  -0.000024989  -0.000000813  -0.000040540   0.000363027  -0.010711232

   27    3.2  1.5  0.5   0.000000958   0.000069800  -0.000000215  -0.000000023  -0.000098915   0.000001982   0.469629799   0.015605846
                         0.000000009  -0.000000000  -0.000000002  -0.000000004  -0.000000000  -0.000000002   0.000000661   0.000119486

   28    4.2  1.5  0.5   0.000000288  -0.000000004  -0.000000849   0.000028958  -0.000002837  -0.000141449   0.000460174  -0.013658519
                        -0.000000228  -0.000000004   0.000009275  -0.000137348   0.000001979   0.000099102   0.000823647  -0.024935415

   29    5.2  1.5  0.5  -0.000000001   0.000000004   0.000001638   0.000000400  -0.000000000  -0.000000005  -0.000000012  -0.000005535
                         0.000001856   0.000136050  -0.000037587  -0.000002471   0.000193119  -0.000003869   0.020597684   0.000684342

   30    6.2  1.5  0.5   0.000000218  -0.000000003  -0.000009282   0.000136772   0.000001981   0.000098709   0.000555715  -0.017293800
                         0.000000275  -0.000000004  -0.000000847   0.000028837   0.000002825   0.000140889  -0.000319214   0.009472471

   31    7.2  1.5  0.5  -0.000000006  -0.000000439  -0.000139927  -0.000009219   0.000000148  -0.000000035  -0.051902815  -0.001719154
                         0.000000000  -0.000000015  -0.000006153  -0.000001494  -0.000000001  -0.000000046  -0.000000011  -0.000016728

   32    8.2  1.5  0.5   0.000000000  -0.000000014  -0.000005972  -0.000001440  -0.000000000  -0.000000001   0.000000041   0.000001568
                         0.000000517   0.000037914   0.000135717   0.000008896   0.000053143  -0.000001065  -0.012009970  -0.000403329

   33    1.2  1.5 -0.5   0.000000000   0.000000013   0.000005297   0.000001275   0.000000000   0.000000000  -0.000000748  -0.000125307
                        -0.000001907  -0.000139817  -0.000120137  -0.000007876   0.000049436  -0.000000992   0.447360894   0.014840478

   34    2.2  1.5 -0.5   0.000001904   0.000139397  -0.000120942  -0.000007929  -0.000049500   0.000000989  -0.022295376  -0.000795267
                         0.000000005  -0.000000013  -0.000005303  -0.000001283  -0.000000000  -0.000000006  -0.000000447   0.000021691

   35    3.2  1.5 -0.5  -0.000041059   0.000000571  -0.000000023   0.000000209   0.000001135   0.000056758  -0.013629647   0.411886711
                        -0.000056446   0.000000770  -0.000000002   0.000000052   0.000001625   0.000081011   0.007601938  -0.225613580

   36    4.2  1.5 -0.5   0.000000006  -0.000000015  -0.000006166  -0.000001488   0.000000000   0.000000007   0.000000028   0.000007909
                         0.000000001   0.000000367   0.000140232   0.000009194  -0.000172710   0.000003459  -0.028431146  -0.000943447

   37    5.2  1.5 -0.5  -0.000110024   0.000001500  -0.000000228   0.000007776  -0.000003172  -0.000158163   0.000333617  -0.009895263
                         0.000080028  -0.000001092   0.000002493  -0.000036810   0.000002216   0.000110813   0.000597541  -0.018065115

   38    6.2  1.5 -0.5   0.000000005   0.000000350   0.000139644   0.000009200   0.000172027  -0.000003451   0.019718093   0.000640740
                        -0.000000000   0.000000015   0.000006140   0.000001491  -0.000000000  -0.000000001  -0.000000252   0.000012997

   39    7.2  1.5 -0.5   0.000000270  -0.000000004  -0.000009300   0.000137050  -0.000000058  -0.000000084   0.001499741  -0.045521161
                         0.000000346  -0.000000005  -0.000000849   0.000028895  -0.000000002  -0.000000122  -0.000840564   0.024934435

   40    8.2  1.5 -0.5  -0.000030652   0.000000419   0.000000821  -0.000028022  -0.000000873  -0.000043524  -0.000195137   0.005769699
                         0.000022314  -0.000000304  -0.000008975   0.000132927   0.000000610   0.000030494  -0.000352985   0.010533280

   41    1.2  1.5 -1.5   0.000097714  -0.000001333   0.000000002  -0.000000072   0.000001406   0.000070124  -0.010058544   0.298277980
                        -0.000071078   0.000000970  -0.000000019   0.000000279  -0.000000986  -0.000049130  -0.018048274   0.544544076

   42    2.2  1.5 -1.5   0.000071153  -0.000000971   0.000000004  -0.000000280   0.000000987   0.000049182  -0.010197923   0.306729849
                         0.000097817  -0.000001334   0.000000001  -0.000000072   0.000001408   0.000070198   0.005669366  -0.168014069

   43    3.2  1.5 -1.5   0.000000012   0.000000449   0.000208752   0.000013686   0.000000072   0.000000002   0.245411702   0.008149279
                         0.000000007   0.000000022   0.000009179   0.000002215   0.000000000   0.000000005   0.000000917   0.000062831

   44    4.2  1.5 -1.5   0.000113710  -0.000001551   0.000000003  -0.000000083   0.000001637   0.000081648  -0.000078772   0.002322821
                        -0.000082714   0.000001128  -0.000000029   0.000000323  -0.000001147  -0.000057204  -0.000141026   0.004240592

   45    5.2  1.5 -1.5   0.000000005  -0.000000015  -0.000005972  -0.000001440   0.000000000   0.000000003   0.000000041   0.000006707
                         0.000000511   0.000037703   0.000135739   0.000008899  -0.000052998   0.000001060  -0.020793415  -0.000687859

   46    6.2  1.5 -1.5   0.000082418  -0.000001171   0.000000022  -0.000000323   0.000001209   0.000056999  -0.001599736   0.048126674
                         0.000113304  -0.000001545   0.000000002  -0.000000083   0.000001632   0.000081357   0.000888754  -0.026361822

   47    7.2  1.5 -1.5  -0.000001942  -0.000140364   0.000000019   0.000000001   0.000199022  -0.000004011  -0.016678400  -0.000569954
                        -0.000000038   0.000000000  -0.000000014  -0.000000000  -0.000000001  -0.000000028  -0.000000314   0.000004362

   48    8.2  1.5 -1.5   0.000000002  -0.000000004  -0.000001638  -0.000000398   0.000000000   0.000000002   0.000000035   0.000006266
                        -0.000001858  -0.000136138   0.000037574   0.000002464   0.000193158  -0.000003875  -0.023012510  -0.000763814


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.000000001  -0.000000119  -0.000000000  -0.000000003  -0.000147271  -0.000000208   0.000135583  -0.000000115
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000000014   0.000000000  -0.000000008  -0.000000000  -0.000000061   0.000042774  -0.000000167  -0.000194917
                        -0.000000018  -0.000000000   0.000000023   0.000000000  -0.000000012   0.000009378  -0.000000011  -0.000010607

    3    3.2  0.5  0.5  -0.000000007  -0.000000000  -0.000000040  -0.000000000   0.000000053  -0.000038971   0.000000000   0.000003697
                        -0.000000006  -0.000000000  -0.000000013  -0.000000000  -0.000000267   0.000187170  -0.000000052  -0.000059630

    4    4.2  0.5  0.5   0.000000542   0.000000182   0.000004852  -0.000012764   0.000000080   0.000000002   0.000000087   0.000000025
                        -0.000059849   0.010850363   0.000007970  -0.013224875  -0.003600720  -0.000005177  -0.005232699   0.000004473

    5    5.2  0.5  0.5  -0.010632173  -0.000060133  -0.001458114  -0.000002561   0.000008643  -0.006069520  -0.000001112  -0.001401412
                         0.013312889   0.000074435   0.004419362   0.000001957   0.000001702  -0.001260015   0.000000003  -0.000075030

    6    6.2  0.5  0.5   0.004297755   0.000024618   0.021959054   0.000010159  -0.000000295   0.000386334   0.000000547   0.000324088
                         0.003432849   0.000019159   0.007242392   0.000010971   0.000002756  -0.001861604  -0.000005218  -0.006042956

    7    7.2  0.5  0.5  -0.000000593  -0.000003640   0.000003736  -0.000014343  -0.000000715  -0.000000132  -0.000000778   0.000000045
                        -0.000048890   0.008527568   0.000007888  -0.014285089   0.005243270   0.000007463  -0.003596708   0.000003191

    8    8.2  0.5  0.5   0.000115873  -0.020802445   0.000002125  -0.002819801  -0.004296282  -0.000006135  -0.004677196   0.000004019
                         0.000000819  -0.000001559  -0.000000252   0.000004919  -0.000000939  -0.000000243   0.000000500  -0.000000316

    9    1.2  0.5 -0.5   0.000000074   0.000000000   0.000000001   0.000000000   0.000000204  -0.000144196  -0.000000115  -0.000135389
                        -0.000000093  -0.000000001  -0.000000003  -0.000000000   0.000000042  -0.000029936  -0.000000006  -0.000007262

   10    2.2  0.5 -0.5  -0.000000000   0.000000023   0.000000000  -0.000000024  -0.000043787  -0.000000063  -0.000195206   0.000000167
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000488  -0.000000001   0.000000152  -0.000000002

   11    3.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000112  -0.000000003   0.000000498   0.000000002
                        -0.000000000   0.000000009  -0.000000000   0.000000043   0.000191184   0.000000272   0.000059743  -0.000000052

   12    4.2  0.5 -0.5   0.008478163   0.000047103  -0.012559471  -0.000006056   0.000001050  -0.000731841   0.000000265   0.000280173
                         0.006771346   0.000036926  -0.004142125  -0.000007098  -0.000005069   0.003525563  -0.000004465  -0.005225193

   13    5.2  0.5 -0.5   0.000095688  -0.017037491   0.000002659  -0.004653690   0.006198928   0.000008808  -0.001403419   0.000001111
                        -0.000000535  -0.000000164  -0.000001821   0.000005066   0.000000044   0.000000091  -0.000000137   0.000000062

   14    6.2  0.5 -0.5  -0.000000393  -0.000000338   0.000007250  -0.000022578   0.000000140   0.000000271  -0.000000033  -0.000000267
                         0.000031192  -0.005500468   0.000013077  -0.023122538  -0.001901269  -0.000002758   0.006051640  -0.000005240

   15    7.2  0.5 -0.5   0.006665558   0.000037831  -0.013566166  -0.000006327  -0.000001388   0.001065101   0.000000215   0.000193414
                         0.005318812   0.000030974  -0.004474720  -0.000006013   0.000007334  -0.005133950  -0.000003184  -0.003591504

   16    8.2  0.5 -0.5   0.012980614   0.000071671   0.000885269   0.000000903   0.000006056  -0.004206778   0.000003996   0.004670456
                        -0.016255626  -0.000091052  -0.002677237  -0.000001940   0.000001009  -0.000872387   0.000000531   0.000251007

   17    1.2  1.5  1.5  -0.000027804   0.000006362  -0.000011446  -0.000016740   0.000000015  -0.000010422   0.000000006   0.000003470
                         0.002196992  -0.398094328  -0.000002976  -0.016022989   0.327809159   0.000461575  -0.301902338   0.000253079

   18    2.2  1.5  1.5  -0.003274422   0.584752558   0.000164243  -0.283356636   0.327786597   0.000423720  -0.301879777   0.000294943
                         0.000001730   0.000010330  -0.000074357   0.000273959  -0.000000005   0.000002574  -0.000000004  -0.000001228

   19    3.2  1.5  1.5   0.227796282   0.001324323   0.140968251   0.000205692  -0.000710050   0.511973946  -0.000508067  -0.566947732
                        -0.285234620  -0.001592066  -0.427423771  -0.000191634  -0.000133275   0.106287932  -0.000031902  -0.030408781

   20    4.2  1.5  1.5  -0.000002087   0.000000857  -0.000014549   0.000034728  -0.000000002   0.000001101  -0.000000001  -0.000000365
                         0.000264470  -0.047447895  -0.000022035   0.035842564  -0.027465581  -0.000039769   0.025293805  -0.000019818

   21    5.2  1.5  1.5   0.026926608   0.000150142   0.048542790   0.000021867   0.000004361  -0.003479303   0.000001866   0.001777505
                         0.021504393   0.000118506   0.016009844   0.000027292  -0.000025458   0.016759321  -0.000027085  -0.033140148

   22    6.2  1.5  1.5  -0.000072251   0.013006423  -0.000008489   0.019402647  -0.027471900  -0.000047488   0.025299674  -0.000029484
                         0.000000707   0.000000171  -0.000000620  -0.000018915   0.000000004  -0.000002702   0.000000000  -0.000000153

   23    7.2  1.5  1.5  -0.007162853  -0.000045368   0.005768796   0.000002466   0.000047034  -0.026887574  -0.000029452  -0.025267289
                         0.008969073   0.000050637  -0.017491401  -0.000008212   0.000007005  -0.005581984  -0.000001427  -0.001355244

   24    8.2  1.5  1.5   0.016702746   0.000093783  -0.004796774  -0.000002513   0.000008476  -0.006755437  -0.000000964  -0.000914028
                         0.013339215   0.000075359  -0.001581991  -0.000001762  -0.000046425   0.032539941   0.000014377   0.017041184

   25    1.2  1.5  0.5   0.373310878   0.002091779   0.123948181   0.000050287   0.000019609  -0.015577984  -0.000038079  -0.036226549
                         0.298135598   0.001688308   0.040879653   0.000072101  -0.000100378   0.075036366   0.000572033   0.675413406

   26    2.2  1.5  0.5  -0.096423739  -0.000554570  -0.203297855  -0.000282136  -0.000962158   0.666170087   0.000023992   0.020753755
                         0.120735384   0.000665799   0.616411943   0.000281646  -0.000173486   0.138299828   0.000001237   0.001113258

   27    3.2  1.5  0.5  -0.001843902   0.323259926   0.000282342  -0.518530951   0.189264987   0.000315712  -0.174275876   0.000147624
                         0.000023573   0.000006716  -0.000118117   0.000503493  -0.000000021   0.000016237  -0.000000004  -0.000001929

   28    4.2  1.5  0.5  -0.018012397  -0.000101369   0.017652006   0.000008458  -0.000006447   0.005141889  -0.000001544  -0.001471232
                        -0.014385096  -0.000082446   0.005821749   0.000009652   0.000036907  -0.024767751   0.000022385   0.027429966

   29    5.2  1.5  0.5  -0.000001646   0.000000026   0.000008249  -0.000023057   0.000000000   0.000001323   0.000000002  -0.000000275
                         0.000026215  -0.005048706   0.000013541  -0.023710509  -0.033186930  -0.000048011   0.017114576  -0.000012927

   30    6.2  1.5  0.5  -0.006295856  -0.000033657   0.010828721   0.000003174  -0.000043801   0.024763933  -0.000032498  -0.027429100
                         0.007883460   0.000044833  -0.032833412  -0.000015251  -0.000006446   0.005141098  -0.000001544  -0.001471186

   31    7.2  1.5  0.5  -0.000046506   0.008977116   0.000020722  -0.041464671  -0.025293783  -0.000044198  -0.027468854   0.000032534
                        -0.000004790   0.000000183  -0.000004456   0.000040231  -0.000000005  -0.000002592  -0.000000009   0.000000199

   32    8.2  1.5  0.5   0.000000789  -0.000001008  -0.000004917   0.000016433  -0.000000007  -0.000000596  -0.000000009  -0.000000363
                        -0.000344172   0.061700355  -0.000008381   0.016792212   0.017161182   0.000024382   0.033144386  -0.000028027

   33    1.2  1.5 -0.5  -0.000013832  -0.000008100  -0.000052791   0.000127324  -0.000000097   0.000001204  -0.000000117  -0.000007387
                        -0.002688072   0.477750813  -0.000070288   0.130515443  -0.076636343  -0.000102269   0.676384234  -0.000573252

   34    2.2  1.5 -0.5  -0.000866325   0.154513977  -0.000355668   0.649071109   0.680374475   0.000977335  -0.020783598   0.000024024
                         0.000017837   0.000001538   0.000180071  -0.000630837   0.000000060   0.000025714   0.000000104   0.000000050

   35    3.2  1.5 -0.5   0.201726147   0.001169114  -0.162410464  -0.000200382   0.000312421  -0.185313637  -0.000147309  -0.174025731
                        -0.252593632  -0.001426081   0.492440289   0.000231334   0.000048277  -0.038471961  -0.000009833  -0.009334090

   36    4.2  1.5 -0.5   0.000001163   0.000000441  -0.000006528   0.000018035  -0.000000006  -0.000001189  -0.000000009  -0.000000342
                         0.000130658  -0.023051625  -0.000011049   0.018587247   0.025295860   0.000037447   0.027469393  -0.000022436

   37    5.2  1.5 -0.5   0.003944984   0.000021511   0.022517468   0.000010288  -0.000008464   0.006745915   0.000000967   0.000916647
                         0.003150641   0.000015074   0.007426464   0.000012066   0.000047278  -0.032494076  -0.000012893  -0.017090011

   38    6.2  1.5 -0.5  -0.000056035   0.010088941   0.000015480  -0.034573010   0.025291961   0.000044196   0.027468525  -0.000032534
                        -0.000001679   0.000000231   0.000001748   0.000033587   0.000000005   0.000002592   0.000000009  -0.000000199

   39    7.2  1.5 -0.5   0.005602055   0.000025279  -0.012987231  -0.000010705  -0.000043802   0.024765717  -0.000032498  -0.027429428
                        -0.007014669  -0.000039328   0.039378324   0.000018294  -0.000006447   0.005141469  -0.000001544  -0.001471204

   40    8.2  1.5 -0.5  -0.048212166  -0.000269423  -0.015947247  -0.000006426   0.000004373  -0.003488351   0.000001864   0.001775181
                        -0.038503516  -0.000214165  -0.005259654  -0.000007289  -0.000023994   0.016802903  -0.000027967  -0.033096813

   41    1.2  1.5 -1.5  -0.311067642  -0.001734041  -0.015216390  -0.000000747  -0.000083620   0.066633863   0.000017020   0.016169671
                        -0.248427070  -0.001349314  -0.005019716   0.000011803   0.000454057  -0.320965379  -0.000252529  -0.301469006

   42    2.2  1.5 -1.5  -0.364908638  -0.002044765   0.088749778   0.000121930  -0.000415397   0.320943290   0.000294454   0.301446478
                         0.456921473   0.002557495  -0.269099499  -0.000132808  -0.000083610   0.066629267   0.000017023   0.016168465

   43    3.2  1.5 -1.5  -0.002070459   0.365034149  -0.000246285   0.450069923  -0.522890477  -0.000722317  -0.567762644   0.000509046
                         0.000041268   0.000005693   0.000135559  -0.000437701  -0.000000145  -0.000013839  -0.000000189  -0.000004645

   44    4.2  1.5 -1.5  -0.037075458  -0.000207955   0.034039115   0.000016390   0.000007006  -0.005582937  -0.000001426  -0.001354718
                        -0.029609341  -0.000163413   0.011226274   0.000020703  -0.000039162   0.026892173   0.000019770   0.025257499

   45    5.2  1.5 -1.5  -0.000001098   0.000000493   0.000019098  -0.000049701  -0.000000006  -0.000000905  -0.000000009  -0.000000413
                         0.000191272  -0.034459848   0.000029297  -0.051114725   0.017116670   0.000025813   0.033187783  -0.000027146

   46    6.2  1.5 -1.5  -0.008116566  -0.000045641  -0.006077225  -0.000002062   0.000047046  -0.026898360  -0.000029450  -0.025263361
                         0.010163089   0.000056015   0.018426350   0.000008258   0.000007007  -0.005584223  -0.000001427  -0.001355033

   47    7.2  1.5 -1.5   0.000067879  -0.011478272  -0.000008572   0.018418138   0.027460884   0.000047476  -0.025303609   0.000029486
                        -0.000003849  -0.000000255  -0.000000222  -0.000017886  -0.000000004   0.000002702  -0.000000000   0.000000153

   48    8.2  1.5 -1.5   0.000000358   0.000000382  -0.000000890   0.000004885  -0.000000001  -0.000001138  -0.000000002   0.000000192
                         0.000120308  -0.021375602  -0.000002937   0.005050912   0.033233773   0.000047179  -0.017065680   0.000014408


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5  -0.000000005   0.000086619   0.000000010   0.000001032   0.000000012  -0.000000416   0.000000034  -0.000000282
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000023068  -0.000000001   0.000000011  -0.000000000   0.000000072   0.000000002   0.000000192   0.000000023
                         0.000083434   0.000000007   0.000000008  -0.000000000  -0.000000033  -0.000000001  -0.000000050  -0.000000006

    3    3.2  0.5  0.5   0.000083545   0.000000005  -0.000000481   0.000000005  -0.000000150  -0.000000004   0.000000078   0.000000009
                         0.000023099   0.000000000   0.000000977  -0.000000009  -0.000000336  -0.000000010   0.000000296   0.000000036

    4    4.2  0.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000003  -0.000000007   0.000000000   0.000000002  -0.000000002
                        -0.000000002   0.000017006   0.000000156   0.000016054  -0.000000867   0.000029804   0.000004769  -0.000039697

    5    5.2  0.5  0.5  -0.000001759  -0.000000000   0.000004361  -0.000000051  -0.000169538  -0.000004938   0.000024433   0.000002938
                         0.000006299   0.000000000   0.000002147  -0.000000021   0.000075708   0.000002208  -0.000006487  -0.000000784

    6    6.2  0.5  0.5  -0.000005805  -0.000000000  -0.000017410   0.000000171  -0.000027910  -0.000000813  -0.000052747  -0.000006341
                        -0.000001621  -0.000000001   0.000035356  -0.000000344  -0.000062491  -0.000001816  -0.000198535  -0.000023862

    7    7.2  0.5  0.5  -0.000000000  -0.000000001  -0.000000007  -0.000000014  -0.000000001   0.000000000   0.000000000  -0.000000012
                         0.000000002  -0.000028993  -0.000000025  -0.000003884  -0.000009442   0.000324112   0.000021938  -0.000182535

    8    8.2  0.5  0.5  -0.000000000  -0.000003453  -0.000000715  -0.000073964  -0.000000564   0.000019361   0.000003975  -0.000033095
                        -0.000000000   0.000000004   0.000000006   0.000000000  -0.000000003  -0.000000054  -0.000000012   0.000000029

    9    1.2  0.5 -0.5   0.000023295   0.000000001   0.000000926  -0.000000009   0.000000379   0.000000011  -0.000000273  -0.000000033
                        -0.000083427  -0.000000005   0.000000456  -0.000000004  -0.000000169  -0.000000005   0.000000073   0.000000009

   10    2.2  0.5 -0.5  -0.000000007   0.000086564  -0.000000000  -0.000000013  -0.000000002   0.000000079   0.000000024  -0.000000198
                        -0.000000001   0.000000221   0.000000000   0.000000003  -0.000000000   0.000000001  -0.000000000   0.000000001

   11    3.2  0.5 -0.5   0.000000001  -0.000000221  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001
                        -0.000000004   0.000086679   0.000000011   0.000001089  -0.000000011   0.000000368  -0.000000037   0.000000306

   12    4.2  0.5 -0.5  -0.000016380  -0.000000002   0.000007090  -0.000000069   0.000012152   0.000000347   0.000010192   0.000001223
                        -0.000004574  -0.000000000  -0.000014404   0.000000140   0.000027214   0.000000794   0.000038366   0.000004610

   13    5.2  0.5 -0.5  -0.000000000   0.000006540  -0.000000055  -0.000004861   0.000005409  -0.000185674   0.000003041  -0.000025279
                        -0.000000000   0.000000000  -0.000000003  -0.000000001   0.000000003  -0.000000003   0.000000003   0.000000005

   14    6.2  0.5 -0.5   0.000000001   0.000000000   0.000000002  -0.000000001   0.000000002  -0.000000005  -0.000000000  -0.000000006
                         0.000000001  -0.000006027   0.000000384   0.000039410  -0.000001990   0.000068441   0.000024690  -0.000205423

   15    7.2  0.5 -0.5   0.000027925   0.000000002  -0.000001728   0.000000017   0.000132151   0.000003849   0.000046863   0.000005633
                         0.000007798   0.000000000   0.000003478  -0.000000020   0.000295947   0.000008621   0.000176417   0.000021202

   16    8.2  0.5 -0.5  -0.000000933  -0.000000000  -0.000066355   0.000000639  -0.000017701  -0.000000513  -0.000031993  -0.000003845
                         0.000003325  -0.000000000  -0.000032676   0.000000321   0.000007845   0.000000232   0.000008470   0.000001009

   17    1.2  1.5  1.5  -0.000007552  -0.000000015   0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000037755  -0.499427414   0.000000137   0.000014239   0.000000106  -0.000003642  -0.000000874   0.000007274

   18    2.2  1.5  1.5   0.000037756  -0.499433701   0.000000144   0.000015044   0.000000122  -0.000004163  -0.000000957   0.000007956
                         0.000007551   0.000000015  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   19    3.2  1.5  1.5  -0.000003831  -0.000036898   0.000013494  -0.000000130  -0.000011876  -0.000000347   0.000006711   0.000000807
                         0.000013732   0.000000005   0.000006645  -0.000000065   0.000005303   0.000000154  -0.000001783  -0.000000215

   20    4.2  1.5  1.5   0.000000224   0.000000000  -0.000012850   0.000000048  -0.000010599  -0.000002961  -0.000000598  -0.000003991
                        -0.000000783   0.010593737  -0.000220690  -0.025339610  -0.007428200   0.254328993   0.062090873  -0.516658244

   21    5.2  1.5  1.5  -0.005408778  -0.000000432   0.110399398  -0.001072428   0.124610950   0.003624238  -0.023728313  -0.002851342
                        -0.001510285   0.000000462  -0.224187340   0.002173143   0.279052710   0.008152958  -0.089300793  -0.010761462

   22    6.2  1.5  1.5  -0.000002667   0.010592040   0.003503192   0.365201289   0.011633873  -0.397471394  -0.027077494   0.224653514
                         0.000006525   0.000000000  -0.000021688   0.000000259  -0.000030642  -0.000004711   0.000021379   0.000000943

   23    7.2  1.5  1.5  -0.005699234  -0.000003591  -0.017751816   0.000063684   0.214571508   0.006375093  -0.256596447  -0.030911765
                         0.020410647   0.000001629  -0.008741214   0.000084652  -0.095818221  -0.002786884   0.068178684   0.008199616

   24    8.2  1.5  1.5   0.019681051   0.000001571   0.117244891  -0.001138429   0.103256681   0.003003765  -0.038378325  -0.004617646
                         0.005495510   0.000000219  -0.238088346   0.002308028   0.231232297   0.006745739  -0.144446282  -0.017365486

   25    1.2  1.5  0.5   0.277731015   0.000022173  -0.000003549   0.000000034   0.000006683   0.000000194   0.000001117   0.000000134
                         0.077550406   0.000001663   0.000007207  -0.000000069   0.000014967   0.000000436   0.000004202   0.000000505

   26    2.2  1.5  0.5   0.077546772  -0.000040942   0.000023193  -0.000000224  -0.000001471  -0.000000044   0.000015664   0.000001882
                        -0.277717991  -0.000022167   0.000011421  -0.000000111   0.000000657   0.000000019  -0.000004162  -0.000000500

   27    3.2  1.5  0.5  -0.000037871   0.576717718   0.000000084   0.000008472  -0.000000017   0.000000556  -0.000000410   0.000003420
                        -0.000029239  -0.000000019   0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   28    4.2  1.5  0.5   0.017679570   0.000001411   0.007485220  -0.000072959   0.198191756   0.005763562  -0.097965860  -0.011775794
                         0.004936639  -0.000000903  -0.015199952   0.000191191   0.443830765   0.012915959  -0.368706524  -0.044337968

   29    5.2  1.5  0.5   0.000001135   0.000000001  -0.000014221   0.000000295   0.000014630  -0.000000980  -0.000002646   0.000003765
                        -0.000001314   0.020435616  -0.003909184  -0.405544813  -0.005210399   0.180443171  -0.063026362   0.524296426

   30    6.2  1.5  0.5   0.004936158   0.000000106   0.543302265  -0.005252769  -0.216960241  -0.006198749  -0.119755464  -0.014472169
                        -0.017677847  -0.000001411   0.267545236  -0.002598445   0.096881925   0.002818812   0.031821566   0.003824370

   31    7.2  1.5  0.5  -0.000001617  -0.000000094  -0.000288955  -0.013500948  -0.013421640   0.463176429   0.030867118  -0.256578588
                         0.000005790   0.000000000  -0.000077568   0.000000861  -0.000024658   0.000003811  -0.000008958   0.000000804

   32    8.2  1.5  0.5   0.000000254   0.000000000  -0.000016311   0.000000291   0.000007979  -0.000001271  -0.000001609  -0.000002103
                        -0.000000377   0.005613483  -0.004320778  -0.448248782  -0.004484227   0.154660349   0.030717831  -0.255654389

   33    1.2  1.5 -0.5  -0.000004361  -0.000000009  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000021803  -0.288354959  -0.000000077  -0.000008033  -0.000000477   0.000016391   0.000000523  -0.000004348

   34    2.2  1.5 -0.5  -0.000010339   0.288341437   0.000000250   0.000025852  -0.000000048   0.000001611  -0.000001947   0.000016207
                        -0.000045396  -0.000000012  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   35    3.2  1.5 -0.5  -0.155102910   0.000017976  -0.000007600   0.000000075   0.000000508   0.000000015  -0.000003305  -0.000000396
                         0.555469543   0.000044339  -0.000003743   0.000000036  -0.000000227  -0.000000007   0.000000878   0.000000106

   36    4.2  1.5 -0.5  -0.000001249  -0.000000001  -0.000019012   0.000000096  -0.000003551  -0.000004569  -0.000004996   0.000002418
                         0.000001116  -0.018355860   0.000203753   0.016943049  -0.014143572   0.486071724  -0.045875097   0.381499416

   37    5.2  1.5 -0.5   0.019682701   0.000001571   0.179162182  -0.001739766  -0.073573561  -0.002137811   0.134634509   0.016182472
                         0.005495970  -0.000000740  -0.363823454   0.003500734  -0.164762464  -0.004751656   0.506715203   0.060913464

   38    6.2  1.5 -0.5  -0.000001387   0.018354071   0.005860322   0.605605319  -0.006809408   0.237608617   0.014968937  -0.123911194
                        -0.000000278  -0.000000001  -0.000010544   0.000000406  -0.000046424   0.000001087  -0.000020300  -0.000001501

   39    7.2  1.5 -0.5   0.000000026  -0.000006011   0.012111616  -0.000293495   0.422925354   0.012245260   0.247974469   0.029834294
                        -0.000000090  -0.000000000   0.005965254  -0.000058067  -0.188855900  -0.005494964  -0.065888029  -0.007917949

   40    8.2  1.5 -0.5   0.005406664   0.000000432   0.198028038  -0.001923475  -0.063061322  -0.001835654  -0.065649444  -0.007889826
                         0.001509695  -0.000000144  -0.402134140   0.003869060  -0.141220022  -0.004091300  -0.247081601  -0.029687300

   41    1.2  1.5 -1.5   0.481026869   0.000038395   0.000006290  -0.000000061  -0.000001485  -0.000000043  -0.000001868  -0.000000224
                         0.134316395   0.000002880  -0.000012774   0.000000123  -0.000003326  -0.000000096  -0.000007030  -0.000000845

   42    2.2  1.5 -1.5  -0.134318086  -0.000002881   0.000013496  -0.000000129   0.000003801   0.000000111   0.000007689   0.000000925
                         0.481032924   0.000038395   0.000006646  -0.000000065  -0.000001697  -0.000000049  -0.000002043  -0.000000246

   43    3.2  1.5 -1.5  -0.000009929   0.000014256  -0.000000145  -0.000015042   0.000000379  -0.000013006   0.000000835  -0.000006944
                         0.000035537   0.000000003   0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   44    4.2  1.5 -1.5  -0.010203429  -0.000000814  -0.011194547   0.000109025   0.103701088   0.003019046   0.132672823   0.015945375
                        -0.002849088   0.000000005   0.022732749  -0.000192308   0.232226877   0.006787019   0.499333219   0.060008513

   45    5.2  1.5 -1.5  -0.000000561  -0.000000000  -0.000002043   0.000000185   0.000014936   0.000003333   0.000007798   0.000000337
                         0.000000291  -0.005615678  -0.002423354  -0.249895957   0.008922197  -0.305611361   0.011132793  -0.092399474

   46    6.2  1.5 -1.5   0.002848631   0.000007002   0.327630358  -0.003133210   0.362929651   0.010635396   0.217119550   0.026174945
                        -0.010201795  -0.000000814   0.161339170  -0.001567104  -0.162066593  -0.004715537  -0.057691431  -0.006932778

   47    7.2  1.5 -1.5  -0.000002535   0.021191408   0.000094531   0.019787261  -0.006957411   0.234993757  -0.031980791   0.265499673
                         0.000003021  -0.000000000  -0.000047809   0.000000494   0.000054630   0.000003796   0.000013424  -0.000001042

   48    8.2  1.5 -1.5   0.000000211   0.000000001  -0.000001665   0.000000156   0.000007720   0.000002702  -0.000003380  -0.000002141
                        -0.000001572   0.020433903  -0.002573522  -0.265391078   0.007384278  -0.253239650   0.017968943  -0.149457779


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5   0.000000041   0.000000000  -0.000000203   0.000000006   0.000000000   0.000000055   0.000000543   0.000000009
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000000  -0.000000060  -0.000000004  -0.000000149  -0.000000040   0.000000000   0.000000002  -0.000000119
                         0.000000000   0.000000783  -0.000000004  -0.000000146   0.000000145  -0.000000000   0.000000002  -0.000000116

    3    3.2  0.5  0.5   0.000000000   0.000000592   0.000000001   0.000000026  -0.000000162   0.000000000  -0.000000007   0.000000411
                        -0.000000000   0.000000044  -0.000000001  -0.000000025  -0.000000044   0.000000000   0.000000007  -0.000000428

    4    4.2  0.5  0.5   0.000000003  -0.000000005   0.000000001   0.000000230  -0.000003521  -0.000021009  -0.000001399   0.000004275
                        -0.000045456   0.000000002  -0.104273547   0.002975725  -0.000001443  -0.098602257  -0.105648703  -0.001766084

    5    5.2  0.5  0.5  -0.000000019   0.000015117   0.000960361   0.033662034  -0.029108624   0.000003850  -0.001588636   0.094803373
                        -0.000000024  -0.000193839   0.000943083   0.033068794   0.106930179  -0.000000819  -0.001513291   0.090814247

    6    6.2  0.5  0.5  -0.000000037  -0.000296625   0.003478074   0.121941750   0.035925682  -0.000006433   0.000149120  -0.009120987
                         0.000000030  -0.000023123  -0.003545625  -0.124139730   0.009778764  -0.000003160  -0.000154837   0.009526582

    7    7.2  0.5  0.5  -0.000000002   0.000000001  -0.000003146  -0.000004576  -0.000002130   0.000015956   0.000012332  -0.000003943
                        -0.000049205   0.000000008  -0.095885813   0.002739813  -0.000004149  -0.050787799   0.141228615   0.002361242

    8    8.2  0.5  0.5  -0.000028445  -0.000000010  -0.020937191   0.000601863   0.000006360   0.164504035   0.065718512   0.001099669
                         0.000000007   0.000000002   0.000010741  -0.000004477  -0.000004559  -0.000020787  -0.000024749   0.000001514

    9    1.2  0.5 -0.5  -0.000000000   0.000000003  -0.000000004  -0.000000145   0.000000014  -0.000000000  -0.000000007   0.000000392
                         0.000000000  -0.000000041  -0.000000004  -0.000000142  -0.000000053   0.000000000  -0.000000006   0.000000376

   10    2.2  0.5 -0.5   0.000000786  -0.000000000   0.000000208  -0.000000006   0.000000000   0.000000150   0.000000166   0.000000003
                         0.000000002  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000002  -0.000000000

   11    3.2  0.5 -0.5  -0.000000002   0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000594  -0.000000000  -0.000000036   0.000000001  -0.000000000  -0.000000168  -0.000000593  -0.000000010

   12    4.2  0.5 -0.5   0.000000003   0.000045319  -0.002085464  -0.073071810   0.095139269  -0.000000468   0.001218587  -0.073082644
                        -0.000000005   0.000003531   0.002122682   0.074387385   0.025902220  -0.000003776  -0.001278326   0.076292698

   13    5.2  0.5 -0.5  -0.000194428   0.000000023  -0.047187685   0.001345994   0.000001801   0.110821364  -0.131281785  -0.002194032
                         0.000000003   0.000000021   0.000001489   0.000000210  -0.000003500  -0.000020003   0.000001575  -0.000006111

   14    6.2  0.5 -0.5   0.000000006  -0.000000032   0.000001795  -0.000003457   0.000001361   0.000005798  -0.000003262   0.000000579
                        -0.000297525   0.000000035  -0.174012824   0.004966734   0.000007037   0.037232765   0.013188941   0.000214967

   15    7.2  0.5 -0.5   0.000000008   0.000049056  -0.001916715  -0.067196181   0.049011120  -0.000003444  -0.001630523   0.097702654
                         0.000000002   0.000003827   0.001957753   0.068401480   0.013315811  -0.000003145   0.001707887  -0.101978985

   16    8.2  0.5 -0.5   0.000000003  -0.000002218  -0.000426224  -0.014928791   0.043200458  -0.000006069  -0.000795167   0.047441164
                        -0.000000010   0.000028359  -0.000424961  -0.014679826  -0.158730270   0.000004941  -0.000759594   0.045478120

   17    1.2  1.5  1.5   0.000000000  -0.000000000   0.000000697  -0.000000232   0.000001297   0.000006496   0.000000082  -0.000001064
                        -0.000003427   0.000000000   0.000988791  -0.000028327   0.000001125   0.039717164   0.047940226   0.000802115

   18    2.2  1.5  1.5  -0.000003594   0.000000000  -0.024064930   0.000688944  -0.000002374  -0.053255608  -0.021604007  -0.000360468
                        -0.000000000   0.000000003   0.000000674   0.000001994   0.000003571   0.000009411  -0.000000223   0.000000726

   19    3.2  1.5  1.5  -0.000000003   0.000002447  -0.000822669  -0.028767489   0.007094125  -0.000005034   0.000259690  -0.015590669
                        -0.000000004  -0.000031387  -0.000805519  -0.028257406  -0.026063158   0.000000307   0.000249492  -0.014934792

   20    4.2  1.5  1.5  -0.000001680  -0.000005543  -0.000003507   0.000017635   0.000000863  -0.000093053   0.000003563   0.000006520
                         0.082440765  -0.000007530  -0.356357899   0.010151383  -0.000015115  -0.504222365   0.035866067   0.000588554

   21    5.2  1.5  1.5   0.000046510   0.369354446  -0.011089694  -0.388997629  -0.302817594   0.000002650   0.002536243  -0.151806034
                        -0.000034526   0.028793078   0.011284082   0.396019352  -0.082422057  -0.000010729  -0.002654491   0.158471984

   22    6.2  1.5  1.5  -0.004583443  -0.000016556  -0.167231593   0.004812088   0.000011778   0.198307036   0.561545720   0.009347273
                        -0.000000259   0.000200027  -0.000004758   0.000042935  -0.000039314  -0.000027135  -0.000002029  -0.000031888

   23    7.2  1.5  1.5   0.000064617  -0.048354872   0.003614518   0.124720849   0.026710416  -0.000068908   0.002225360  -0.143832251
                         0.000079584   0.620287667   0.003495309   0.122515748  -0.098106786   0.000004597   0.002300653  -0.137776835

   24    8.2  1.5  1.5  -0.000073929  -0.582098752   0.000570977   0.019934511  -0.185134888   0.000005490   0.003084382  -0.184689429
                         0.000060201  -0.045377757  -0.000583107  -0.020289358  -0.050398332   0.000002801  -0.003229717   0.192801839

   25    1.2  1.5  0.5  -0.000000003  -0.000023656   0.000297395   0.010443844   0.033792077  -0.000000791  -0.000479383   0.028702926
                         0.000000002  -0.000001844  -0.000303330  -0.010632974   0.009198630  -0.000001405   0.000502030  -0.029963620

   26    2.2  1.5  0.5  -0.000000002   0.000001331   0.001121485   0.039194964  -0.003081078   0.000002225   0.000047013  -0.003014584
                        -0.000000002  -0.000017075   0.001097839   0.038500581   0.011322441   0.000000260   0.000048126  -0.002887498

   27    3.2  1.5  0.5  -0.000002784   0.000000000  -0.040007893   0.001144545  -0.000001482  -0.023368492   0.045661097   0.000763496
                        -0.000000000  -0.000000001  -0.000000063   0.000003086   0.000001438   0.000005035  -0.000000493   0.000000978

   28    4.2  1.5  0.5   0.000032202   0.269011895  -0.003279658  -0.114906932   0.198696522  -0.000007296  -0.003864656   0.231424945
                        -0.000022762   0.020970647   0.003329905   0.116974223   0.054092904  -0.000010958   0.004057000  -0.241590485

   29    5.2  1.5  0.5   0.000002665  -0.000004242  -0.000004531  -0.000002566   0.000006138  -0.000006693  -0.000001243   0.000016164
                        -0.149422977   0.000015389   0.232617573  -0.006630799   0.000003011  -0.071775252  -0.222696129  -0.003736324

   30    6.2  1.5  0.5  -0.000007044  -0.010481959   0.007074509   0.242583768   0.023176670   0.000052371   0.003069019  -0.173622229
                         0.000018268   0.134459808   0.006796975   0.238293548  -0.085113098   0.000005949   0.002777020  -0.166318320

   31    7.2  1.5  0.5  -0.063442365   0.000012625   0.461323647  -0.013239547   0.000000296   0.170063863   0.491296398   0.008278049
                        -0.000000745  -0.000033770   0.000000556  -0.000081944   0.000023590  -0.000033706  -0.000003706   0.000065753

   32    8.2  1.5  0.5  -0.000001798   0.000011302   0.000013520  -0.000007322   0.000023232   0.000107165  -0.000004343   0.000002352
                         0.102902135  -0.000010674  -0.187596899   0.005348491   0.000019398   0.645324091   0.058333894   0.000974300

   33    1.2  1.5 -0.5  -0.000000000   0.000000002  -0.000000771   0.000000407  -0.000001148  -0.000006054   0.000000579  -0.000001091
                         0.000023727  -0.000000003   0.014904161  -0.000424797  -0.000001132  -0.035021697   0.041493090   0.000694148

   34    2.2  1.5 -0.5   0.000017126  -0.000000002   0.054941241  -0.001569386  -0.000000333  -0.011734168  -0.004174370  -0.000067241
                         0.000000000  -0.000000002   0.000000858  -0.000002720   0.000002215   0.000001031  -0.000000122   0.000002233

   35    3.2  1.5 -0.5   0.000000001   0.000000216   0.000818665   0.028541152   0.006138817  -0.000001777   0.000552031  -0.032973585
                        -0.000000000  -0.000002775   0.000799862   0.028036301  -0.022547757   0.000001053   0.000527436  -0.031586049

   36    4.2  1.5 -0.5   0.000004392  -0.000025195  -0.000001034   0.000006166  -0.000008659  -0.000040613   0.000004070  -0.000015556
                        -0.269828045   0.000030336  -0.163971253   0.004673798  -0.000009917  -0.205928018   0.334549649   0.005603086

   37    5.2  1.5 -0.5  -0.000015671  -0.148971029  -0.004648498  -0.163008268  -0.069256707  -0.000001294  -0.002572899   0.154049138
                         0.000003035  -0.011612694   0.004728528   0.165949509  -0.018846630  -0.000006713   0.002709348  -0.160818000

   38    6.2  1.5 -0.5  -0.134867754   0.000018760   0.340045143  -0.009809981  -0.000008007   0.088212228  -0.240429744  -0.004137258
                        -0.000001976  -0.000005602   0.000000016  -0.000108733   0.000052096  -0.000022784   0.000004148  -0.000117558

   39    7.2  1.5 -0.5   0.000034651   0.004930948  -0.009502344  -0.329102646  -0.044672314  -0.000022685   0.006023434  -0.354784593
                        -0.000009963  -0.063250453  -0.009219424  -0.323281543   0.164091751  -0.000006478   0.005678790  -0.339852974

   40    8.2  1.5 -0.5   0.000011520   0.102590895   0.003742840   0.131452702   0.622667768  -0.000012620   0.000675663  -0.040348862
                        -0.000010439   0.007997280  -0.003820674  -0.133838646   0.169493494  -0.000027509  -0.000701959   0.042128524

   41    1.2  1.5 -1.5   0.000000000   0.000003416   0.000020016   0.000693412  -0.038322782   0.000000745  -0.000554088   0.033162322
                        -0.000000000   0.000000266  -0.000020045  -0.000704902  -0.010431562   0.000001547   0.000579979  -0.034619730

   42    2.2  1.5 -1.5   0.000000003  -0.000000279  -0.000492881  -0.017167134  -0.013988060   0.000004069   0.000259808  -0.015601377
                         0.000000000   0.000003583  -0.000481369  -0.016864471   0.051385738  -0.000001353   0.000249875  -0.014944236

   43    3.2  1.5 -1.5  -0.000031482   0.000000004   0.040324303  -0.001151365  -0.000001618  -0.027011383   0.021589742   0.000360118
                        -0.000000000   0.000000004   0.000000939  -0.000001856   0.000004777   0.000004093  -0.000000364  -0.000000531

   44    4.2  1.5 -1.5  -0.000007075  -0.082191427  -0.007126369  -0.249727556   0.486517457  -0.000014812  -0.000411836   0.024812634
                        -0.000006109  -0.006406827   0.007229506   0.254218608   0.132442310  -0.000003134   0.000420511  -0.025898031

   45    5.2  1.5 -1.5  -0.000005755   0.000038037  -0.000012805  -0.000003693   0.000011049  -0.000045834   0.000004233  -0.000004688
                         0.370475034  -0.000043685   0.555113037  -0.015821245   0.000000259  -0.313834172   0.219450317   0.003671352

   46    6.2  1.5 -1.5   0.000200709  -0.000356028  -0.003462968  -0.119304165   0.052079480  -0.000041027  -0.006728027   0.405515937
                        -0.000000958   0.004569591  -0.003341540  -0.117187550  -0.191346306   0.000001046  -0.006488928   0.388446161

   47    7.2  1.5 -1.5   0.622169570  -0.000074320  -0.174829627   0.005027958  -0.000022524  -0.101677861   0.199173725   0.003198490
                         0.000009422  -0.000070609   0.000000458   0.000039439   0.000065285   0.000021927  -0.000000037  -0.000122030

   48    8.2  1.5 -1.5   0.000008916  -0.000065766  -0.000002839  -0.000001296  -0.000001262  -0.000035363   0.000003409  -0.000006760
                        -0.583864790   0.000069025  -0.028443677   0.000816105  -0.000006032  -0.191872138   0.266988266   0.004465920


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  0.5  0.5   0.000119186  -0.000166199   0.000212360  -0.000007837  -0.000262035   0.000000002  -0.000000022   0.000000023
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000232606  -0.000166812  -0.000002242  -0.000060703  -0.000000000  -0.000003507   0.000000004   0.000000004
                        -0.000011151  -0.000007994  -0.000001362  -0.000036827  -0.000000009  -0.000262276  -0.000000001  -0.000000001

    3    3.2  0.5  0.5   0.000003719   0.000002673   0.000005335   0.000144443  -0.000000002  -0.000261797   0.000000042   0.000000042
                        -0.000066231  -0.000047498  -0.000008978  -0.000243294   0.000000002   0.000003503   0.000000155   0.000000153

    4    4.2  0.5  0.5   0.000000521  -0.000000422  -0.000000629   0.000000071   0.000000004   0.000000000   0.000048313   0.000059165
                        -0.042528852   0.059302355   0.052405086  -0.001933952   0.000019449   0.000000007  -0.157219624   0.159242377

    5    5.2  0.5  0.5  -0.017483903  -0.012538709   0.002767006   0.074990321   0.000000001   0.000000723   0.458893335   0.452983074
                        -0.000822949  -0.000591192   0.001641759   0.044455980   0.000000000   0.000066854  -0.124844544  -0.123561031

    6    6.2  0.5  0.5   0.003317389   0.002374528  -0.000472532  -0.012709595   0.000000003   0.000008173   0.010908046   0.010795941
                        -0.070242055  -0.050372105   0.000788896   0.021443620  -0.000000000  -0.000000085   0.040080593   0.039552068

    7    7.2  0.5  0.5  -0.000005733   0.000009054   0.000010376   0.000001542  -0.000000003  -0.000000000  -0.000114454  -0.000189783
                        -0.030690480   0.042799883  -0.072678484   0.002682093  -0.000014464  -0.000000001   0.469176843  -0.475202433

    8    8.2  0.5  0.5  -0.037755690   0.052646804   0.062405976  -0.002304407  -0.000022335   0.000000003   0.007726618  -0.007815781
                         0.000001097  -0.000009010   0.000012636   0.000002505   0.000000004   0.000000000  -0.000083029   0.000076243

    9    1.2  0.5 -0.5  -0.000166014  -0.000119054   0.000006741   0.000182673   0.000000000   0.000002836  -0.000000022  -0.000000022
                        -0.000007836  -0.000005619   0.000003996   0.000108294   0.000000002   0.000262020   0.000000006   0.000000006

   10    2.2  0.5 -0.5  -0.000167003   0.000232873   0.000070997  -0.000002623  -0.000262298   0.000000009  -0.000000004   0.000000004
                         0.000000120  -0.000000172  -0.000000723   0.000000028  -0.000000668  -0.000000000   0.000000000  -0.000000000

   11    3.2  0.5 -0.5   0.000000431  -0.000000593  -0.000000182   0.000000011   0.000000669  -0.000000002  -0.000000000  -0.000000000
                         0.000047572  -0.000066333  -0.000282941   0.000010443  -0.000261820   0.000000002   0.000000159  -0.000000161

   12    4.2  0.5 -0.5   0.002795565   0.002004630   0.000986163   0.026723563   0.000000007  -0.000019448   0.041807464   0.041379382
                        -0.059236426  -0.042481581  -0.001663627  -0.045079311   0.000000000   0.000000206   0.153656350   0.151676495

   13    5.2  0.5 -0.5  -0.012552638   0.017503260  -0.087177304   0.003217405   0.000066858  -0.000000000  -0.469532723   0.475572515
                        -0.000000641   0.000002297  -0.000000351  -0.000001203  -0.000000000  -0.000000001  -0.000126122  -0.000189312

   14    6.2  0.5 -0.5  -0.000003056  -0.000001928  -0.000002401  -0.000004174   0.000000004   0.000000000  -0.000018008  -0.000012779
                         0.050428041  -0.070320348   0.024927146  -0.000919579   0.000008174  -0.000000003   0.040999001  -0.041538406

   15    7.2  0.5 -0.5   0.002026972   0.001452721  -0.001369066  -0.037053647  -0.000000001   0.000014464  -0.124746795  -0.123456213
                        -0.042751859  -0.030656079   0.002306357   0.062523511  -0.000000000  -0.000000154  -0.458536395  -0.452642780

   16    8.2  0.5 -0.5   0.052587831   0.037713651   0.001980980   0.053688226   0.000000000   0.000000238   0.007560894   0.007476651
                         0.002491191   0.001781201   0.001177293   0.031813212   0.000000003   0.000022334  -0.001981194  -0.001951206

   17    1.2  1.5  1.5   0.000000212   0.000000153   0.000000029   0.000000777   0.000000000   0.000000203   0.000002933   0.000004464
                        -0.014681495   0.020472064  -0.026189716   0.000966856   0.023691840  -0.000000775  -0.012794390   0.012958763

   18    2.2  1.5  1.5  -0.014669869   0.020461589  -0.026133028   0.000967540   0.023687386  -0.000000775  -0.000687410   0.000694499
                        -0.000000083  -0.000000060   0.000000032   0.000000869   0.000000000  -0.000000205  -0.000000045  -0.000000667

   19    3.2  1.5  1.5  -0.036769068  -0.026366782  -0.001387321  -0.037540572   0.000001750   0.000000286   0.011052727   0.010910029
                        -0.001735999  -0.001244509  -0.000822824  -0.022255527   0.000000001   0.000026444  -0.003007217  -0.002975930

   20    4.2  1.5  1.5   0.000003190   0.000002294   0.000000607   0.000016330  -0.000000001   0.000003308   0.000010701   0.000018697
                        -0.178299978   0.248596223  -0.317501966   0.011709661   0.223335350  -0.000007323  -0.040934927   0.041465218

   21    5.2  1.5  1.5  -0.014844415  -0.010641503  -0.003975734  -0.107529679  -0.000003857  -0.118290680  -0.011763893  -0.011641473
                         0.314402116   0.225491871   0.006679046   0.181380326   0.000011488   0.001280375  -0.043238551  -0.042675336

   22    6.2  1.5  1.5  -0.178294318   0.248787714  -0.317871215   0.011645423   0.223360025  -0.000005723  -0.075632846   0.076629132
                         0.000001262   0.000000896  -0.000002313  -0.000062448   0.000000004   0.000144391  -0.000021045  -0.000031611

   23    7.2  1.5  1.5   0.248525926   0.178106633  -0.009971949  -0.273069304  -0.000069171   0.004835106   0.038078332   0.037539640
                         0.011729644   0.008407988  -0.005984314  -0.161880532   0.000014571   0.446703266  -0.010352934  -0.010245332

   24    8.2  1.5  1.5   0.008082598   0.005793510  -0.007299468  -0.197451803   0.000014051   0.430756547  -0.013934023  -0.013789164
                        -0.171224484  -0.122789420   0.012287330   0.333067035  -0.000001700  -0.004662496  -0.051215849  -0.050556085

   25    1.2  1.5  0.5  -0.002117829  -0.001518161   0.000094282   0.002551860  -0.000000446  -0.013673490   0.005703714   0.005644408
                         0.044858541   0.032170345  -0.000158767  -0.004304976   0.000000122   0.000148001   0.020964188   0.020694180

   26    2.2  1.5  0.5   0.002365189   0.001694761  -0.001756712  -0.047635642   0.000002143   0.000148245   0.001842664   0.001816260
                         0.000111478   0.000079839  -0.001044012  -0.028239909   0.000000447   0.013695937  -0.000500702  -0.000495525

   27    3.2  1.5  0.5  -0.008472778   0.011814919  -0.015119944   0.000554665  -0.027359112   0.000000906  -0.023312113   0.023611692
                        -0.000000114  -0.000000082  -0.000000094  -0.000002535   0.000000000   0.000001246  -0.000005570  -0.000009290

   28    4.2  1.5  0.5   0.012177751   0.008730034   0.005765157   0.155934375   0.000012615   0.386786503   0.017466026   0.017284463
                        -0.257913594  -0.184980370  -0.009690732  -0.263030838  -0.000024706  -0.004186564   0.064196275   0.063374542

   29    5.2  1.5  0.5   0.000002893   0.000001209   0.000000018   0.000018800   0.000000001   0.000021759  -0.000006592  -0.000011854
                        -0.122878116   0.171317881  -0.387163359   0.014281083   0.430721290  -0.000014286   0.032906763  -0.033322631

   30    6.2  1.5  0.5   0.257991450   0.184891409   0.009610673   0.263144441  -0.000003456  -0.004187574   0.045517542   0.044971432
                         0.012178191   0.008730345   0.005767579   0.155999876  -0.000012623  -0.386879693  -0.012388625  -0.012259899

   31    7.2  1.5  0.5   0.185140431  -0.258338661  -0.305954739   0.011209979  -0.000014327   0.000001377  -0.057880736   0.058597091
                        -0.000003384   0.000000865   0.000000338  -0.000060297   0.000000002   0.000126712  -0.000010494  -0.000016352

   32    8.2  1.5  0.5   0.000001388   0.000004174   0.000002297  -0.000004868   0.000000000   0.000004724  -0.000007720  -0.000012031
                        -0.225914115   0.315010472   0.210524135  -0.007775711   0.118388427  -0.000003916   0.027092906  -0.027441793

   33    1.2  1.5 -0.5  -0.000000295  -0.000000483  -0.000000217  -0.000000138   0.000000000   0.000000117   0.000005394   0.000008371
                         0.032206147  -0.044908506   0.005004479  -0.000184651   0.013674291  -0.000000447  -0.021450138   0.021726239

   34    2.2  1.5 -0.5  -0.001696641   0.002367815  -0.055377314   0.002043525  -0.013696740   0.000000470   0.001882643  -0.001909480
                        -0.000000154   0.000000160   0.000000129  -0.000002222  -0.000000000   0.000002138   0.000000603   0.000001345

   35    3.2  1.5 -0.5  -0.011801776  -0.008463361   0.000475832   0.013006263  -0.000001256  -0.000296117   0.022783559   0.022490611
                        -0.000557132  -0.000399360   0.000285033   0.007710372  -0.000000893  -0.027357509  -0.006198510  -0.006134089

   36    4.2  1.5 -0.5   0.000001128   0.000004100   0.000001925  -0.000017390  -0.000000002  -0.000024568   0.000015399   0.000025457
                        -0.185186259   0.258200929   0.305778925  -0.011275949  -0.386809160   0.000012881  -0.065689307   0.066529867

   37    5.2  1.5 -0.5  -0.008078501  -0.005790566   0.007298845   0.197434896   0.000014050   0.430696061   0.008749025   0.008657492
                         0.171127304   0.122741601  -0.012275037  -0.333038929  -0.000021912  -0.004661840   0.032153576   0.031747487

   38    6.2  1.5 -0.5  -0.185097412   0.258278719   0.305910049  -0.011208316   0.386902355  -0.000012660   0.046612603  -0.047173345
                         0.000003378  -0.000000868  -0.000000337   0.000060300  -0.000000000  -0.000003319   0.000005727   0.000013646

   39    7.2  1.5 -0.5   0.258051326   0.184934380   0.009612104   0.263182883  -0.000126720  -0.000000153   0.056540153   0.055841939
                         0.012181013   0.008732380   0.005768424   0.156022666  -0.000000005  -0.000014326  -0.015389298  -0.015226871

   40    8.2  1.5 -0.5  -0.014856281  -0.010650011  -0.003969431  -0.107359279   0.000003864   0.118381493   0.007202792   0.007130127
                         0.314659957   0.225662945   0.006686204   0.181092232  -0.000004766  -0.001281358   0.026479651   0.026137845

   41    1.2  1.5 -1.5   0.000965370   0.000691991  -0.000493719  -0.013355485  -0.000000773  -0.023690452   0.003402529   0.003366453
                        -0.020449290  -0.014665178   0.000831296   0.022528476   0.000000211   0.000256425   0.012504093   0.012343557

   42    2.2  1.5 -1.5   0.020438831   0.014653559  -0.000832724  -0.022479682  -0.000000213  -0.000256377  -0.000670245  -0.000663218
                         0.000964783   0.000691572  -0.000492652  -0.013326630  -0.000000773  -0.023685998   0.000181939   0.000180763

   43    3.2  1.5 -1.5  -0.026396136   0.036810026   0.043641758  -0.001612978   0.000026446  -0.000000020  -0.011308620   0.011454523
                        -0.000000016  -0.000000481  -0.000000354   0.000000328  -0.000000000  -0.000001750  -0.000003020  -0.000004309

   44    4.2  1.5 -1.5   0.011723104   0.008403300  -0.005985418  -0.161910390  -0.000007286  -0.223322268   0.010883095   0.010772046
                        -0.248319655  -0.178101844   0.010064353   0.273116320   0.000003387   0.002417235   0.040011535   0.039492169

   45    5.2  1.5 -1.5   0.000001820   0.000004478   0.000001961  -0.000013941  -0.000000000  -0.000011446   0.000012695   0.000017259
                        -0.225742831   0.314752359   0.210858850  -0.007772768  -0.118297609   0.000003981  -0.044234692   0.044810280

   46    6.2  1.5 -1.5   0.248511083   0.178095980  -0.009985577  -0.273434818   0.000144321  -0.002417505  -0.073941902  -0.072966819
                         0.011728946   0.008407480  -0.005992330  -0.162097222  -0.000007285  -0.223346942   0.020115168   0.019904050

   47    7.2  1.5 -1.5   0.178304983  -0.248802573   0.317446297  -0.011629612   0.446729433  -0.000013821  -0.038912609   0.039460641
                        -0.000001268  -0.000000899   0.000002316   0.000062503   0.000000003   0.000069325  -0.000015831  -0.000021973

   48    8.2  1.5 -1.5  -0.000002208  -0.000000719   0.000000192  -0.000013067  -0.000000000   0.000001548   0.000013002   0.000020685
                         0.122926020  -0.171415147   0.387196157  -0.014291974   0.430781779  -0.000014068  -0.052402849   0.053077488


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  0.5  0.5  -0.000000161  -0.000000033  -0.000000005  -0.000000001  -0.000075623  -0.000029768   0.000090704   0.000016074
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000003  -0.000000016  -0.000000006   0.000000058   0.000011359  -0.000028858   0.000010667  -0.000060198
                        -0.000000001   0.000000007  -0.000000018   0.000000174  -0.000008757   0.000022261   0.000017293  -0.000097570

    3    3.2  0.5  0.5  -0.000000007   0.000000035  -0.000000004   0.000000037   0.000027205  -0.000069128  -0.000003637   0.000020491
                        -0.000000018   0.000000088   0.000000001  -0.000000013   0.000034768  -0.000088329   0.000002181  -0.000012314

    4    4.2  0.5  0.5  -0.000013481   0.000016693  -0.000616348   0.000254852   0.000012633  -0.000008774   0.000009625  -0.000011137
                        -0.482158102  -0.098408454   0.521748275   0.054757530  -0.378338810  -0.148905906  -0.468904392  -0.083111480

    5    5.2  0.5  0.5   0.048572598  -0.238059259  -0.007485297   0.072502515  -0.170992408   0.434407239   0.018310871  -0.103285532
                        -0.019471227   0.095475897  -0.022741521   0.216472324   0.134035339  -0.340554353   0.029622642  -0.167185548

    6    6.2  0.5  0.5  -0.018792348   0.092096020  -0.070063815   0.666790953  -0.028033597   0.071254288  -0.091127485   0.514304326
                        -0.046860733   0.229640168   0.023040969  -0.223354133  -0.035758600   0.090870389   0.056288866  -0.317693204

    7    7.2  0.5  0.5   0.000118191   0.000049383  -0.000389252   0.000150141  -0.000075532  -0.000021263  -0.000066380  -0.000019643
                         0.061431800   0.012523664   0.341853931   0.035861870   0.442979185   0.174359512  -0.399899861  -0.070853134

    8    8.2  0.5  0.5   0.738219565   0.150658274  -0.002686896  -0.000288190  -0.436944834  -0.171959937  -0.407406388  -0.072186787
                        -0.000024721   0.000010602  -0.000057803   0.000000469  -0.000090629  -0.000006077   0.000058587   0.000006841

    9    1.2  0.5 -0.5   0.000000031  -0.000000150  -0.000000000   0.000000002  -0.000023428   0.000059515   0.000008447  -0.000047668
                        -0.000000012   0.000000060  -0.000000000   0.000000005   0.000018366  -0.000046656   0.000013675  -0.000077169

   10    2.2  0.5 -0.5   0.000000018   0.000000004   0.000000183   0.000000019  -0.000036445  -0.000014342  -0.000114646  -0.000020318
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000285   0.000000116   0.000000061   0.000000013

   11    3.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000001  -0.000000000   0.000000092   0.000000040   0.000000292   0.000000055
                         0.000000095   0.000000019   0.000000039   0.000000004   0.000112163   0.000044147   0.000023905   0.000004240

   12    4.2  0.5 -0.5  -0.036650364   0.179482229   0.052022704  -0.494726206   0.091861245  -0.233427725  -0.070715145   0.398927768
                        -0.091328938   0.447507056  -0.017090648   0.165733591   0.117194201  -0.297744441   0.043667912  -0.246430446

   13    5.2  0.5 -0.5   0.256491438   0.052329971   0.228291080   0.023941530   0.551984526   0.217264529  -0.196516942  -0.034825117
                        -0.000009803  -0.000010602   0.000254654  -0.000097949   0.000006463  -0.000008847  -0.000012261  -0.000010939

   14    6.2  0.5 -0.5   0.000012539   0.000003404  -0.000810548   0.000321033   0.000014163   0.000000986  -0.000004723   0.000000776
                         0.247419246   0.050488421   0.703204513   0.073754467  -0.115475543  -0.045437430   0.604514608   0.107110481

   15    7.2  0.5 -0.5   0.004616396  -0.022759743   0.034065468  -0.324153456  -0.107588598   0.273357389  -0.060290503   0.340260280
                         0.011641885  -0.057060267  -0.011208933   0.108576232  -0.137207629   0.348577541   0.037218574  -0.210101989

   16    8.2  0.5 -0.5  -0.139825467   0.685167780  -0.000090775   0.000905313  -0.135328536   0.343819199  -0.037930337   0.214053507
                         0.056095941  -0.274796723  -0.000273520   0.002530446   0.106096218  -0.269646351  -0.061418416   0.346642561

   17    1.2  1.5  1.5  -0.000000027   0.000000220  -0.000007704   0.000003222   0.000000061  -0.000000156   0.000000016  -0.000000093
                        -0.032169280  -0.006565269   0.006135918   0.000645201  -0.005992805  -0.002358849   0.007185609   0.001273368

   18    2.2  1.5  1.5   0.032405770   0.006614684  -0.018694918  -0.001963201  -0.005999434  -0.002362248   0.007206875   0.001276696
                        -0.000000099   0.000000721  -0.000021974   0.000007767  -0.000000273   0.000000693   0.000000106  -0.000000598

   19    3.2  1.5  1.5   0.002518781  -0.012331197  -0.000806114   0.007801954  -0.003643334   0.009254890  -0.001023445   0.005778850
                        -0.001008379   0.004946103  -0.002446981   0.023290902   0.002854999  -0.007255654  -0.001658290   0.009355125

   20    4.2  1.5  1.5   0.000001168  -0.000006825   0.000106513  -0.000051243  -0.000000078   0.000000199   0.000000419  -0.000002394
                         0.094431851   0.019270239  -0.090430886  -0.009488623  -0.038769336  -0.015258348   0.046638492   0.008265991

   21    5.2  1.5  1.5  -0.004859830   0.023840966  -0.012790882   0.121742761   0.007774205  -0.019758700  -0.007855541   0.044319915
                        -0.012125004   0.059441199   0.004201844  -0.040782254   0.009918276  -0.025204064   0.004853486  -0.027376372

   22    6.2  1.5  1.5  -0.092136747  -0.018803371  -0.018463275  -0.001936085  -0.038571966  -0.015170906   0.046403695   0.008214986
                        -0.000000367   0.000001942  -0.000018204  -0.000002473   0.000002690  -0.000006830   0.000002189  -0.000012359

   23    7.2  1.5  1.5   0.000162229  -0.000642962   0.001188446  -0.011473696  -0.011999997   0.030521987   0.004315485  -0.024437751
                        -0.000055653   0.000259900   0.003600396  -0.034255153   0.009415808  -0.023923801   0.007009799  -0.039558098

   24    8.2  1.5  1.5  -0.001378956   0.006751171   0.000256049  -0.002423461   0.011879235  -0.030184512   0.005131810  -0.028963098
                        -0.003433661   0.016833377  -0.000083478   0.000811123   0.015155573  -0.038503089  -0.003170517   0.017890509

   25    1.2  1.5  0.5   0.000890006  -0.004361555   0.001036627  -0.009871105  -0.000027977   0.000070136  -0.002207640   0.012456524
                         0.002218939  -0.010874623  -0.000341409   0.003306861  -0.000035403   0.000089578   0.001363587  -0.007694452

   26    2.2  1.5  0.5  -0.002145808   0.010514889   0.001054215  -0.010208361  -0.004252454   0.010804088   0.000184340  -0.001041222
                         0.000859045  -0.004217544   0.003202219  -0.030475167   0.003333156  -0.008469869   0.000298389  -0.001685637

   27    3.2  1.5  0.5   0.000418897   0.000086650  -0.021731988  -0.002280411  -0.003438415  -0.001352486   0.004153014   0.000735881
                        -0.000000193   0.000001187  -0.000024768   0.000008591   0.000000212  -0.000000536   0.000000013  -0.000000071

   28    4.2  1.5  0.5   0.000918712  -0.004487333  -0.003178427   0.030232386  -0.010677163   0.027134802   0.006196334  -0.034956143
                         0.002282281  -0.011189592   0.001041033  -0.010126667  -0.013621751   0.034613001  -0.003828261   0.021592394

   29    5.2  1.5  0.5  -0.000000135   0.000002410  -0.000052626   0.000023171   0.000000123  -0.000000320   0.000000441  -0.000002512
                         0.039748097   0.008110361   0.045791916   0.004800993  -0.049055477  -0.019306442   0.034099429   0.006043480

   30    6.2  1.5  0.5  -0.001924878   0.009324280   0.002423462  -0.023115648   0.013558197  -0.034487934   0.003812304  -0.021592771
                         0.000759084  -0.003742216   0.007253600  -0.069020441  -0.010637079   0.027032925   0.006195640  -0.034952302

   31    7.2  1.5  0.5  -0.063299563  -0.012924322   0.123309100   0.012945327  -0.043930043  -0.017276201  -0.041050123  -0.007268539
                        -0.000000485  -0.000003903   0.000143007  -0.000035890   0.000002588  -0.000006553  -0.000002222   0.000012574

   32    8.2  1.5  0.5  -0.000000976  -0.000000129   0.000033170  -0.000010487  -0.000000867   0.000002216  -0.000000097   0.000000596
                        -0.146955294  -0.029989743  -0.029521084  -0.003089477   0.032261503   0.012696809   0.051783415   0.009178057

   33    1.2  1.5 -0.5   0.000000275   0.000000017  -0.000012330   0.000004269   0.000000068  -0.000000176   0.000000011  -0.000000068
                         0.011716680   0.002390775   0.010410278   0.001091393   0.000113768   0.000045123  -0.014641365  -0.002594811

   34    2.2  1.5 -0.5   0.011329191   0.002311374   0.032139463   0.003371260  -0.013728329  -0.005403082   0.001981292   0.000350738
                        -0.000000016  -0.000001528   0.000037171  -0.000013588  -0.000000148   0.000000380  -0.000000002   0.000000020

   35    3.2  1.5 -0.5   0.000079980  -0.000388860   0.000713669  -0.006902319   0.001064074  -0.002706160  -0.000386665   0.002182535
                        -0.000033359   0.000155765   0.002165877  -0.020606745  -0.000834844   0.002121179  -0.000626108   0.003533279

   36    4.2  1.5 -0.5   0.000000793  -0.000003045   0.000036525  -0.000018561  -0.000000418   0.000001083   0.000000121  -0.000000649
                         0.012055834   0.002460250  -0.031883306  -0.003344519   0.043981329   0.017307625   0.041087266   0.007283552

   37    5.2  1.5 -0.5  -0.003017036   0.014797293  -0.004561473   0.043420753  -0.011910942   0.030265088  -0.005140331   0.029011224
                        -0.007528310   0.036891074   0.001497678  -0.014544431  -0.015194347   0.038606531   0.003178153  -0.017919820

   38    6.2  1.5 -0.5   0.010047208   0.002069110   0.072788379   0.007647736   0.043820048   0.017232879   0.041084196   0.007274577
                         0.000002053  -0.000012058   0.000080066   0.000002872  -0.000002599   0.000006581   0.000002218  -0.000012562

   39    7.2  1.5 -0.5  -0.011993907   0.058749601  -0.004063539   0.039166672   0.013592309  -0.034574493   0.003809121  -0.021574868
                         0.004815007  -0.023565207  -0.012291071   0.116923592  -0.010663785   0.027100795   0.006190510  -0.034923312

   40    8.2  1.5 -0.5   0.011164270  -0.054706673   0.002933943  -0.027992685   0.007831608  -0.019904558  -0.007808788   0.044056061
                         0.027834220  -0.136392956  -0.000967964   0.009375771   0.009993743  -0.025389233   0.004822817  -0.027213703

   41    1.2  1.5 -1.5  -0.002444280   0.011975749   0.000613046  -0.005817986   0.001455179  -0.003697336   0.001083303  -0.006113356
                        -0.006093296   0.029857060  -0.000201169   0.001949510   0.001856508  -0.004716293  -0.000669269   0.003776223

   42    2.2  1.5 -1.5  -0.006138973   0.030076579  -0.000614044   0.005938345  -0.001859514   0.004721380   0.000670430  -0.003787503
                         0.002463141  -0.012063721  -0.001864717   0.017726717   0.001456854  -0.003701592   0.001086497  -0.006131384

   43    3.2  1.5 -1.5   0.013286171   0.002713132   0.024562895   0.002576322   0.011759996   0.004628704   0.010996067   0.001948683
                         0.000000013  -0.000001776   0.000028530  -0.000009877   0.000000347  -0.000000890   0.000000132  -0.000000755

   44    4.2  1.5 -1.5   0.007180136  -0.035153403  -0.009016962   0.085747444   0.009413861  -0.023918850   0.007031252  -0.039679152
                         0.017882612  -0.087644810   0.002954825  -0.028725116   0.012008180  -0.030511473  -0.004346044   0.024509464

   45    5.2  1.5 -1.5   0.000001040   0.000003299  -0.000150109   0.000062901  -0.000000318   0.000000833   0.000000171  -0.000000927
                         0.064044108   0.013062682   0.128391860   0.013463216   0.032025788   0.012602002   0.052093383   0.009233951

   46    6.2  1.5 -1.5   0.017452565  -0.085514100  -0.000615175   0.005861446  -0.011935273   0.030357755   0.004306689  -0.024388291
                        -0.006998197   0.034300421  -0.001835754   0.017508178   0.009365132  -0.023795026   0.006995612  -0.039478021

   47    7.2  1.5 -1.5   0.000693502   0.000171287  -0.036125608  -0.003791452   0.038780664   0.015253109  -0.046497814  -0.008231679
                         0.000001862  -0.000008740  -0.000040967   0.000012294  -0.000002668   0.000006780  -0.000002186   0.000012330

   48    8.2  1.5 -1.5   0.000000705  -0.000001579   0.000002319  -0.000001861  -0.000000530   0.000001352  -0.000000087   0.000000493
                         0.018136728   0.003700209  -0.002555597  -0.000269307   0.048924356   0.019256366  -0.034043081  -0.006032218


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   0.012%  66.652%   0.000%   0.000%  33.321%   0.013%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  16.802%   0.003%   0.219%  49.644%   0.013%  33.319%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  16.527%   0.003%   0.220%  49.917%   0.013%  33.319%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.027%   0.000%   0.000%   0.012%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.025%   0.029%   0.000%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
    7    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.029%   0.000%   0.000%   0.007%
    8    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.000%   0.000%   0.043%
    9    1.2  0.5 -0.5  66.652%   0.012%   0.000%   0.000%   0.013%  33.321%   0.000%   0.000%   0.000%   0.000%
   10    2.2  0.5 -0.5   0.003%  16.802%  49.644%   0.219%  33.319%   0.013%   0.000%   0.000%   0.000%   0.000%
   11    3.2  0.5 -0.5   0.003%  16.527%  49.917%   0.220%  33.319%   0.013%   0.000%   0.000%   0.000%   0.000%
   12    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.027%   0.012%   0.000%
   13    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.025%   0.000%   0.000%   0.029%
   14    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   15    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.029%   0.007%   0.000%
   16    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.043%   0.000%
   17    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  38.550%   0.043%   0.000%  15.848%
   18    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.231%   0.014%   0.001%  34.194%
   19    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   6.023%  13.325%   0.000%
   20    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.225%
   21    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.043%   0.119%   0.000%
   22    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.301%   0.000%   0.000%   0.017%
   23    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.028%   0.013%   0.000%
   24    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.053%   0.046%   0.000%
   25    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.022%  20.013%  22.825%   0.001%
   26    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.050%   2.387%   0.000%
   27    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  22.055%   0.024%   0.000%  10.450%
   28    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.081%   0.053%   0.000%
   29    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.042%   0.000%   0.000%   0.003%
   30    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.039%   0.010%   0.000%
   31    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.269%   0.000%   0.000%   0.008%
   32    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%   0.000%   0.381%
   33    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  20.013%   0.022%   0.001%  22.825%
   34    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.050%   0.000%   0.000%   2.387%
   35    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.024%  22.055%  10.450%   0.000%
   36    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.081%   0.000%   0.000%   0.053%
   37    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.042%   0.003%   0.000%
   38    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.039%   0.000%   0.000%   0.010%
   39    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.269%   0.008%   0.000%
   40    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.381%   0.000%
   41    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.043%  38.550%  15.848%   0.000%
   42    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%  12.231%  34.194%   0.001%
   43    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   6.023%   0.007%   0.000%  13.325%
   44    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.225%   0.000%
   45    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.043%   0.000%   0.000%   0.119%
   46    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.301%   0.017%   0.000%
   47    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.028%   0.000%   0.000%   0.013%
   48    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.053%   0.000%   0.000%   0.046%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.017%   0.001%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  0.5  0.5   0.002%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.2  0.5  0.5   0.053%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%
    7    7.2  0.5  0.5   0.000%   0.020%   0.003%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  0.5  0.5   0.000%   0.001%   0.002%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    4.2  0.5 -0.5   0.017%   0.000%   0.000%   0.001%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%
   13    5.2  0.5 -0.5   0.000%   0.002%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    6.2  0.5 -0.5   0.000%   0.053%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    7.2  0.5 -0.5   0.020%   0.000%   0.000%   0.003%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   16    8.2  0.5 -0.5   0.001%   0.000%   0.000%   0.002%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   17    1.2  1.5  1.5   0.000%   0.026%  10.746%   0.000%   9.115%   0.000%   0.000%  24.943%   0.000%   0.000%
   18    2.2  1.5  1.5   0.000%   8.029%  10.744%   0.000%   9.113%   0.000%   0.000%  24.943%   0.000%   0.000%
   19    3.2  1.5  1.5  20.256%   0.000%   0.000%  27.341%   0.000%  32.235%   0.000%   0.000%   0.000%   0.000%
   20    4.2  1.5  1.5   0.000%   0.128%   0.075%   0.000%   0.064%   0.000%   0.000%   0.011%   0.000%   0.064%
   21    5.2  1.5  1.5   0.261%   0.000%   0.000%   0.029%   0.000%   0.110%   0.003%   0.000%   6.245%   0.001%
   22    6.2  1.5  1.5   0.000%   0.038%   0.075%   0.000%   0.064%   0.000%   0.000%   0.011%   0.001%  13.337%
   23    7.2  1.5  1.5   0.034%   0.000%   0.000%   0.075%   0.000%   0.064%   0.045%   0.000%   0.039%   0.000%
   24    8.2  1.5  1.5   0.003%   0.000%   0.000%   0.110%   0.000%   0.029%   0.042%   0.000%   7.043%   0.001%
   25    1.2  1.5  0.5   1.703%   0.000%   0.000%   0.587%   0.000%  45.750%   8.315%   0.000%   0.000%   0.000%
   26    2.2  1.5  0.5  42.129%   0.000%   0.000%  46.291%   0.000%   0.043%   8.314%   0.000%   0.000%   0.000%
   27    3.2  1.5  0.5   0.000%  26.887%   3.582%   0.000%   3.037%   0.000%   0.000%  33.260%   0.000%   0.000%
   28    4.2  1.5  0.5   0.035%   0.000%   0.000%   0.064%   0.000%   0.075%   0.034%   0.000%   0.029%   0.000%
   29    5.2  1.5  0.5   0.000%   0.056%   0.110%   0.000%   0.029%   0.000%   0.000%   0.042%   0.002%  16.447%
   30    6.2  1.5  0.5   0.120%   0.000%   0.000%   0.064%   0.000%   0.075%   0.034%   0.000%  36.676%   0.003%
   31    7.2  1.5  0.5   0.000%   0.172%   0.064%   0.000%   0.075%   0.000%   0.000%   0.000%   0.000%   0.018%
   32    8.2  1.5  0.5   0.000%   0.028%   0.029%   0.000%   0.110%   0.000%   0.000%   0.003%   0.002%  20.093%
   33    1.2  1.5 -0.5   0.000%   1.703%   0.587%   0.000%  45.750%   0.000%   0.000%   8.315%   0.000%   0.000%
   34    2.2  1.5 -0.5   0.000%  42.129%  46.291%   0.000%   0.043%   0.000%   0.000%   8.314%   0.000%   0.000%
   35    3.2  1.5 -0.5  26.887%   0.000%   0.000%   3.582%   0.000%   3.037%  33.260%   0.000%   0.000%   0.000%
   36    4.2  1.5 -0.5   0.000%   0.035%   0.064%   0.000%   0.075%   0.000%   0.000%   0.034%   0.000%   0.029%
   37    5.2  1.5 -0.5   0.056%   0.000%   0.000%   0.110%   0.000%   0.029%   0.042%   0.000%  16.447%   0.002%
   38    6.2  1.5 -0.5   0.000%   0.120%   0.064%   0.000%   0.075%   0.000%   0.000%   0.034%   0.003%  36.676%
   39    7.2  1.5 -0.5   0.172%   0.000%   0.000%   0.064%   0.000%   0.075%   0.000%   0.000%   0.018%   0.000%
   40    8.2  1.5 -0.5   0.028%   0.000%   0.000%   0.029%   0.000%   0.110%   0.003%   0.000%  20.093%   0.002%
   41    1.2  1.5 -1.5   0.026%   0.000%   0.000%  10.746%   0.000%   9.115%  24.943%   0.000%   0.000%   0.000%
   42    2.2  1.5 -1.5   8.029%   0.000%   0.000%  10.744%   0.000%   9.113%  24.943%   0.000%   0.000%   0.000%
   43    3.2  1.5 -1.5   0.000%  20.256%  27.341%   0.000%  32.235%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.2  1.5 -1.5   0.128%   0.000%   0.000%   0.075%   0.000%   0.064%   0.011%   0.000%   0.064%   0.000%
   45    5.2  1.5 -1.5   0.000%   0.261%   0.029%   0.000%   0.110%   0.000%   0.000%   0.003%   0.001%   6.245%
   46    6.2  1.5 -1.5   0.038%   0.000%   0.000%   0.075%   0.000%   0.064%   0.011%   0.000%  13.337%   0.001%
   47    7.2  1.5 -1.5   0.000%   0.034%   0.075%   0.000%   0.064%   0.000%   0.000%   0.045%   0.000%   0.039%
   48    8.2  1.5 -1.5   0.000%   0.003%   0.110%   0.000%   0.029%   0.000%   0.000%   0.042%   0.001%   7.043%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.087%   0.001%   0.000%   0.972%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.223%   1.228%   0.000%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   3.028%   0.139%   0.000%
    7    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.919%   0.001%   0.000%   0.258%
    8    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.044%   0.000%   0.000%   2.706%
    9    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   1.087%   0.972%   0.000%
   13    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.223%   0.000%   0.000%   1.228%
   14    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.028%   0.002%   0.000%   0.139%
   15    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.919%   0.258%   0.000%
   16    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.044%   2.706%   0.000%
   17    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.158%
   18    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.058%   0.000%   0.000%   0.284%
   19    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.163%   0.073%   0.000%
   20    4.2  1.5  1.5   0.006%   6.468%   0.386%  26.694%   0.680%   0.000%  12.699%   0.010%   0.000%  25.424%
   21    5.2  1.5  1.5   9.340%   0.008%   0.854%   0.012%   0.000%  13.725%   0.025%  30.815%   9.849%   0.000%
   22    6.2  1.5  1.5   0.014%  15.798%   0.073%   5.047%   0.002%   0.000%   2.797%   0.002%   0.000%   3.933%
   23    7.2  1.5  1.5   5.522%   0.005%   7.049%   0.102%   0.000%  38.709%   0.003%   3.057%   1.034%   0.000%
   24    8.2  1.5  1.5   6.413%   0.005%   2.234%   0.032%   0.000%  34.090%   0.000%   0.081%   3.681%   0.000%
   25    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.022%   0.123%   0.000%
   26    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.302%   0.014%   0.000%
   27    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.160%   0.000%   0.000%   0.055%
   28    4.2  1.5  0.5  23.627%   0.020%  14.554%   0.210%   0.000%   7.281%   0.002%   2.689%   4.241%   0.000%
   29    5.2  1.5  0.5   0.003%   3.256%   0.397%  27.489%   2.233%   0.000%   5.411%   0.004%   0.000%   0.515%
   30    6.2  1.5  0.5   5.646%   0.005%   1.535%   0.022%   0.000%   1.819%   0.010%  11.563%   0.778%   0.000%
   31    7.2  1.5  0.5   0.018%  21.453%   0.095%   6.583%   0.402%   0.000%  21.282%   0.018%   0.000%   2.892%
   32    8.2  1.5  0.5   0.002%   2.392%   0.094%   6.536%   1.059%   0.000%   3.519%   0.003%   0.000%  41.644%
   33    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.022%   0.000%   0.000%   0.123%
   34    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.302%   0.000%   0.000%   0.014%
   35    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.160%   0.055%   0.000%
   36    4.2  1.5 -0.5   0.020%  23.627%   0.210%  14.554%   7.281%   0.000%   2.689%   0.002%   0.000%   4.241%
   37    5.2  1.5 -0.5   3.256%   0.003%  27.489%   0.397%   0.000%   2.233%   0.004%   5.411%   0.515%   0.000%
   38    6.2  1.5 -0.5   0.005%   5.646%   0.022%   1.535%   1.819%   0.000%  11.563%   0.010%   0.000%   0.778%
   39    7.2  1.5 -0.5  21.453%   0.018%   6.583%   0.095%   0.000%   0.402%   0.018%  21.282%   2.892%   0.000%
   40    8.2  1.5 -0.5   2.392%   0.002%   6.536%   0.094%   0.000%   1.059%   0.003%   3.519%  41.644%   0.000%
   41    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.158%   0.000%
   42    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.058%   0.284%   0.000%
   43    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.163%   0.000%   0.000%   0.073%
   44    4.2  1.5 -1.5   6.468%   0.006%  26.694%   0.386%   0.000%   0.680%   0.010%  12.699%  25.424%   0.000%
   45    5.2  1.5 -1.5   0.008%   9.340%   0.012%   0.854%  13.725%   0.000%  30.815%   0.025%   0.000%   9.849%
   46    6.2  1.5 -1.5  15.798%   0.014%   5.047%   0.073%   0.000%   0.002%   0.002%   2.797%   3.933%   0.000%
   47    7.2  1.5 -1.5   0.005%   5.522%   0.102%   7.049%  38.709%   0.000%   3.057%   0.003%   0.000%   1.034%
   48    8.2  1.5 -1.5   0.005%   6.413%   0.032%   2.234%  34.090%   0.000%   0.081%   0.000%   0.000%   3.681%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   1.116%   0.000%   0.181%   0.352%   0.275%   0.000%   0.000%   0.000%   2.472%   2.536%
    5    5.2  0.5  0.5   0.000%   1.723%   0.031%   0.016%   0.001%   0.760%   0.000%   0.000%  22.617%  22.046%
    6    6.2  0.5  0.5   0.000%   0.017%   0.494%   0.254%   0.000%   0.062%   0.000%   0.000%   0.173%   0.168%
    7    7.2  0.5  0.5   1.995%   0.001%   0.094%   0.183%   0.528%   0.001%   0.000%   0.000%  22.013%  22.582%
    8    8.2  0.5  0.5   0.432%   0.000%   0.143%   0.277%   0.389%   0.001%   0.000%   0.000%   0.006%   0.006%
    9    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    4.2  0.5 -0.5   0.000%   1.116%   0.352%   0.181%   0.000%   0.275%   0.000%   0.000%   2.536%   2.472%
   13    5.2  0.5 -0.5   1.723%   0.000%   0.016%   0.031%   0.760%   0.001%   0.000%   0.000%  22.046%  22.617%
   14    6.2  0.5 -0.5   0.017%   0.000%   0.254%   0.494%   0.062%   0.000%   0.000%   0.000%   0.168%   0.173%
   15    7.2  0.5 -0.5   0.001%   1.995%   0.183%   0.094%   0.001%   0.528%   0.000%   0.000%  22.582%  22.013%
   16    8.2  0.5 -0.5   0.000%   0.432%   0.277%   0.143%   0.001%   0.389%   0.000%   0.000%   0.006%   0.006%
   17    1.2  1.5  1.5   0.230%   0.000%   0.022%   0.042%   0.069%   0.000%   0.056%   0.000%   0.016%   0.017%
   18    2.2  1.5  1.5   0.047%   0.000%   0.022%   0.042%   0.068%   0.000%   0.056%   0.000%   0.000%   0.000%
   19    3.2  1.5  1.5   0.000%   0.047%   0.135%   0.070%   0.000%   0.190%   0.000%   0.000%   0.013%   0.013%
   20    4.2  1.5  1.5   0.129%   0.000%   3.179%   6.180%  10.081%   0.014%   4.988%   0.000%   0.168%   0.172%
   21    5.2  1.5  1.5   0.001%   4.816%   9.907%   5.096%   0.006%   4.446%   0.000%   1.399%   0.201%   0.196%
   22    6.2  1.5  1.5  31.533%   0.009%   3.179%   6.190%  10.104%   0.014%   4.989%   0.000%   0.572%   0.587%
   23    7.2  1.5  1.5   0.001%   3.967%   6.190%   3.179%   0.014%  10.077%   0.000%  19.957%   0.156%   0.151%
   24    8.2  1.5  1.5   0.002%   7.128%   2.938%   1.511%   0.020%  14.992%   0.000%  18.557%   0.282%   0.275%
   25    1.2  1.5  0.5   0.000%   0.172%   0.202%   0.104%   0.000%   0.003%   0.000%   0.019%   0.047%   0.046%
   26    2.2  1.5  0.5   0.000%   0.002%   0.001%   0.000%   0.000%   0.307%   0.000%   0.019%   0.000%   0.000%
   27    3.2  1.5  0.5   0.208%   0.000%   0.007%   0.014%   0.023%   0.000%   0.075%   0.000%   0.054%   0.056%
   28    4.2  1.5  0.5   0.003%  11.192%   6.667%   3.429%   0.013%   9.350%   0.000%  14.962%   0.443%   0.432%
   29    5.2  1.5  0.5   4.959%   0.001%   1.510%   2.935%  14.990%   0.020%  18.552%   0.000%   0.108%   0.111%
   30    6.2  1.5  0.5   0.002%   5.781%   6.671%   3.426%   0.013%   9.358%   0.000%  14.969%   0.223%   0.217%
   31    7.2  1.5  0.5  24.137%   0.007%   3.428%   6.674%   9.361%   0.013%   0.000%   0.000%   0.335%   0.343%
   32    8.2  1.5  0.5   0.340%   0.000%   5.104%   9.923%   4.432%   0.006%   1.402%   0.000%   0.073%   0.075%
   33    1.2  1.5 -0.5   0.172%   0.000%   0.104%   0.202%   0.003%   0.000%   0.019%   0.000%   0.046%   0.047%
   34    2.2  1.5 -0.5   0.002%   0.000%   0.000%   0.001%   0.307%   0.000%   0.019%   0.000%   0.000%   0.000%
   35    3.2  1.5 -0.5   0.000%   0.208%   0.014%   0.007%   0.000%   0.023%   0.000%   0.075%   0.056%   0.054%
   36    4.2  1.5 -0.5  11.192%   0.003%   3.429%   6.667%   9.350%   0.013%  14.962%   0.000%   0.432%   0.443%
   37    5.2  1.5 -0.5   0.001%   4.959%   2.935%   1.510%   0.020%  14.990%   0.000%  18.552%   0.111%   0.108%
   38    6.2  1.5 -0.5   5.781%   0.002%   3.426%   6.671%   9.358%   0.013%  14.969%   0.000%   0.217%   0.223%
   39    7.2  1.5 -0.5   0.007%  24.137%   6.674%   3.428%   0.013%   9.361%   0.000%   0.000%   0.343%   0.335%
   40    8.2  1.5 -0.5   0.000%   0.340%   9.923%   5.104%   0.006%   4.432%   0.000%   1.402%   0.075%   0.073%
   41    1.2  1.5 -1.5   0.000%   0.230%   0.042%   0.022%   0.000%   0.069%   0.000%   0.056%   0.017%   0.016%
   42    2.2  1.5 -1.5   0.000%   0.047%   0.042%   0.022%   0.000%   0.068%   0.000%   0.056%   0.000%   0.000%
   43    3.2  1.5 -1.5   0.047%   0.000%   0.070%   0.135%   0.190%   0.000%   0.000%   0.000%   0.013%   0.013%
   44    4.2  1.5 -1.5   0.000%   0.129%   6.180%   3.179%   0.014%  10.081%   0.000%   4.988%   0.172%   0.168%
   45    5.2  1.5 -1.5   4.816%   0.001%   5.096%   9.907%   4.446%   0.006%   1.399%   0.000%   0.196%   0.201%
   46    6.2  1.5 -1.5   0.009%  31.533%   6.190%   3.179%   0.014%  10.104%   0.000%   4.989%   0.587%   0.572%
   47    7.2  1.5 -1.5   3.967%   0.001%   3.179%   6.190%  10.077%   0.014%  19.957%   0.000%   0.151%   0.156%
   48    8.2  1.5 -1.5   7.128%   0.002%   1.511%   2.938%  14.992%   0.020%  18.557%   0.000%   0.275%   0.282%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5  23.248%   0.968%  27.222%   0.300%  14.314%   2.217%  21.987%   0.691%
    5    5.2  0.5  0.5   0.274%   6.579%   0.057%   5.212%   4.720%  30.469%   0.121%   3.862%
    6    6.2  0.5  0.5   0.255%   6.122%   0.544%  49.450%   0.206%   1.333%   1.147%  36.544%
    7    7.2  0.5  0.5   0.377%   0.016%  11.686%   0.129%  19.623%   3.040%  15.992%   0.502%
    8    8.2  0.5  0.5  54.497%   2.270%   0.001%   0.000%  19.092%   2.957%  16.598%   0.521%
    9    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    4.2  0.5 -0.5   0.968%  23.248%   0.300%  27.222%   2.217%  14.314%   0.691%  21.987%
   13    5.2  0.5 -0.5   6.579%   0.274%   5.212%   0.057%  30.469%   4.720%   3.862%   0.121%
   14    6.2  0.5 -0.5   6.122%   0.255%  49.450%   0.544%   1.333%   0.206%  36.544%   1.147%
   15    7.2  0.5 -0.5   0.016%   0.377%   0.129%  11.686%   3.040%  19.623%   0.502%  15.992%
   16    8.2  0.5 -0.5   2.270%  54.497%   0.000%   0.001%   2.957%  19.092%   0.521%  16.598%
   17    1.2  1.5  1.5   0.103%   0.004%   0.004%   0.000%   0.004%   0.001%   0.005%   0.000%
   18    2.2  1.5  1.5   0.105%   0.004%   0.035%   0.000%   0.004%   0.001%   0.005%   0.000%
   19    3.2  1.5  1.5   0.001%   0.018%   0.001%   0.060%   0.002%   0.014%   0.000%   0.012%
   20    4.2  1.5  1.5   0.892%   0.037%   0.818%   0.009%   0.150%   0.023%   0.218%   0.007%
   21    5.2  1.5  1.5   0.017%   0.410%   0.018%   1.648%   0.016%   0.103%   0.009%   0.271%
   22    6.2  1.5  1.5   0.849%   0.035%   0.034%   0.000%   0.149%   0.023%   0.215%   0.007%
   23    7.2  1.5  1.5   0.000%   0.000%   0.001%   0.131%   0.023%   0.150%   0.007%   0.216%
   24    8.2  1.5  1.5   0.001%   0.033%   0.000%   0.001%   0.037%   0.239%   0.004%   0.116%
   25    1.2  1.5  0.5   0.001%   0.014%   0.000%   0.011%   0.000%   0.000%   0.001%   0.021%
   26    2.2  1.5  0.5   0.001%   0.013%   0.001%   0.103%   0.003%   0.019%   0.000%   0.000%
   27    3.2  1.5  0.5   0.000%   0.000%   0.047%   0.001%   0.001%   0.000%   0.002%   0.000%
   28    4.2  1.5  0.5   0.001%   0.015%   0.001%   0.102%   0.030%   0.193%   0.005%   0.169%
   29    5.2  1.5  0.5   0.158%   0.007%   0.210%   0.002%   0.241%   0.037%   0.116%   0.004%
   30    6.2  1.5  0.5   0.000%   0.010%   0.006%   0.530%   0.030%   0.192%   0.005%   0.169%
   31    7.2  1.5  0.5   0.401%   0.017%   1.521%   0.017%   0.193%   0.030%   0.169%   0.005%
   32    8.2  1.5  0.5   2.160%   0.090%   0.087%   0.001%   0.104%   0.016%   0.268%   0.008%
   33    1.2  1.5 -0.5   0.014%   0.001%   0.011%   0.000%   0.000%   0.000%   0.021%   0.001%
   34    2.2  1.5 -0.5   0.013%   0.001%   0.103%   0.001%   0.019%   0.003%   0.000%   0.000%
   35    3.2  1.5 -0.5   0.000%   0.000%   0.001%   0.047%   0.000%   0.001%   0.000%   0.002%
   36    4.2  1.5 -0.5   0.015%   0.001%   0.102%   0.001%   0.193%   0.030%   0.169%   0.005%
   37    5.2  1.5 -0.5   0.007%   0.158%   0.002%   0.210%   0.037%   0.241%   0.004%   0.116%
   38    6.2  1.5 -0.5   0.010%   0.000%   0.530%   0.006%   0.192%   0.030%   0.169%   0.005%
   39    7.2  1.5 -0.5   0.017%   0.401%   0.017%   1.521%   0.030%   0.193%   0.005%   0.169%
   40    8.2  1.5 -0.5   0.090%   2.160%   0.001%   0.087%   0.016%   0.104%   0.008%   0.268%
   41    1.2  1.5 -1.5   0.004%   0.103%   0.000%   0.004%   0.001%   0.004%   0.000%   0.005%
   42    2.2  1.5 -1.5   0.004%   0.105%   0.000%   0.035%   0.001%   0.004%   0.000%   0.005%
   43    3.2  1.5 -1.5   0.018%   0.001%   0.060%   0.001%   0.014%   0.002%   0.012%   0.000%
   44    4.2  1.5 -1.5   0.037%   0.892%   0.009%   0.818%   0.023%   0.150%   0.007%   0.218%
   45    5.2  1.5 -1.5   0.410%   0.017%   1.648%   0.018%   0.103%   0.016%   0.271%   0.009%
   46    6.2  1.5 -1.5   0.035%   0.849%   0.000%   0.034%   0.023%   0.149%   0.007%   0.215%
   47    7.2  1.5 -1.5   0.000%   0.000%   0.131%   0.001%   0.150%   0.023%   0.216%   0.007%
   48    8.2  1.5 -1.5   0.033%   0.001%   0.001%   0.000%   0.239%   0.037%   0.116%   0.004%


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
              1      24       48.01       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       50.25       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       460.52    398.81     25.28     32.43      3.20      0.11      0.42
 REAL TIME  *       484.04 SEC
 DISK USED  *        80.15 MB (local),        1.12 GB (total)
 SF USED    *       268.39 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=    -99.180244846318

              CI              CI           MULTI         RHF-SCF
    -99.17868497    -99.17566427    -99.01184153    -97.68158537
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
