
 Working directory              : /wrk/irikura/molpro.T7fKzPaYPh/
 Global scratch directory       : /wrk/irikura/molpro.T7fKzPaYPh/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.T7fKzPaYPh/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Sn SO-CI
 memory,900,M;
 
 gprint,orbitals,civector;
 gthresh,twoint=1.d-14,step=1.d-9,gradient=1.d-9,energy=1.d-10
 
 symmetry,xyz
 geometry={Sn};
 
 basis=aug-cc-pwCV5Z-PP
 
                                                                                 ! CASSCF for ground term 3P
 {multi
     wf,nelec=22,sym=1,spin=2; state,3
     expec2,lxx,lyy,lzz;
 }
 
 table, energy, ll
 title, Energies and L**2 values
 
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 29-Apr-24          TIME: 10:22:52  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:       900 MW
 Total memory per node:  10800 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 900.0 MW



 THRESHOLDS:

 ZERO    =  1.00D-12  ONEINT  =  1.00D-12  TWOINT  =  1.00D-14  PREFAC  =  1.00D-14  XXXXXX  =  1.00D-09  EORDER  =  1.00D-04
 ENERGY  =  1.00D-10  ETEST   =  0.00D+00  EDENS   =  0.00D+00  THRDEDEF=  1.00D-06  GRADIENT=  1.00D-09  STEP    =  1.00D-09
 ORBITAL =  1.00D-05  CIVEC   =  1.00D-05  COEFF   =  1.00D-04  PRINTCI =  5.00D-02  PUNCHCI =  9.90D+01  OPTGRAD =  3.00D-04
 OPTENERG=  1.00D-06  OPTSTEP =  3.00D-04  THRGRAD =  1.00D-10  COMPRESS=  1.00D-11  VARMIN  =  1.00D-07  VARMAX  =  1.00D-03
 THRDOUB =  0.00D+00  THRDIV  =  1.00D-05  THRRED  =  1.00D-07  THRPSP  =  1.00D+00  THRDC   =  1.00D-10  THRCS   =  1.00D-10
 THRNRM  =  1.00D-08  THREQ   =  0.00D+00  THRDE   =  1.00D+00  THRREF  =  1.00D-05  SPARFAC =  1.00D+00  THRDLP  =  1.00D-07
 THRDIA  =  1.00D-10  THRDLS  =  1.00D-07  THRGPS  =  0.00D+00  THRKEX  =  0.00D+00  THRDIS  =  2.00D-01  THRVAR  =  1.00D-10
 THRLOC  =  1.00D-06  THRGAP  =  1.00D-06  THRLOCT = -1.00D+00  THRGAPT = -1.00D+00  THRORB  =  1.00D-06  THRMLTP =  0.00D+00
 THRCPQCI=  1.00D-10  KEXTA   =  0.00D+00  THRCOARS=  0.00D+00  SYMTOL  =  1.00D-06  GRADTOL =  1.00D-06  THROVL  =  1.00D-08
 THRORTH =  1.00D-08  THRDLOVL= -1.00D+00  GRID    =  1.00D-06  GRIDMAX =  1.00D-03  DTMAX   =  0.00D+00  THROCCDE=  1.00D-01
 THROCCDE=  1.00D-01  THRPRINT=  2.50D-01

 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sn   ECP ECP28MDF                 selected for group  1
 Library entry SN     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SN     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SN     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SN     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SN     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SN     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SN     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  SN     22.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   22
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

         1 0.418E-05 0.576E-04 0.211E-03 0.211E-03 0.211E-03 0.211E-03 0.211E-03 0.441E-03
         2 0.131E-06 0.131E-06 0.131E-06 0.624E-03 0.624E-03 0.624E-03 0.398E-02 0.398E-02


 Contracted 2-electron integrals neglected if value below      1.0D-14
 AO integral compression algorithm  1   Integral accuracy      1.0D-14

     737.935 MB (compressed) written to integral file ( 18.0%)

     Node minimum: 42.205 MB, node maximum: 70.517 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   26065404.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15978249      RECORD LENGTH: 524288

 Memory used in sort:      16.54 MW

 SORT1 READ   511790813. AND WROTE     4291573. INTEGRALS IN     13 RECORDS. CPU TIME:     2.19 SEC, REAL TIME:     2.27 SEC
 SORT2 READ    53582289. AND WROTE   312900871. INTEGRALS IN   3048 RECORDS. CPU TIME:     0.67 SEC, REAL TIME:     0.73 SEC

 Node minimum:    26062456.  Node maximum:    26096463. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         8.45      8.26
 REAL TIME  *         9.39 SEC
 DISK USED  *        30.88 MB (local),        1.61 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     252 (  122  130)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.176D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.295D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.465D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.425D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.391D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 2 6 4 3 5 1 2 4   3 6 5 1 4 2 5 3 6 9  1113151014 812 7 1 2   4 5 6 3 7 911151412
                                       1310 8 2 5 3 4 6 1 7  111210 91314 815 5 2   3 6 4 1111312 710 9  14 815 5 2 3 6 42722
                                       28242326182017191625  21 113 911 815141210   7 5 3 2 6 411 913 8  14151012 7 1 5 3 6 4
                                        2 3 5 6 4 2 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.176D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.191D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.108D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.237D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.237D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 1 6   5 9 8 710 4 3 2 1 8   610 9 7 5 4 3 2 1 8   6 7 910 5 420181915
                                       21131211161714 2 3 1   810 5 7 6 4 9201819  1521131416171211 2 3   1 8 4 5 910 6 72115
                                       141920121613181711 5  10 8 7 6 9 4 2 1 3 9   6 4 7 810 521151918  14171320161211 2 1 3
                                        9 6 7 410 8 5 2 1 3   2 1 3 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-08 (gradient)  0.10E-09 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  1649  ( 15 closed/active, 1122 closed/virtual, 0 active/active, 512 active/virtual )
 Total number of variables:    1667
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   23   22   45   -150.15424382    -249.53296850  -99.37872468   12.34890536 0.00065940 0.00000000  0.29E+01      1.70
   2   12   11   30   -201.56571988    -211.06621224   -9.50049236   10.27543253 0.04137722 0.00000000  0.13E+01      3.09
   3    7    6    3   -212.29037107    -213.21666113   -0.92629007    2.82087282 0.00333801 0.00000000  0.59E+00      4.37
   4    7    6    0   -213.30301489    -213.33523469   -0.03221980    0.38742445 0.00006207 0.00000000  0.19E+00      5.57
   5    8    7    0   -213.33634746    -213.33645847   -0.00011102    0.01617113 0.00000013 0.00000000  0.15E-01      6.83
   6    8    7    0   -213.33645877    -213.33645877   -0.00000000    0.00005502 0.00000000 0.00000000  0.67E-04      8.10
   7    2    2    0   -213.33645877    -213.33645877    0.00000000    0.00000000 0.00000000 0.00000000  0.12E-08      9.04

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.28E-10)
                       Final energy:   -213.33645877
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -213.336466504451
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58194100
 One electron energy                          -376.08546131
 Two electron energy                           162.74899480
 Virial ratio                                    3.58333074
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -213.336466504451
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58194100
 One electron energy                          -376.08546131
 Two electron energy                           162.74899480
 Virial ratio                                    3.58333074
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -213.336443306725
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58213459
 One electron energy                          -376.08603349
 Two electron energy                           162.74959018
 Virial ratio                                    3.58332440
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     1.000020187372
 !MCSCF expec                      <2.1|LXLX|2.1>     0.000020198263
 !MCSCF expec                      <3.1|LXLX|3.1>     1.000000702593
 
 !MCSCF expec                      <1.1|LYLY|1.1>     0.000020198263
 !MCSCF expec                      <2.1|LYLY|2.1>     1.000020187372
 !MCSCF expec                      <3.1|LYLY|3.1>     1.000000702593
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     1.000080749561
 !MCSCF expec                      <2.1|LZLZ|2.1>     1.000080749561
 !MCSCF expec                      <3.1|LZLZ|3.1>     0.000002810444
 
 !MCSCF expec                      <1.1|L**2|1.1>     2.000121135196
 !MCSCF expec                      <2.1|L**2|2.1>     2.000121135196
 !MCSCF expec                      <3.1|L**2|3.1>     2.000004215630
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 6 4 2 1 5 1 3 5   6 4 2 1 2 6 4 3 513  101415 812 911 7 1 3   4 6 2 5 7 911 81215
                                       141013 2 4 6 3 5 1 7   91112 814151013 2 4   6 3 5 1 711 912 814  151310 2 4 6 3 52527
                                       28211723262419182022  16 112 711 91415 813  10 2 4 6 5 313101215  1411 9 7 8 1 5 3 4 6
                                        2 5 3 4 6 2 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 2 1 3 2   1 3 7 9 810 4 5 6 2   1 310 6 7 9 5 4 8 6  10 5 4 7 9 8 2 1 321
                                       19111213141615171820   6 5 4 810 9 7191211  2113161415171820 6 5   4 810 7 9 3 2 1 6 5
                                        4 810 7 91911121321  141615172018 3 2 1 9   710 4 5 6 8 1 2 318  20151713141611121921
                                        9 710 8 4 5 6 1 2 3   1 2 3 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.85756     1  1  s    1.00027
    2.1     2.00000    -1.30722     1  1  d2-  0.99995
    3.1     2.00000    -1.30722     1  1  d1-  0.99995
    4.1     2.00000    -1.30722     1  1  d1+  0.99995
    5.1     2.00000    -1.30722     1  1  d0   0.99995
    6.1     2.00000    -0.50677     1  1  s   -0.35220    1  5  s    0.53472    1  6  s    0.50959
    7.1     1.99999    -1.30721     1  1  d2+  0.99993
    1.2     2.00000    -4.04339     1  1  pz   0.99819
    2.2     2.00000    -4.04339     1  1  py   0.99819
    3.2     2.00000    -4.04339     1  1  px   0.99819
    4.2     0.66667    -0.06578     1  5  py   0.43713    1  6  py   0.44088
    5.2     0.66667    -0.06578     1  5  px   0.43713    1  6  px   0.44088
    6.2     0.66667    -0.06579     1  5  pz   0.43710    1  6  pz   0.44091
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 2 aa0         -0.00000000      0.00000000      0.99999982
 2 0aa          0.99999495     -0.00000000      0.00000000
 2 a0a          0.00000000      0.99999495     -0.00000000
 
 Energy:     -213.33646650   -213.33646650   -213.33644331
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        1.38       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *        17.05      8.61      8.26
 REAL TIME  *        19.54 SEC
 DISK USED  *        70.33 MB (local),        2.07 GB (total)
 SF USED    *        95.29 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and L**2 values

         ENERGY      LL
    -213.3364665   2.00012114
    -213.3364665   2.00012114
    -213.3364433   2.00000422
                                                  

 MULTI/aug-cc-pWCV5Z-PP energy=   -213.336443306725

           MULTI
   -213.33644331
 **********************************************************************************************************************************
 Molpro calculation terminated
