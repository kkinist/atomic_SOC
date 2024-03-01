
 Working directory              : /wrk/irikura/molpro.fFNUvPi5zq/
 Global scratch directory       : /wrk/irikura/molpro.fFNUvPi5zq/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.fFNUvPi5zq/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Rh atom, (17/10) active space, MRCI
                                                                                 ! a 2D term alone
 memory,1500,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
 {rhf;wf,nelec=17,sym=1,spin=1}
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=1; state,5;
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and LL values
 
 {ci;wf,sym=1,spin=1;state,5;save,5101.2}
 hlsdiag = energd4
 
 table, hlsdiag
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Rh atom, (17/10) active space, MRCI                                                                                                                           
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Feb-24          TIME: 10:40:06  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Rh   ECP ECP28MDF                 selected for group  1
 Library entry RH     S cc-pwCVTZ-PP         selected for orbital group  1
 Library entry RH     P cc-pwCVTZ-PP         selected for orbital group  1
 Library entry RH     D cc-pwCVTZ-PP         selected for orbital group  1
 Library entry RH     F cc-pwCVTZ-PP         selected for orbital group  1
 Library entry RH     G cc-pwCVTZ-PP         selected for orbital group  1


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

   1  RH     17.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   17
 NUMBER OF PRIMITIVE AOS:         165
 NUMBER OF SYMMETRY AOS:          134
 NUMBER OF CONTRACTIONS:           97   (   55Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        6   (    6Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 7 8 9
                                       101112131415 7 8 910  1112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910


 Eigenvalues of metric

         1 0.743E-03 0.223E-02 0.223E-02 0.223E-02 0.223E-02 0.223E-02 0.534E-02 0.439E-01
         2 0.905E-03 0.905E-03 0.905E-03 0.520E-02 0.520E-02 0.520E-02 0.207E+00 0.207E+00


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     13.631 MB (compressed) written to integral file ( 16.4%)

     Node minimum: 0.786 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     479772.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     479772      RECORD LENGTH: 524288

 Memory used in sort:       1.04 MW

 SORT1 READ    10862098. AND WROTE       89681. INTEGRALS IN      1 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.07 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     36 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

 Node minimum:      478351.  Node maximum:      485007. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.86       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.85      0.57
 REAL TIME  *         1.65 SEC
 DISK USED  *        29.20 MB (local),      405.52 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   3

 Initial alpha occupancy:   6   3
 Initial beta  occupancy:   5   3

 NELEC=   17   SYM=1   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -109.30476930    -109.30476930     0.00D+00     0.12D+00     0     0       0.00      0.00    start
   2     -109.31374543      -0.00897613     0.88D-02     0.51D-02     1     0       0.01      0.01    diag2
   3     -109.32654113      -0.01279570     0.76D-02     0.22D-02     2     0       0.00      0.01    diag2
   4     -109.32669053      -0.00014940     0.34D-03     0.44D-03     3     0       0.01      0.02    diag2
   5     -109.32677721      -0.00008668     0.16D-03     0.41D-03     4     0       0.00      0.02    diag2
   6     -109.32686204      -0.00008483     0.10D-03     0.60D-03     5     0       0.00      0.02    diag2
   7     -109.32691615      -0.00005411     0.67D-04     0.71D-03     6     0       0.01      0.03    diag2
   8     -109.32692217      -0.00000602     0.24D-04     0.30D-03     7     0       0.00      0.03    fixocc
   9     -109.32692218      -0.00000001     0.24D-05     0.73D-05     8     0       0.00      0.03    diag2
  10     -109.32692219      -0.00000000     0.72D-06     0.14D-05     9     0       0.01      0.04    diag2/orth
  11     -109.32692219      -0.00000000     0.13D-06     0.15D-06     0     0       0.00      0.04    diag

 Final alpha occupancy:   6   3
 Final beta  occupancy:   5   3

 !RHF STATE 1.1 Energy               -109.326922185453
  RHF One-electron energy            -195.399156736295
  RHF Two-electron energy              86.072234550842
  RHF Kinetic energy                   41.515110487640
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.633424815719

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -3.58956     1  1  s    1.00475
    2.1     2.00000    -0.31375     1  1  d2-  0.99497
    3.1     2.00000    -0.28807     1  1  d1-  0.99095
    4.1     2.00000    -0.28807     1  1  d1+  0.99095
    5.1     2.00000    -0.27821     1  1  d0   0.98657
    6.1     1.00000    -0.35192     1  1  d2+  0.99840
    1.2     2.00000    -2.23261     1  1  py   1.00143
    2.2     2.00000    -2.23261     1  1  px   1.00143
    3.2     2.00000    -2.22849     1  1  pz   1.00291


 HOMO      6.1    -0.351922 =      -9.5763eV
 LUMO      7.1     0.017983 =       0.4894eV
 LUMO-HOMO         0.369905 =      10.0656eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.86       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.54       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.52      0.66      0.57
 REAL TIME  *         2.69 SEC
 DISK USED  *        30.15 MB (local),      416.98 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      87 (   48   39)

 State symmetry 1

 Number of active electrons:  17    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             5
 Number of CSFs:             175   (231 determinants, 450 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.100D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.115D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.114D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.984D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.834D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.140D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.191D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 6 4 2 5 1 1 5 3   6 4 2 1 5 3 6 4 2 5   3 6 4 2 11013151412   7 911 8 5 3 6 4 2 1
                                       1013151412 811 9 7 5   3 6 4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.164D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.155D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.769D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 2   1 3 9 710 8 5 4 6 2   1 3 9 710 8 5 4 6 2   1 3 9 710 8 5 4 6 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.20000   0.20000   0.20000   0.20000   0.20000
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    1608
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7    7    0   -109.32345608    -109.33419912   -0.01074304    0.04288419 0.00018709 0.00000000  0.60E+00      0.39
   2    4    4    0   -109.33384642    -109.33390747   -0.00006106    0.01138767 0.00007587 0.00000000  0.18E-01      0.63
   3   20   20    0   -109.33390758    -109.33390758   -0.00000000    0.00002884 0.00000006 0.00000000  0.80E-04      1.59

 CONVERGENCE REACHED!  Final gradient:    0.00000004 ( 0.43E-07)
                       Final energy:   -109.33390758
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -109.333907583134
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38781960
 One electron energy                          -195.15679075
 Two electron energy                            85.82288316
 Virial ratio                                    3.64169286
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -109.333907583068
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38781960
 One electron energy                          -195.15679075
 Two electron energy                            85.82288317
 Virial ratio                                    3.64169286
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -109.333907580957
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38781963
 One electron energy                          -195.15679080
 Two electron energy                            85.82288322
 Virial ratio                                    3.64169286
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                      -109.333907580475
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38781965
 One electron energy                          -195.15679082
 Two electron energy                            85.82288324
 Virial ratio                                    3.64169286
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                      -109.333907579871
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38781965
 One electron energy                          -195.15679083
 Two electron energy                            85.82288325
 Virial ratio                                    3.64169286
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     1.254037867473
 !MCSCF expec                      <2.1|LXLX|2.1>     1.000000000000
 !MCSCF expec                      <3.1|LXLX|3.1>     3.999999959841
 !MCSCF expec                      <4.1|LXLX|4.1>     1.000001727219
 !MCSCF expec                      <5.1|LXLX|5.1>     2.745947301689
 
 !MCSCF expec                      <1.1|LYLY|1.1>     0.765916860200
 !MCSCF expec                      <2.1|LYLY|2.1>     1.000000000000
 !MCSCF expec                      <3.1|LYLY|3.1>     1.000000065083
 !MCSCF expec                      <4.1|LYLY|4.1>     3.999999210022
 !MCSCF expec                      <5.1|LYLY|5.1>     3.234095067707
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     3.980045272327
 !MCSCF expec                      <2.1|LZLZ|2.1>     4.000000000000
 !MCSCF expec                      <3.1|LZLZ|3.1>     0.999999975076
 !MCSCF expec                      <4.1|LZLZ|4.1>     0.999999062759
 !MCSCF expec                      <5.1|LZLZ|5.1>     0.019957630604
 
 !MCSCF expec                      <1.1|L**2|1.1>     6.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 3 6 5 1 1 3 5   4 2 6 1 4 3 5 2 6 4   3 5 2 6 1 913101415  12 8 711 4 5 3 2 6 1
                                        91310141512 8 711 4   2 5 3 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 1 3 2 1   3 2 4 6 9 7 810 5 1   3 2 4 7 9 810 6 5 1   3 2 4 7 910 8 6 5 1
                                        3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99996    -3.60845     1  1  s    1.00424
    2.1     1.76915    -0.24939     1  1  d0   0.99444
    3.1     1.76915    -0.24939     1  1  d1+  0.99444
    4.1     1.76915    -0.24939     1  1  d2-  0.99444
    5.1     1.76915    -0.24939     1  1  d1-  0.99444
    6.1     1.76915    -0.24939     1  1  d2+  0.99444
    7.1     0.15466     0.08375     1  2  s    1.09664
    1.2     1.99988    -2.24710     1  1  py   1.00186
    2.2     1.99988    -2.24710     1  1  pz   1.00186
    3.2     1.99988    -2.24710     1  1  px   1.00186
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 222a220 222      0.00013829      0.92776368      0.00000025      0.00000024      0.00000007
 2222a20 222     -0.00002782     -0.00000025      0.92776367     -0.00001309     -0.00015186
 22a2220 222      0.00001146     -0.00000024      0.00001324      0.92776324      0.00090560
 22222a0 222      0.92544663     -0.00013794      0.00001702      0.00005253     -0.06552849
 2a22220 222      0.06552850     -0.00000984      0.00015344     -0.00090415      0.92544618
 2a2b22a 222      0.00002802      0.18796670      0.00000005      0.00000005      0.00000001
 2b2a22a 222     -0.00002802     -0.18796670     -0.00000005     -0.00000005     -0.00000001
 2a222ba 222      0.18749726     -0.00002795      0.00000345      0.00001064     -0.01327620
 2b222aa 222     -0.18749726      0.00002795     -0.00000345     -0.00001064      0.01327620
 202222a 222      0.01327620     -0.00000199      0.00003109     -0.00018318      0.18749718
 222022a 222     -0.01327620      0.00000199     -0.00003109      0.00018318     -0.18749718
 222220a 222     -0.01327620      0.00000199     -0.00003109      0.00018318     -0.18749717
 220222a 222      0.16901549     -0.00002520      0.00001853     -0.00008237      0.08225107
 22ab22a 222      0.00000488      0.00000004     -0.16278394      0.00000230      0.00002665
 22ba22a 222     -0.00000488     -0.00000004      0.16278394     -0.00000230     -0.00002665
 2222aba 222     -0.00000488     -0.00000004      0.16278394     -0.00000230     -0.00002665
 22a2b2a 222     -0.00002426     -0.16278394     -0.00000004     -0.00000004     -0.00000001
 22b2a2a 222      0.00002426      0.16278394      0.00000004      0.00000004      0.00000001
 2222baa 222      0.00000488      0.00000004     -0.16278394      0.00000230      0.00002665
 22a22ba 222     -0.00000201      0.00000004     -0.00000232     -0.16278387     -0.00015889
 22b22aa 222      0.00000201     -0.00000004      0.00000232      0.16278387      0.00015889
 222ba2a 222      0.00000201     -0.00000004      0.00000232      0.16278386      0.00015889
 222ab2a 222     -0.00000201      0.00000004     -0.00000232     -0.16278386     -0.00015889
 222202a 222     -0.15573929      0.00002321      0.00001256     -0.00010081      0.10524611
 2a22b2a 222      0.00000282      0.00000002     -0.09398335      0.00000133      0.00001538
 2b22a2a 222     -0.00000282     -0.00000002      0.09398335     -0.00000133     -0.00001538
 2ab222a 222     -0.00000116      0.00000002     -0.00000134     -0.09398331     -0.00009174
 2ba222a 222      0.00000116     -0.00000002      0.00000134      0.09398331      0.00009174
 202a222 222     -0.00001090     -0.07311428     -0.00000002     -0.00000002     -0.00000001
 20222a2 222     -0.07293168      0.00001087     -0.00000134     -0.00000414      0.00516410
 2a20222 222     -0.00516410      0.00000078     -0.00001209      0.00007125     -0.07293164
 2a22202 222     -0.00516410      0.00000078     -0.00001209      0.00007125     -0.07293164
 22022a2 222     -0.06334189      0.00000944     -0.00000428      0.00001498     -0.01454168
 2202a22 222      0.00000186      0.00000002     -0.06215661      0.00000088      0.00001017
 220a222 222     -0.00000927     -0.06215661     -0.00000002     -0.00000002     -0.00000000
 222a022 222     -0.00000927     -0.06215661     -0.00000002     -0.00000002     -0.00000000
 2220a22 222      0.00000186      0.00000002     -0.06215660      0.00000088      0.00001017
 2222a02 222      0.00000186      0.00000002     -0.06215660      0.00000088      0.00001017
 22a2022 222     -0.00000077      0.00000002     -0.00000089     -0.06215658     -0.00006067
 22a0222 222     -0.00000077      0.00000002     -0.00000089     -0.06215658     -0.00006067
 22a2202 222     -0.00000077      0.00000002     -0.00000089     -0.06215657     -0.00006067
 22220a2 222     -0.06066086      0.00000904      0.00000200     -0.00002202      0.02332200
 
 Energy:       -109.33390758   -109.33390758   -109.33390758   -109.33390758   -109.33390758
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.80       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.12      1.61      0.66      0.57
 REAL TIME  *         4.48 SEC
 DISK USED  *        32.97 MB (local),      450.82 MB (total)
 SF USED    *        12.04 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

         ENERGY     LL
    -109.3339076   6.0
    -109.3339076   6.0
    -109.3339076   6.0
    -109.3339076   6.0
    -109.3339076   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

 Reference symmetry:                   1   Doublet 
 Number of electrons:                 17
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:      119 conf      175 CSFs
 N elec internal:      210 conf      330 CSFs
 N-1 el internal:      615 conf     1815 CSFs
 N-2 el internal:     1449 conf     8442 CSFs

 Number of electrons in valence space:                     17
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      87 (  48  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  70

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -109.33390758
     2      -109.33390758
     3      -109.33390758
     4      -109.33390758
     5      -109.33390758

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.85D-02
 Number of N-2 electron functions:     500
 Number of N-1 electron functions:    1815

 Number of internal configurations:                  175
 Number of singly external configurations:         79056
 Number of doubly external configurations:        949920
 Total number of contracted configurations:      1029151
 Total number of uncontracted configurations:   16014913

 Diagonal Coupling coefficients finished.               Storage:    477968 words, CPU-Time:      0.06 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    397837 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.33390758     0.00000000    -0.74816477  0.24D-01  0.14D+00     0.19
    1     2     2     1.00000000     0.00000000  -109.33390758    -0.00000000    -0.74834970  0.24D-01  0.14D+00     0.19
    1     3     3     1.00000000     0.00000000  -109.33390758    -0.00000000    -0.74806808  0.24D-01  0.14D+00     0.19
    1     4     4     1.00000000     0.00000000  -109.33390758    -0.00000000    -0.74806574  0.24D-01  0.14D+00     0.19
    1     5     5     1.00000000     0.00000000  -109.33390758     0.00000000    -0.74775297  0.24D-01  0.14D+00     0.19
    2     1     1     1.09838450    -0.58872300  -109.92263059    -0.58872300    -0.01736324  0.11D-02  0.24D-02     9.87
    2     2     2     1.09843258    -0.58859758  -109.92250516    -0.58859758    -0.01753082  0.12D-02  0.25D-02     9.87
    2     3     3     1.09843499    -0.58859404  -109.92250162    -0.58859404    -0.01753618  0.12D-02  0.25D-02     9.87
    2     4     4     1.09842691    -0.58859134  -109.92249892    -0.58859134    -0.01753356  0.12D-02  0.25D-02     9.87
    2     5     5     1.09846215    -0.58854342  -109.92245100    -0.58854342    -0.01759442  0.12D-02  0.25D-02     9.87
    3     1     1     1.09188331    -0.60497465  -109.93888224    -0.01625165    -0.00027735  0.35D-04  0.43D-04    19.61
    3     2     2     1.09187867    -0.60496417  -109.93887176    -0.01636659    -0.00029057  0.38D-04  0.45D-04    19.61
    3     3     3     1.09187396    -0.60496239  -109.93886997    -0.01636835    -0.00029308  0.39D-04  0.45D-04    19.61
    3     4     4     1.09187422    -0.60496165  -109.93886923    -0.01637031    -0.00029402  0.39D-04  0.45D-04    19.61
    3     5     5     1.09188077    -0.60496040  -109.93886798    -0.01641698    -0.00029527  0.39D-04  0.46D-04    19.61
    4     1     1     1.09227079    -0.60523481  -109.93914239    -0.00026016    -0.00001568  0.25D-05  0.31D-05    29.16
    4     2     2     1.09226469    -0.60523403  -109.93914162    -0.00026986    -0.00001635  0.26D-05  0.32D-05    29.16
    4     3     3     1.09226352    -0.60523379  -109.93914137    -0.00027140    -0.00001652  0.26D-05  0.32D-05    29.16
    4     4     4     1.09226318    -0.60523372  -109.93914130    -0.00027207    -0.00001658  0.26D-05  0.32D-05    29.16
    4     5     5     1.09226464    -0.60523366  -109.93914124    -0.00027326    -0.00001665  0.27D-05  0.32D-05    29.16
    5     1     1     1.09244242    -0.60525213  -109.93915971    -0.00001732    -0.00000094  0.74D-07  0.20D-06    38.69
    5     2     2     1.09244158    -0.60525209  -109.93915967    -0.00001806    -0.00000097  0.80D-07  0.20D-06    38.69
    5     3     3     1.09244154    -0.60525206  -109.93915964    -0.00001827    -0.00000099  0.81D-07  0.20D-06    38.69
    5     4     4     1.09244201    -0.60525206  -109.93915964    -0.00001834    -0.00000099  0.83D-07  0.20D-06    38.69
    5     5     5     1.09244152    -0.60525206  -109.93915964    -0.00001840    -0.00000099  0.81D-07  0.21D-06    38.69
    6     1     1     1.09245331    -0.60525325  -109.93916083    -0.00000111    -0.00000006  0.61D-08  0.12D-07    48.29
    6     2     2     1.09245344    -0.60525324  -109.93916083    -0.00000115    -0.00000007  0.68D-08  0.13D-07    48.29
    6     3     3     1.09245358    -0.60525324  -109.93916082    -0.00000118    -0.00000007  0.71D-08  0.13D-07    48.29
    6     4     4     1.09245355    -0.60525324  -109.93916082    -0.00000118    -0.00000007  0.72D-08  0.13D-07    48.29
    6     5     5     1.09245355    -0.60525324  -109.93916082    -0.00000118    -0.00000007  0.73D-08  0.13D-07    48.29
    7     1     1     1.09245689    -0.60525331  -109.93916090    -0.00000007    -0.00000001  0.94D-09  0.11D-08    57.95
    7     2     2     1.09245695    -0.60525331  -109.93916089    -0.00000007    -0.00000001  0.10D-08  0.11D-08    57.95
    7     3     3     1.09245687    -0.60525331  -109.93916089    -0.00000007    -0.00000001  0.85D-09  0.10D-08    57.95
    7     4     4     1.09245697    -0.60525331  -109.93916089    -0.00000007    -0.00000001  0.10D-08  0.12D-08    57.95
    7     5     5     1.09245697    -0.60525331  -109.93916089    -0.00000007    -0.00000001  0.10D-08  0.12D-08    57.95


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.1%   0.5%
 P   0.3%   8.3%  72.0%

 Initialization:   0.2%
 Other:           18.4%

 Total CPU:       58.0 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222/20222          -0.0000000  -0.0000000   0.0000000   0.8865308   0.0000000
 22/2220222          -0.0000000   0.0000000  -0.0000000   0.0000000   0.8865307
 222/220222          -0.0000000   0.8865307   0.0000000  -0.0000000   0.0000000
 2/22220222           0.0832546  -0.0000000   0.8826156   0.0000000   0.0000000
 22222/0222           0.8826139   0.0000000  -0.0832544   0.0000000  -0.0000000
 2/2\22/222           0.0000000   0.2556695  -0.0000000  -0.0000000   0.0000000
 2/222\/222           0.2545377  -0.0000000  -0.0240101  -0.0000000  -0.0000000
 22/22\/222           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.2214161
 2222/\/222           0.0000000   0.0000000   0.0000000   0.2214160   0.0000000
 22/2\2/222          -0.0000000  -0.2214157   0.0000000  -0.0000000  -0.0000000
 222/\2/222           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.2214157
 22/\22/222          -0.0000000  -0.0000000  -0.0000000  -0.2214156  -0.0000000
 202222/222           0.0169774   0.0000000   0.1799832  -0.0000000  -0.0000000
 222022/222          -0.0169774  -0.0000000  -0.1799827   0.0000000   0.0000000
 222220/222          -0.0169774  -0.0000000  -0.1799826   0.0000000   0.0000000
 220222/222           0.1643598  -0.0000000   0.0752879  -0.0000000   0.0000000
 222202/222          -0.1473824   0.0000000   0.1046941   0.0000000   0.0000000
 2/\222/222           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1278346
 2/22\2/222          -0.0000000  -0.0000000  -0.0000000  -0.1278346  -0.0000000
 202/222222          -0.0000000  -0.0719500   0.0000000  -0.0000000  -0.0000000
 20222/2222          -0.0716319  -0.0000000   0.0067569  -0.0000000  -0.0000000
 2/22202222          -0.0067569   0.0000000  -0.0716315   0.0000000  -0.0000000
 2/20222222          -0.0067568  -0.0000000  -0.0716315   0.0000000   0.0000000
 22022/2222          -0.0624923   0.0000000  -0.0131948   0.0000000  -0.0000000
 22/2022222          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0609770
 222/022222          -0.0000000  -0.0609770   0.0000000   0.0000000  -0.0000000
 2202/22222          -0.0000000  -0.0000000   0.0000000  -0.0609770   0.0000000
 220/222222           0.0000000  -0.0609770  -0.0000000  -0.0000000  -0.0000000
 2220/22222           0.0000000   0.0000000   0.0000000  -0.0609769   0.0000000
 22/0222222          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0609769
 2222/02222          -0.0000000  -0.0000000   0.0000000  -0.0609769   0.0000000
 22/2202222          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0609769
 22220/2222          -0.0589227   0.0000000   0.0246476   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956476    0.000000    0.000000    0.000000    0.022350
 2          -0.000000    0.956738    0.000000   -0.000000    0.000000
 3          -0.022350   -0.000000   -0.000000   -0.000000    0.956476
 4          -0.000000   -0.000000    0.956738   -0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.956738    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956738   -0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.956738   -0.000000   -0.000000   -0.000000
 3           0.000000   -0.000000    0.956738   -0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.956738   -0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.956738


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95647646 (fixed)   0.95674862 (relaxed)   0.95673755 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002314   -0.00000000   -0.49183113
 Singles      0.01158088   -0.05509858   -0.05684768
 Pairs        0.08087815   -0.01285199   -0.05657450
 Total        1.09248217   -0.06795057   -0.60525331
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33390758
 Nuclear energy                         0.00000000
 Kinetic energy                        41.87422163
 One electron energy                 -194.68534577
 Two electron energy                   84.74618487
 Virial quotient                       -2.62546160
 Correlation energy                    -0.60525331
 !MRCI STATE 1.1 Energy              -109.939160895376

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99513604 (Davidson, fixed reference)
 Cluster corrected energies          -109.99512073 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99513604 (Davidson, rotated reference)

 Cluster corrected energies          -109.99173283 (Pople, fixed reference)
 Cluster corrected energies          -109.99171742 (Pople, relaxed reference)
 Cluster corrected energies          -109.99173283 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95673752 (fixed)   0.95674860 (relaxed)   0.95673752 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002316   -0.00000000   -0.50359502
 Singles      0.01158100   -0.05509871   -0.05684779
 Pairs        0.08087809   -0.00000000   -0.04481051
 Total        1.09248225   -0.05509871   -0.60525331
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33390758
 Nuclear energy                         0.00000000
 Kinetic energy                        41.87421622
 One electron energy                 -194.68533719
 Two electron energy                   84.74617630
 Virial quotient                       -2.62546194
 Correlation energy                    -0.60525331
 !MRCI STATE 2.1 Energy              -109.939160894993

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99513608 (Davidson, fixed reference)
 Cluster corrected energies          -109.99512077 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99513608 (Davidson, rotated reference)

 Cluster corrected energies          -109.99173288 (Pople, fixed reference)
 Cluster corrected energies          -109.99171746 (Pople, relaxed reference)
 Cluster corrected energies          -109.99173288 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95647649 (fixed)   0.95674863 (relaxed)   0.95673758 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002311   -0.00000000   -0.00015023
 Singles      0.01158067   -0.05509833   -0.05684751
 Pairs        0.08087833   -0.55000485   -0.54825558
 Total        1.09248212   -0.60510318   -0.60525331
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33390758
 Nuclear energy                         0.00000000
 Kinetic energy                        41.87423342
 One electron energy                 -194.68536409
 Two electron energy                   84.74620320
 Virial quotient                       -2.62546086
 Correlation energy                    -0.60525331
 !MRCI STATE 3.1 Energy              -109.939160894374

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99513600 (Davidson, fixed reference)
 Cluster corrected energies          -109.99512072 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99513600 (Davidson, rotated reference)

 Cluster corrected energies          -109.99173280 (Pople, fixed reference)
 Cluster corrected energies          -109.99171741 (Pople, relaxed reference)
 Cluster corrected energies          -109.99173280 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95673751 (fixed)   0.95674859 (relaxed)   0.95673751 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002315   -0.00000000   -0.50359510
 Singles      0.01158095   -0.05509861   -0.05684776
 Pairs        0.08087815   -0.00000000   -0.04481046
 Total        1.09248226   -0.05509862   -0.60525331
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33390758
 Nuclear energy                         0.00000000
 Kinetic energy                        41.87421443
 One electron energy                 -194.68533525
 Two electron energy                   84.74617436
 Virial quotient                       -2.62546205
 Correlation energy                    -0.60525331
 !MRCI STATE 4.1 Energy              -109.939160894076

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99513609 (Davidson, fixed reference)
 Cluster corrected energies          -109.99512078 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99513609 (Davidson, rotated reference)

 Cluster corrected energies          -109.99173288 (Pople, fixed reference)
 Cluster corrected energies          -109.99171747 (Pople, relaxed reference)
 Cluster corrected energies          -109.99173288 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95673751 (fixed)   0.95674859 (relaxed)   0.95673751 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002315   -0.00000000   -0.50359509
 Singles      0.01158096   -0.05509862   -0.05684776
 Pairs        0.08087815    0.00000000   -0.04481046
 Total        1.09248226   -0.05509862   -0.60525331
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33390758
 Nuclear energy                         0.00000000
 Kinetic energy                        41.87421388
 One electron energy                 -194.68533447
 Two electron energy                   84.74617357
 Virial quotient                       -2.62546209
 Correlation energy                    -0.60525331
 !MRCI STATE 5.1 Energy              -109.939160893835

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99513609 (Davidson, fixed reference)
 Cluster corrected energies          -109.99512078 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99513609 (Davidson, rotated reference)

 Cluster corrected energies          -109.99173288 (Pople, fixed reference)
 Cluster corrected energies          -109.99171747 (Pople, relaxed reference)
 Cluster corrected energies          -109.99173288 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       40.85       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        62.72     59.59      1.61      0.66      0.57
 REAL TIME  *        68.39 SEC
 DISK USED  *        73.02 MB (local),      931.46 MB (total)
 SF USED    *       408.64 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -109.99513604  AU                              
 SETTING HLSDIAG(2)     =      -109.99513608  AU                              
 SETTING HLSDIAG(3)     =      -109.99513600  AU                              
 SETTING HLSDIAG(4)     =      -109.99513609  AU                              
 SETTING HLSDIAG(5)     =      -109.99513609  AU                              


         HLSDIAG
    -109.9951360
    -109.9951361
    -109.9951360
    -109.9951361
    -109.9951361
                                                  

 CI/cc-pWCVTZ-PP energy=   -109.939160893835

              CI           MULTI         RHF-SCF
   -109.93916089   -109.33390758   -109.32692219
 **********************************************************************************************************************************
 Molpro calculation terminated
