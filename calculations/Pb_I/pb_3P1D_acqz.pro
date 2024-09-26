
 Working directory              : /wrk/irikura/molpro.Vs3trau1nv/
 Global scratch directory       : /wrk/irikura/molpro.Vs3trau1nv/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Vs3trau1nv/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    7
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Pb SO-CI
                                                                                 ! valence terms only
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Pb};
 
 basis=aug-cc-pwCVQZ-DK3
 
 set,dkho=101
 
                                                                                 ! spherical anion orbitals (4S)
 {rhf; wf,charge=-1,sym=2,spin=3}
 
 if $DKHO.EQ.0 then
     LSOP = "ECP"
 else
     LSOP = "LS"
 endif
 
 NTRIP=3
 NSING=5
 
                                                                                 ! valence active space
 {multi
     closed,20,19
     occ,21,22
     wf,charge=0,sym=1,spin=2;state,NTRIP;
     wf,charge=0,sym=1,spin=0;state,NSING;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! core is KLMN except 4f
 core,14,9
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,$LSOP,5201.2,5101.2;print,vls=0,hls=0}                               !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Jul-24          TIME: 18:11:11  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   7000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-DK3
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry PB     S augccpwCVQZ-DK3      selected for orbital group  1
 Library entry PB     P augccpwCVQZ-DK3      selected for orbital group  1
 Library entry PB     D augccpwCVQZ-DK3      selected for orbital group  1
 Library entry PB     F augccpwCVQZ-DK3      selected for orbital group  1
 Library entry PB     G augccpwCVQZ-DK3      selected for orbital group  1
 Library entry PB     H augccpwCVQZ-DK3      selected for orbital group  1


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

   1  PB     82.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   82
 NUMBER OF PRIMITIVE AOS:         488
 NUMBER OF SYMMETRY AOS:          387
 NUMBER OF CONTRACTIONS:          195   (   99Ag  +   96Au  )
 NUMBER OF INNER CORE ORBITALS:    30   (   14Ag  +   16Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     166.986 MB (compressed) written to integral file ( 12.7%)

     Node minimum: 12.845 MB, node maximum: 33.030 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   13177311.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   13177311      RECORD LENGTH: 524288

 Memory used in sort:      13.73 MW

 SORT1 READ   163901556. AND WROTE     2436059. INTEGRALS IN      7 RECORDS. CPU TIME:     1.30 SEC, REAL TIME:     1.40 SEC
 SORT2 READ    17018275. AND WROTE    92236821. INTEGRALS IN    882 RECORDS. CPU TIME:     0.44 SEC, REAL TIME:     0.48 SEC

 Node minimum:    13170451.  Node maximum:    13193535. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3
                                        4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 7 8 910111213  1415 7 8 91011121314
                                       15 7 8 9101112131415   7 8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 9101112131415  161718192021

 Eigenvalues of metric

         1 0.534E-07 0.989E-05 0.539E-04 0.539E-04 0.539E-04 0.539E-04 0.539E-04 0.104E-02
         2 0.128E-04 0.128E-04 0.128E-04 0.284E-03 0.284E-03 0.284E-03 0.711E-02 0.711E-02


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        18.21     17.98
 REAL TIME  *        19.58 SEC
 DISK USED  *        31.21 MB (local),      563.91 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:  20  23
 Initial beta  occupancy:  18  22

 NELEC=   83   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -20868.61895855  -20868.61895855     0.00D+00     0.31D+02     0     0       0.08      0.17    start
   2   -20881.45870021     -12.83974167     0.41D-01     0.20D+01     1     0       0.08      0.25    diag2
   3   -20883.00766944      -1.54896923     0.45D-01     0.10D+02     2     0       0.08      0.33    diag2
   4   -20883.58236918      -0.57469974     0.13D-01     0.50D+01     3     0       0.08      0.41    diag2
   5   -20883.92481336      -0.34244417     0.34D-02     0.58D+01     4     0       0.07      0.48    diag2
   6   -20884.06914363      -0.14433028     0.21D-02     0.74D-01     5     0       0.08      0.56    diag2
   7   -20884.11366059      -0.04451696     0.12D-02     0.34D-01     6     0       0.08      0.64    diag2
   8   -20884.11767273      -0.00401214     0.54D-03     0.30D+00     7     0       0.08      0.72    fixocc
   9   -20884.12012057      -0.00244783     0.24D-03     0.60D-01     8     0       0.08      0.80    diag2
  10   -20884.12051818      -0.00039762     0.13D-03     0.49D-01     9     0       0.07      0.87    diag2/orth
  11   -20884.12057099      -0.00005281     0.31D-04     0.32D-01     9     0       0.08      0.95    diag2
  12   -20884.12059498      -0.00002399     0.16D-04     0.16D-01     9     0       0.08      1.03    diag2
  13   -20884.12061466      -0.00001967     0.12D-04     0.57D-02     9     0       0.07      1.10    diag2
  14   -20884.12064025      -0.00002560     0.11D-04     0.20D-02     9     0       0.08      1.18    diag2
  15   -20884.12065968      -0.00001943     0.10D-04     0.60D-03     9     0       0.08      1.26    diag2
  16   -20884.12066466      -0.00000498     0.10D-04     0.93D-04     9     0       0.08      1.34    diag2
  17   -20884.12057356       0.00009110     0.10D-04     0.13D-02     9     0       0.08      1.42    diag2
  18   -20884.12026582       0.00030774     0.10D-04     0.37D-02     9     0       0.08      1.50    diag2
  19   -20884.12020321       0.00006261     0.13D-04     0.92D-03     9     0       0.08      1.58    diag2
  20   -20884.12002269       0.00018052     0.20D-04     0.28D-02     9     0       0.08      1.66    diag2/orth
  21   -20884.11996011       0.00006257     0.30D-04     0.12D-02     9     0       0.08      1.74    diag2
  22   -20884.12021352      -0.00025340     0.36D-04     0.40D-02     9     0       0.08      1.82    diag2
  23   -20884.11999974       0.00021377     0.17D-04     0.41D-02     9     0       0.07      1.89    diag2
  24   -20884.11999668       0.00000306     0.34D-04     0.27D-03     9     0       0.08      1.97    diag2
  25   -20884.11997914       0.00001755     0.36D-04     0.31D-02     9     0       0.08      2.05    diag2
  26   -20884.11988517       0.00009397     0.13D-04     0.31D-02     9     0       0.09      2.14    diag2
  27   -20884.11994347      -0.00005831     0.13D-04     0.20D-02     9     0       0.08      2.22    diag2
  28   -20884.11994421      -0.00000073     0.95D-05     0.30D-03     9     0       0.08      2.30    diag2
  29   -20884.11987798       0.00006623     0.86D-05     0.33D-02     9     0       0.08      2.38    diag2
  30   -20884.11983718       0.00004080     0.32D-04     0.23D-02     9     0       0.09      2.47    diag2/orth
  31   -20884.11983833      -0.00000115     0.32D-04     0.21D-03     9     0       0.08      2.55    diag2
  32   -20884.11984110      -0.00000277     0.32D-04     0.40D-03     9     0       0.07      2.62    diag2
  33   -20884.11983964       0.00000146     0.31D-04     0.11D-02     9     0       0.08      2.70    diag2
  34   -20884.11982440       0.00001524     0.30D-04     0.15D-02     9     0       0.08      2.78    diag2
  35   -20884.11984608      -0.00002168     0.36D-04     0.29D-02     9     0       0.09      2.87    diag2
  36   -20884.11984453       0.00000155     0.28D-04     0.80D-04     9     0       0.07      2.94    diag2
  37   -20884.11982993       0.00001460     0.30D-04     0.13D-02     9     0       0.08      3.02    diag2
  38   -20884.11982978       0.00000015     0.25D-04     0.80D-03     9     0       0.08      3.10    diag2
  39   -20884.11982730       0.00000248     0.32D-04     0.14D-02     9     0       0.08      3.18    diag2
  40   -20884.11983062      -0.00000332     0.26D-04     0.44D-03     9     0       0.08      3.26    diag2/orth
  41   -20884.11982095       0.00000967     0.29D-04     0.71D-03     9     0       0.08      3.34    diag2
  42   -20884.11984687      -0.00002592     0.32D-04     0.14D-02     9     0       0.08      3.42    diag2
  43   -20884.11983966       0.00000721     0.30D-04     0.30D-03     9     0       0.08      3.50    diag2
  44   -20884.11983855       0.00000111     0.32D-04     0.79D-04     9     0       0.08      3.58    diag2
  45   -20884.11983743       0.00000112     0.32D-04     0.44D-04     9     0       0.07      3.65    diag2
  46   -20884.11984058      -0.00000314     0.33D-04     0.12D-03     9     0       0.08      3.73    diag2
  47   -20884.11984770      -0.00000712     0.32D-04     0.57D-03     9     0       0.08      3.81    diag2
  48   -20884.11984054       0.00000716     0.28D-04     0.62D-03     9     0       0.09      3.90    diag2
  49   -20884.11984113      -0.00000059     0.32D-04     0.47D-04     9     0       0.08      3.98    diag2
  50   -20884.11984410      -0.00000298     0.31D-04     0.25D-03     9     0       0.07      4.05    diag2/orth
  51   -20884.11983144       0.00001266     0.31D-04     0.59D-03     9     0       0.08      4.13    diag2
  52   -20884.11984126      -0.00000982     0.34D-04     0.45D-03     9     0       0.08      4.21    diag2
  53   -20884.11984309      -0.00000183     0.31D-04     0.86D-04     9     0       0.07      4.28    diag2
  54   -20884.11983349       0.00000961     0.31D-04     0.42D-03     9     0       0.08      4.36    diag2
  55   -20884.11984243      -0.00000895     0.34D-04     0.36D-03     9     0       0.08      4.44    diag2
  56   -20884.11984550      -0.00000307     0.31D-04     0.19D-03     9     0       0.08      4.52    diag2
  57   -20884.11983465       0.00001085     0.30D-04     0.54D-03     9     0       0.08      4.60    diag2
  58   -20884.11984199      -0.00000734     0.34D-04     0.35D-03     9     0       0.07      4.67    diag2
  59   -20884.11984379      -0.00000180     0.31D-04     0.13D-03     9     0       0.08      4.75    diag2
  60   -20884.11985862      -0.00001482     0.31D-04     0.24D-02     0     0       0.08      4.83    diag/orth

 ?No convergence in rhfpr

 Final alpha occupancy:  23  20
 Final beta  occupancy:  21  19

 !RHF STATE 1.2 Energy               -20884.1198586179    
  RHF One-electron energy            -28580.5956291283    
  RHF Two-electron energy            7696.475770510395
  RHF Kinetic energy                  32689.1119651422    
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.638870822826

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3253.57175     1  1  s    0.93297    1  2  s   -0.42222    1  3  s   -1.49678    1  4  s   -4.27074
                                    1  5  s    9.90673    1  6  s  -13.20171    1  7  s   -0.99156    1  8  s    2.24706
                                    1 10  s    6.75357    1 11  s    8.14128    1 12  s    2.32999
    2.1     2.00000  -587.65985     1  2  s    1.25928    1  3  s    0.91632    1  4  s    2.61426    1  5  s   -6.06281
                                    1  6  s    8.07883    1  7  s    0.60612    1  8  s   -1.37502    1 10  s   -4.13287
                                    1 11  s   -4.98208    1 12  s   -1.42584
    3.1     2.00000  -143.71411     1  3  s    0.46647    1  4  s   -1.52676    1  5  s    3.55905    1  6  s   -4.76165
                                    1  7  s   -0.35627    1  8  s    0.80149    1 10  s    2.43470    1 11  s    2.93704
                                    1 12  s    0.84014
    4.1     2.00000   -94.46945     1  1  d0   0.86422    1  1  d2+  0.49827
    5.1     2.00000   -94.46938     1  1  d1-  0.99738
    6.1     2.00000   -94.46777     1  1  d2-  0.98990
    7.1     2.00000   -94.46774     1  1  d1+  0.99738
    8.1     2.00000   -94.46721     1  1  d0  -0.50318    1  1  d2+  0.85535
    9.1     2.00000   -33.95800     1  3  s    0.28678    1  4  s    1.82833    1  5  s   -1.96066    1  6  s    2.65512
                                    1  8  s   -0.43144    1 10  s   -1.35547    1 11  s   -1.63884    1 12  s   -0.46796
   10.1     2.00000   -16.37787     1  2  d0   0.86380    1  2  d2+  0.49863
   11.1     2.00000   -16.37775     1  2  d1-  0.99743
   12.1     2.00000   -16.37431     1  2  d2-  0.98886
   13.1     2.00000   -16.37425     1  2  d1+  0.99649
   14.1     2.00000   -16.37312     1  2  d0  -0.50312    1  2  d2+  0.85392
   15.1     2.00000    -6.11241     1  4  s    0.38958    1  6  s    1.34800    1 10  s   -0.68533    1 11  s   -0.83350
   16.1     2.00000    -1.05077     1  3  d0   0.86433    1  3  d2+  0.49975
   17.1     2.00000    -1.05028     1  3  d1-  0.99713
   18.1     2.00000    -1.04048     1  3  d2-  0.99157
   19.1     2.00000    -1.04021     1  3  d1+  0.99987
   20.1     2.00000    -1.03708     1  3  d0  -0.50676    1  3  d2+  0.85641
   21.1     2.00000    -0.50552     1  5  s   -0.59314    1  6  s    2.06030    1 10  s   -0.45272    1 11  s   -0.64528
                                    1 12  s   -0.25165
   22.1     1.00000     0.01421     1  4  s   -0.42510    1  5  s    2.59845    1  6  s   -5.70292    1  8  s   -0.26810
                                    1  9  s   -1.13900    1 10  s    2.40193    1 11  s    3.83019    1 13  s    1.73793
   23.1     1.00000     0.08352     1  8  d0   0.48956    1  9  d0  -0.51407    1 10  d0   1.10948    1 10  d2+  0.47785
    1.2     2.00000  -506.31682     1  1  py   0.99634
    2.2     2.00000  -506.31680     1  1  pz   0.99918
    3.2     2.00000  -506.31639     1  1  px   0.99635
    4.2     2.00000  -119.93314     1  2  py   1.00564
    5.2     2.00000  -119.93309     1  2  pz   1.00850
    6.2     2.00000  -119.93149     1  2  px   1.00536
    7.2     2.00000   -26.00145     1  3  py   0.96242
    8.2     2.00000   -26.00135     1  3  pz   0.96519
    9.2     2.00000   -25.99819     1  3  px   0.96552
   10.2     2.00000    -5.80266     1  1  f0   0.78521    1  1  f2+  0.61245
   11.2     2.00000    -5.80266     1  1  f1-  0.96497
   12.2     2.00000    -5.79970     1  1  f2-  0.98927
   13.2     2.00000    -5.79966     1  1  f1+  0.77663    1  1  f3+  0.61209
   14.2     2.00000    -5.79792     1  1  f1- -0.25177    1  1  f3-  0.94418
   15.2     2.00000    -5.79785     1  1  f0  -0.61922    1  1  f2+  0.77690
   16.2     2.00000    -5.79729     1  1  f1+ -0.62578    1  1  f3+  0.75989
   17.2     2.00000    -3.81117     1  4  py   1.00892
   18.2     2.00000    -3.81100     1  4  pz   1.01166
   19.2     2.00000    -3.80403     1  4  px   0.98852
   20.2     1.00000    -0.18329     1  9  px   0.42914    1 10  px   0.52609


 HOMO     23.1     0.083520 =       2.2727eV
 LUMO     21.2     0.050268 =       1.3679eV
 LUMO-HOMO        -0.033252 =      -0.9048eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        1.02       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        23.05      4.83     17.98
 REAL TIME  *        24.76 SEC
 DISK USED  *        34.57 MB (local),      587.44 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING LSOP           =    "LS"
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         5.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  39 (   20   19)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     152 (   78   74)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             5
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.746D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.397D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.683D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.127D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.688D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.424D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.782D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.398D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.688D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.128D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.693D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.428D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.943D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.404D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.749D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.144D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.776D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.556D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.766D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 3 4 5 1 2   6 3 4 5 1 2 6 3 4 5   1 1 2 5 3 4 6 1 5 3   2 4 611 7 814101513
                                        912 1 3 5 6 4 2 711  14 8151013 912 6 2 3   4 5 1 71114 8151013   912 6 2 3 4 5 1 711
                                       14 8151013 912 6 2 3   4 5 1 6 2 3 4 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.704D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.566D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.704D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.703D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.320D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.705D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.711D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.110D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.710D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.473D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.279D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.130D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.510D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.339D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.487D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.526D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.750D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.546D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.758D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.787D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.653D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.121D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 2 3 1 6   5 8 4 910 7 2 3 1 1   3 2 1 2 3 1 2 3 6 5   4 7 910 8 1 2 3 6 5
                                        7 8 910 4 6 5 8 4 9  10 7 2 3 1 6 5 8 4 9  10 71219142117161520  181311 6 5 2 3 8 4 1
                                        9 3 1 6 5 8 4 910 7   2 3 1 210 7

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.12500   0.12500   0.12500
 Weight factors for state symmetry  2:    0.12500   0.12500   0.12500   0.12500   0.12500
 
 Number of orbital rotations:  3343  ( 77 closed/active, 2966 closed/virtual, 0 active/active, 300 active/virtual )
 Total number of variables:    3451
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10   14    0 -20884.28976880  -20884.32497944   -0.03521064    0.07976958 0.00010463 0.00000000  0.51E+00      6.30
   2    8   14    0 -20884.32439206  -20884.32456734   -0.00017529    0.02896171 0.00000036 0.00000000  0.22E-01     13.36
   3    7   10    0 -20884.32456757  -20884.32456757   -0.00000000    0.00005530 0.00000001 0.00000000  0.52E-04     19.53

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.12E-07)
                       Final energy: -20884.32456757
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -20884.3458629201    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.95251305
 One electron energy                        -28577.90436764
 Two electron energy                          7693.55850472
 Virial ratio                                    1.63888085
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -20884.3458629201    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.95251308
 One electron energy                        -28577.90436781
 Two electron energy                          7693.55850489
 Virial ratio                                    1.63888085
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -20884.3458629200    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.95251310
 One electron energy                        -28577.90436794
 Two electron energy                          7693.55850502
 Virial ratio                                    1.63888085
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -20884.3117903597    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.95251305
 One electron energy                        -28577.90436762
 Two electron energy                          7693.59257726
 Virial ratio                                    1.63887981
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -20884.3117903596    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.95251305
 One electron energy                        -28577.90436764
 Two electron energy                          7693.59257728
 Virial ratio                                    1.63887981
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -20884.3117903594    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.95251308
 One electron energy                        -28577.90436781
 Two electron energy                          7693.59257745
 Virial ratio                                    1.63887981
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -20884.3117903592    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.95251310
 One electron energy                        -28577.90436794
 Two electron energy                          7693.59257758
 Virial ratio                                    1.63887981
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -20884.3117903592    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.95251310
 One electron energy                        -28577.90436797
 Two electron energy                          7693.59257762
 Virial ratio                                    1.63887981
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999828
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999988006
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000000012342
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.364616041547
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000487
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000001856
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999996726
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.635384351484
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999956320
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000055648
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999988004
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.820626559254
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000020302
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999978289
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.999999999938
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     2.179372763405
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000043853
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999956346
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999999654
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.814757399199
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999979212
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000019855
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000003336
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.185242885111
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 5 4 6 1 4   2 5 3 6 1 4 2 5 3 6   1 1 4 5 3 6 2 1 3 5   4 6 2 9 7151412 811
                                       1013 1 5 3 4 6 2 9 7   8121514101311 5 3 4   6 2 1 9 71415 81213  1011 2 5 3 4 6 1 7 9
                                        8121415131011 2 3 5   4 6 1 2 3 5 6 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 1 3 2 4   6 810 7 9 5 1 3 2 2   3 1 3 2 1 2 3 1 4 6  10 8 5 7 9 1 2 3 6 4
                                        810 9 7 5 6 4 9 7 8  10 5 1 2 3 6 810 4 7   9 51114161321191715  201812 6 9 7 410 8 5
                                        1 2 3 6 4 9 7 510 8   3 1 2 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3253.60492     1  1  s    0.93297    1  2  s   -0.42222    1  3  s   -1.49679    1  4  s   -4.27076
                                    1  5  s    9.90678    1  6  s  -13.20179    1  7  s   -0.99156    1  8  s    2.24707
                                    1 10  s    6.75361    1 11  s    8.14132    1 12  s    2.33001
    2.1     2.00000  -587.69387     1  2  s    1.25928    1  3  s    0.91634    1  4  s    2.61431    1  5  s   -6.06295
                                    1  6  s    8.07906    1  7  s    0.60613    1  8  s   -1.37504    1 10  s   -4.13299
                                    1 11  s   -4.98222    1 12  s   -1.42588
    3.1     2.00000  -143.74840     1  3  s    0.46645    1  4  s   -1.52685    1  5  s    3.55939    1  6  s   -4.76225
                                    1  7  s   -0.35632    1  8  s    0.80153    1 10  s    2.43499    1 11  s    2.93740
                                    1 12  s    0.84024
    4.1     2.00000   -94.50282     1  1  d0   1.00003
    5.1     2.00000   -94.50282     1  1  d2-  1.00003
    6.1     2.00000   -94.50282     1  1  d2+  1.00003
    7.1     2.00000   -94.50282     1  1  d1+  1.00003
    8.1     2.00000   -94.50282     1  1  d1-  1.00003
    9.1     2.00000   -33.99227     1  3  s    0.28682    1  4  s    1.82862    1  5  s   -1.96198    1  6  s    2.65765
                                    1  8  s   -0.43151    1 10  s   -1.35666    1 11  s   -1.64035    1 12  s   -0.46838
   10.1     2.00000   -16.40995     1  2  d1+  0.99937
   11.1     2.00000   -16.40995     1  2  d0   0.99937
   12.1     2.00000   -16.40995     1  2  d2+  0.99937
   13.1     2.00000   -16.40995     1  2  d2-  0.99937
   14.1     2.00000   -16.40995     1  2  d1-  0.99937
   15.1     2.00000    -6.14648     1  4  s    0.38824    1  6  s    1.32171    1 10  s   -0.67325    1 11  s   -0.81865
   16.1     2.00000    -1.07794     1  3  d1+  1.00063
   17.1     2.00000    -1.07794     1  3  d0   1.00063
   18.1     2.00000    -1.07794     1  3  d2+  1.00063
   19.1     2.00000    -1.07794     1  3  d2-  1.00063
   20.1     2.00000    -1.07794     1  3  d1-  1.00063
   21.1     1.98529    -0.56307     1  5  s   -0.35930    1  6  s    1.52967    1 10  s   -0.27095    1 11  s   -0.32558
    1.2     2.00000  -506.35088     1  1  pz   0.99918
    2.2     2.00000  -506.35088     1  1  px   0.99918
    3.2     2.00000  -506.35088     1  1  py   0.99918
    4.2     2.00000  -119.96724     1  2  pz   1.00837
    5.2     2.00000  -119.96724     1  2  px   1.00837
    6.2     2.00000  -119.96724     1  2  py   1.00837
    7.2     2.00000   -26.03516     1  3  px   0.96639
    8.2     2.00000   -26.03516     1  3  pz   0.96639
    9.2     2.00000   -26.03516     1  3  py   0.96639
   10.2     2.00000    -5.83424     1  1  f1+  1.00002
   11.2     2.00000    -5.83424     1  1  f0   1.00002
   12.2     2.00000    -5.83424     1  1  f2-  1.00002
   13.2     2.00000    -5.83424     1  1  f2+  1.00002
   14.2     2.00000    -5.83424     1  1  f3+  1.00002
   15.2     2.00000    -5.83424     1  1  f3-  1.00002
   16.2     2.00000    -5.83424     1  1  f1-  1.00002
   17.2     2.00000    -3.84329     1  4  px   0.99597
   18.2     2.00000    -3.84329     1  4  pz   0.99597
   19.2     2.00000    -3.84329     1  4  py   0.99597
   20.2     0.67157    -0.06338     1  9  py   0.36544    1 10  py   0.53618
   21.2     0.67157    -0.06338     1  9  pz   0.36544    1 10  pz   0.53618
   22.2     0.67157    -0.06338     1  9  px   0.36544    1 10  px   0.53618
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa0         -0.00001308     -0.00010912      0.99631556
 2 a0a          0.99631555     -0.00020823      0.00001306
 2 0aa          0.00020823      0.99631554      0.00010912
 0 a2a         -0.08576296      0.00001792     -0.00000112
 0 aa2          0.00000113      0.00000939     -0.08576296
 0 2aa         -0.00001792     -0.08576296     -0.00000939
 
 Energy:   -20884.34586292 -20884.34586292 -20884.34586292
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020         -0.17506193     -0.00000125     -0.00001581      0.00010698      0.79442838
 2 002          0.77552613     -0.00003893      0.00001002      0.00000324     -0.24560612
 2 0ab         -0.00000501      0.00005860      0.70450149     -0.00001466      0.00001292
 2 0ba          0.00000501     -0.00005860     -0.70450149      0.00001466     -0.00001292
 2 b0a         -0.00003840     -0.70450149      0.00005860      0.00000009     -0.00000957
 2 a0b          0.00003840      0.70450149     -0.00005860     -0.00000009      0.00000957
 2 ba0          0.00003547     -0.00000010     -0.00001466     -0.70450149      0.00010268
 2 ab0         -0.00003547      0.00000010      0.00001466      0.70450149     -0.00010268
 2 200         -0.60046419      0.00004018      0.00000579     -0.00011022     -0.54882227
 0 202         -0.01506935     -0.00000011     -0.00000136      0.00000921      0.06838449
 0 220          0.06675738     -0.00000335      0.00000086      0.00000028     -0.02114180
 0 a2b         -0.00000331     -0.06064357      0.00000504      0.00000001     -0.00000082
 0 b2a          0.00000331      0.06064357     -0.00000504     -0.00000001      0.00000082
 0 2ab          0.00000043     -0.00000504     -0.06064357      0.00000126     -0.00000111
 0 2ba         -0.00000043      0.00000504      0.06064357     -0.00000126      0.00000111
 0 ba2         -0.00000305      0.00000001      0.00000126      0.06064357     -0.00000884
 0 ab2          0.00000305     -0.00000001     -0.00000126     -0.06064357      0.00000884
 0 022         -0.05168803      0.00000346      0.00000050     -0.00000949     -0.04724269
 
 Energy:   -20884.31179036 -20884.31179036 -20884.31179036 -20884.31179036 -20884.31179036
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      237.72       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.78       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        44.21     21.15      4.83     17.98
 REAL TIME  *        50.67 SEC
 DISK USED  *       239.63 MB (local),        1.98 GB (total)
 SF USED    *       486.39 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -20884.34586   2.0
    -20884.34586   2.0
    -20884.34586   2.0
    -20884.31179   6.0
    -20884.31179   6.0
    -20884.31179   6.0
    -20884.31179   6.0
    -20884.31179   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 82
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:     1565 conf     3135 CSFs
 N-1 el internal:     2088 conf     8736 CSFs
 N-2 el internal:     1034 conf     7798 CSFs

 Number of electrons in valence space:                     36
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          23 (  14   9 )
 Number of closed-shell orbitals:  16 (   6  10 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     152 (  78  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   1.22 sec, npass=  1  Memory used:   4.77 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.34586292
     2    -20884.34586292
     3    -20884.34586292

 Number of blocks in overlap matrix:  1005   Smallest eigenvalue:  0.74D-02
 Number of N-2 electron functions:    1170
 Number of N-1 electron functions:    8736

 Number of internal configurations:                 1566
 Number of singly external configurations:        663864
 Number of doubly external configurations:       6761520
 Total number of contracted configurations:      7426950
 Total number of uncontracted configurations:   45604858

 Diagonal Coupling coefficients finished.               Storage:   2138824 words, CPU-Time:      1.33 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2088822 words, CPU-time:      2.15 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.34586292     0.00000000    -1.28791124  0.40D-01  0.13D+00     5.63
    1     2     2     1.00000000     0.00000000-20884.34586292     0.00000000    -1.28779917  0.40D-01  0.13D+00     5.63
    1     3     3     1.00000000     0.00000000-20884.34586292     0.00000000    -1.28799849  0.40D-01  0.13D+00     5.63
    2     1     1     1.10063206    -0.98648074-20885.33234366    -0.98648074    -0.03019457  0.35D-02  0.21D-02    82.85
    2     2     2     1.10072151    -0.98637893-20885.33224185    -0.98637893    -0.03030362  0.35D-02  0.21D-02    82.85
    2     3     3     1.10077660    -0.98631384-20885.33217676    -0.98631384    -0.03037537  0.36D-02  0.21D-02    82.85
    3     1     1     1.08748068    -1.01436899-20885.36023191    -0.02788824    -0.00228904  0.49D-04  0.66D-04   160.12
    3     2     2     1.08747644    -1.01436714-20885.36023006    -0.02798821    -0.00228984  0.49D-04  0.66D-04   160.12
    3     3     3     1.08747400    -1.01436555-20885.36022847    -0.02805170    -0.00229054  0.49D-04  0.67D-04   160.12
    4     1     1     1.08731844    -1.01479069-20885.36065361    -0.00042171    -0.00035013  0.31D-04  0.24D-04   236.60
    4     2     2     1.08731455    -1.01478934-20885.36065226    -0.00042220    -0.00035209  0.31D-04  0.24D-04   236.60
    4     3     3     1.08731221    -1.01478819-20885.36065111    -0.00042265    -0.00035386  0.32D-04  0.24D-04   236.60
    5     1     1     1.08740456    -1.01506311-20885.36092603    -0.00027242    -0.00007422  0.27D-05  0.14D-05   312.35
    5     2     2     1.08740452    -1.01506310-20885.36092602    -0.00027376    -0.00007422  0.27D-05  0.14D-05   312.35
    5     3     3     1.08740444    -1.01506307-20885.36092599    -0.00027488    -0.00007419  0.27D-05  0.14D-05   312.35
    6     1     1     1.08737916    -1.01507719-20885.36094011    -0.00001408    -0.00000929  0.18D-05  0.46D-06   383.58
    6     2     2     1.08737912    -1.01507718-20885.36094010    -0.00001408    -0.00000931  0.18D-05  0.46D-06   383.58
    6     3     3     1.08737901    -1.01507715-20885.36094007    -0.00001408    -0.00000934  0.18D-05  0.46D-06   383.58
    7     1     1     1.08728505    -1.01508297-20885.36094589    -0.00000578    -0.00000887  0.23D-06  0.23D-06   457.93
    7     2     2     1.08728549    -1.01508297-20885.36094589    -0.00000579    -0.00000887  0.23D-06  0.23D-06   457.93
    7     3     3     1.08728595    -1.01508296-20885.36094588    -0.00000581    -0.00000888  0.24D-06  0.23D-06   457.93
    8     1     1     1.08726542    -1.01508469-20885.36094761    -0.00000172    -0.00000130  0.84D-07  0.52D-07   533.75
    8     2     2     1.08726565    -1.01508469-20885.36094761    -0.00000172    -0.00000131  0.85D-07  0.51D-07   533.75
    8     3     3     1.08726597    -1.01508469-20885.36094761    -0.00000173    -0.00000131  0.85D-07  0.51D-07   533.75
    9     1     1     1.08726543    -1.01508498-20885.36094790    -0.00000029    -0.00000040  0.55D-07  0.28D-07   609.37
    9     2     2     1.08726562    -1.01508498-20885.36094790    -0.00000029    -0.00000039  0.56D-07  0.28D-07   609.37
    9     3     3     1.08726587    -1.01508498-20885.36094790    -0.00000029    -0.00000039  0.56D-07  0.28D-07   609.37
   10     1     1     1.08726625    -1.01508521-20885.36094813    -0.00000023    -0.00000042  0.99D-08  0.12D-07   684.93
   10     2     2     1.08726632    -1.01508521-20885.36094813    -0.00000023    -0.00000042  0.10D-07  0.12D-07   684.93
   10     3     3     1.08726641    -1.01508521-20885.36094813    -0.00000023    -0.00000043  0.10D-07  0.12D-07   684.93
   11     1     1     1.08726630    -1.01508529-20885.36094821    -0.00000008    -0.00000006  0.50D-08  0.29D-08   760.79
   11     2     2     1.08726635    -1.01508529-20885.36094821    -0.00000008    -0.00000007  0.50D-08  0.29D-08   760.79
   11     3     3     1.08726641    -1.01508529-20885.36094821    -0.00000008    -0.00000007  0.50D-08  0.29D-08   760.79


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%   6.7%
 P   0.7%  32.6%  16.6%

 Initialization:   0.6%
 Other:           42.4%

 Total CPU:      760.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222222222//0           0.9559000  -0.0000000  -0.0000000
 22222222222222222/0/           0.0000000   0.9559000   0.0000000
 222222222222222220//           0.0000000  -0.0000000   0.9558999
 22222202222222222/2/          -0.0000000  -0.0744633  -0.0000000
 22222202222222222//2          -0.0744633   0.0000000   0.0000000
 222222022222222222//          -0.0000000   0.0000000  -0.0744633

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.958764
 2           0.958764   -0.000000   -0.000000
 3           0.000000    0.958764   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958764    0.000000    0.000000
 2           0.000000    0.958764   -0.000000
 3           0.000000   -0.000000    0.958764


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95876423 (fixed)   0.95879589 (relaxed)   0.95876423 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00055376   -0.00120389   -0.00162336
 Singles      0.01215365   -0.04717942   -0.05470794
 Pairs        0.07516098   -0.96670198   -0.95875399
 Total        1.08786839   -1.01508529   -1.01508529
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.34586292
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72341088
 One electron energy               -28575.37574696
 Two electron energy                 7690.01479876
 Virial quotient                       -0.63891638
 Correlation energy                    -1.01508529
 !MRCI STATE 1.1 Energy              -20885.3609482062    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.45014211 (Davidson, fixed reference)
 Cluster corrected energies        -20885.45006918 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.45014211 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45190527 (Pople, fixed reference)
 Cluster corrected energies        -20885.45182473 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45190527 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95876421 (fixed)   0.95879587 (relaxed)   0.95876421 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00055376   -0.00120389   -0.89024364
 Singles      0.01215369   -0.04717945   -0.05470797
 Pairs        0.07516098    0.00000000   -0.07013368
 Total        1.08786843   -0.04838334   -1.01508529
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.34586292
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72341316
 One electron energy               -28575.37574789
 Two electron energy                 7690.01479969
 Virial quotient                       -0.63891638
 Correlation energy                    -1.01508529
 !MRCI STATE 2.1 Energy              -20885.3609482061    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.45014216 (Davidson, fixed reference)
 Cluster corrected energies        -20885.45006923 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.45014216 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45190532 (Pople, fixed reference)
 Cluster corrected energies        -20885.45182479 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45190532 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95876418 (fixed)   0.95879584 (relaxed)   0.95876418 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00055376   -0.00120389   -0.89024353
 Singles      0.01215376   -0.04717951   -0.05470804
 Pairs        0.07516097    0.00000000   -0.07013371
 Total        1.08786849   -0.04838340   -1.01508529
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.34586292
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72341209
 One electron energy               -28575.37574634
 Two electron energy                 7690.01479813
 Virial quotient                       -0.63891638
 Correlation energy                    -1.01508529
 !MRCI STATE 3.1 Energy              -20885.3609482057    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.45014222 (Davidson, fixed reference)
 Cluster corrected energies        -20885.45006929 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.45014222 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45190539 (Pople, fixed reference)
 Cluster corrected energies        -20885.45182485 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45190539 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      237.72       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      174.96       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       815.61    771.38     21.15      4.83     17.98
 REAL TIME  *       851.89 SEC
 DISK USED  *       412.81 MB (local),        3.16 GB (total)
 SF USED    *         1.84 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -20885.45014211  AU                              
 SETTING HLSDIAG(2)     =    -20885.45014216  AU                              
 SETTING HLSDIAG(3)     =    -20885.45014222  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 82
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       12 conf       12 CSFs
 N elec internal:     1635 conf     2420 CSFs
 N-1 el internal:     2496 conf     6180 CSFs
 N-2 el internal:     1898 conf     6048 CSFs

 Number of electrons in valence space:                     36
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          23 (  14   9 )
 Number of closed-shell orbitals:  16 (   6  10 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     152 (  78  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.31179036
     2    -20884.31179036
     3    -20884.31179036
     4    -20884.31179036
     5    -20884.31179036

 Number of blocks in overlap matrix:  1581   Smallest eigenvalue:  0.22D-01
 Number of N-2 electron functions:    1711
 Number of N-1 electron functions:    6180

 Number of internal configurations:                 1248
 Number of singly external configurations:        469604
 Number of doubly external configurations:       9889472
 Total number of contracted configurations:     10360324
 Total number of uncontracted configurations:   35383412

 Diagonal Coupling coefficients finished.               Storage:   2627726 words, CPU-Time:      2.86 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2297705 words, CPU-time:      3.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.31179036    -0.00000000    -1.29796873  0.46D-01  0.14D+00     7.82
    1     2     2     1.00000000     0.00000000-20884.31179036     0.00000000    -1.29861321  0.46D-01  0.14D+00     7.82
    1     3     3     1.00000000     0.00000000-20884.31179036     0.00000000    -1.29902555  0.47D-01  0.14D+00     7.82
    1     4     4     1.00000000     0.00000000-20884.31179036     0.00000000    -1.29895371  0.46D-01  0.14D+00     7.82
    1     5     5     1.00000000     0.00000000-20884.31179036    -0.00000000    -1.29824077  0.46D-01  0.14D+00     7.82
    2     1     1     1.10582101    -0.98983187-20885.30162223    -0.98983187    -0.03214155  0.41D-02  0.25D-02   160.42
    2     2     2     1.10587584    -0.98974674-20885.30153710    -0.98974674    -0.03224854  0.41D-02  0.25D-02   160.42
    2     3     3     1.10608236    -0.98951629-20885.30130665    -0.98951629    -0.03250692  0.42D-02  0.25D-02   160.42
    2     4     4     1.10619975    -0.98938179-20885.30117215    -0.98938179    -0.03266182  0.42D-02  0.25D-02   160.42
    2     5     5     1.10629186    -0.98927823-20885.30106859    -0.98927823    -0.03277195  0.43D-02  0.25D-02   160.42
    3     1     1     1.09016995    -1.01962060-20885.33141096    -0.02978873    -0.00233449  0.63D-04  0.82D-04   299.10
    3     2     2     1.09017154    -1.01961761-20885.33140797    -0.02987087    -0.00233540  0.63D-04  0.83D-04   299.10
    3     3     3     1.09017833    -1.01961130-20885.33140166    -0.03009501    -0.00235630  0.64D-04  0.84D-04   299.10
    3     4     4     1.09017892    -1.01960847-20885.33139883    -0.03022668    -0.00235626  0.64D-04  0.85D-04   299.10
    3     5     5     1.09017746    -1.01960708-20885.33139744    -0.03032885    -0.00235618  0.65D-04  0.84D-04   299.10
    4     1     1     1.08993130    -1.02006614-20885.33185649    -0.00044553    -0.00043723  0.41D-04  0.36D-04   455.20
    4     2     2     1.08993235    -1.02006406-20885.33185442    -0.00044645    -0.00044112  0.41D-04  0.37D-04   455.20
    4     3     3     1.08993631    -1.02006138-20885.33185174    -0.00045008    -0.00044548  0.41D-04  0.37D-04   455.20
    4     4     4     1.08993625    -1.02005927-20885.33184963    -0.00045080    -0.00044920  0.41D-04  0.38D-04   455.20
    4     5     5     1.08993461    -1.02005808-20885.33184844    -0.00045100    -0.00045045  0.42D-04  0.38D-04   455.20
    5     1     1     1.08984278    -1.02040727-20885.33219762    -0.00034113    -0.00008136  0.41D-05  0.19D-05   603.91
    5     2     2     1.08984340    -1.02040719-20885.33219755    -0.00034313    -0.00008130  0.42D-05  0.19D-05   603.91
    5     3     3     1.08984696    -1.02040691-20885.33219727    -0.00034553    -0.00008269  0.42D-05  0.19D-05   603.91
    5     4     4     1.08984579    -1.02040689-20885.33219725    -0.00034762    -0.00008288  0.42D-05  0.19D-05   603.91
    5     5     5     1.08984704    -1.02040688-20885.33219724    -0.00034880    -0.00008281  0.42D-05  0.19D-05   603.91
    6     1     1     1.08979148    -1.02042327-20885.33221363    -0.00001601    -0.00001326  0.27D-05  0.78D-06   758.57
    6     2     2     1.08979235    -1.02042320-20885.33221356    -0.00001601    -0.00001338  0.28D-05  0.78D-06   758.57
    6     3     3     1.08979422    -1.02042316-20885.33221352    -0.00001625    -0.00001345  0.28D-05  0.79D-06   758.57
    6     4     4     1.08979506    -1.02042315-20885.33221351    -0.00001626    -0.00001347  0.28D-05  0.79D-06   758.57
    6     5     5     1.08979512    -1.02042314-20885.33221350    -0.00001626    -0.00001347  0.28D-05  0.79D-06   758.57
    7     1     1     1.08962012    -1.02043226-20885.33222262    -0.00000899    -0.00001077  0.27D-06  0.30D-06   912.46
    7     2     2     1.08962071    -1.02043223-20885.33222259    -0.00000904    -0.00001086  0.27D-06  0.30D-06   912.46
    7     3     3     1.08962167    -1.02043223-20885.33222259    -0.00000906    -0.00001092  0.28D-06  0.31D-06   912.46
    7     4     4     1.08962125    -1.02043222-20885.33222258    -0.00000907    -0.00001094  0.27D-06  0.31D-06   912.46
    7     5     5     1.08962230    -1.02043220-20885.33222256    -0.00000906    -0.00001100  0.28D-06  0.31D-06   912.46
    8     1     1     1.08959855    -1.02043421-20885.33222457    -0.00000195    -0.00000135  0.13D-06  0.80D-07  1061.45
    8     2     2     1.08959930    -1.02043421-20885.33222457    -0.00000197    -0.00000138  0.13D-06  0.82D-07  1061.45
    8     3     3     1.08959890    -1.02043421-20885.33222457    -0.00000198    -0.00000138  0.13D-06  0.83D-07  1061.45
    8     4     4     1.08959869    -1.02043421-20885.33222457    -0.00000198    -0.00000137  0.13D-06  0.81D-07  1061.45
    8     5     5     1.08959964    -1.02043420-20885.33222456    -0.00000200    -0.00000140  0.13D-06  0.83D-07  1061.45
    9     1     1     1.08959684    -1.02043457-20885.33222493    -0.00000036    -0.00000066  0.82D-07  0.46D-07  1219.25
    9     2     2     1.08959738    -1.02043457-20885.33222493    -0.00000036    -0.00000066  0.82D-07  0.47D-07  1219.25
    9     3     3     1.08959708    -1.02043457-20885.33222493    -0.00000036    -0.00000066  0.82D-07  0.47D-07  1219.25
    9     4     4     1.08959690    -1.02043457-20885.33222492    -0.00000036    -0.00000065  0.82D-07  0.46D-07  1219.25
    9     5     5     1.08959763    -1.02043456-20885.33222492    -0.00000036    -0.00000066  0.83D-07  0.47D-07  1219.25
   10     1     1     1.08959317    -1.02043490-20885.33222526    -0.00000033    -0.00000058  0.16D-07  0.17D-07  1378.47
   10     2     2     1.08959334    -1.02043490-20885.33222526    -0.00000033    -0.00000058  0.16D-07  0.17D-07  1378.47
   10     3     3     1.08959325    -1.02043490-20885.33222526    -0.00000033    -0.00000058  0.16D-07  0.17D-07  1378.47
   10     4     4     1.08959315    -1.02043490-20885.33222526    -0.00000033    -0.00000058  0.16D-07  0.17D-07  1378.47
   10     5     5     1.08959340    -1.02043490-20885.33222526    -0.00000034    -0.00000058  0.16D-07  0.17D-07  1378.47
   11     1     1     1.08959185    -1.02043500-20885.33222536    -0.00000010    -0.00000008  0.98D-08  0.48D-08  1511.61
   11     2     2     1.08959197    -1.02043500-20885.33222536    -0.00000010    -0.00000008  0.97D-08  0.48D-08  1511.61
   11     3     3     1.08959201    -1.02043500-20885.33222536    -0.00000010    -0.00000008  0.97D-08  0.49D-08  1511.61
   11     4     4     1.08959190    -1.02043500-20885.33222536    -0.00000010    -0.00000008  0.96D-08  0.49D-08  1511.61
   11     5     5     1.08959183    -1.02043500-20885.33222536    -0.00000010    -0.00000008  0.98D-08  0.47D-08  1511.61
   12     1     1     1.08959035    -1.02043503-20885.33222539    -0.00000002    -0.00000004  0.59D-08  0.28D-08  1644.41
   12     2     2     1.08959044    -1.02043503-20885.33222539    -0.00000002    -0.00000004  0.58D-08  0.28D-08  1644.41
   12     3     3     1.08959049    -1.02043503-20885.33222539    -0.00000002    -0.00000004  0.58D-08  0.29D-08  1644.41
   12     4     4     1.08959039    -1.02043503-20885.33222539    -0.00000002    -0.00000004  0.58D-08  0.29D-08  1644.41
   12     5     5     1.08959034    -1.02043503-20885.33222538    -0.00000002    -0.00000004  0.59D-08  0.28D-08  1644.41


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   3.8%
 P   0.9%  22.4%  19.8%

 Initialization:   0.4%
 Other:           52.4%

 Total CPU:     1644.4 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222222220/\          -0.0000000  -0.0000000   0.0000000   0.9547808   0.0000000
 22222222222222222/\0           0.0000000   0.9547808  -0.0000000   0.0000000  -0.0000000
 22222222222222222/0\           0.0000000   0.0000000   0.9547807  -0.0000000   0.0000000
 22222222222222222020          -0.1099825   0.0000000  -0.0000000  -0.0000000   0.7717783
 22222222222222222200           0.7233704  -0.0000000  -0.0000000   0.0000000  -0.2906414
 22222222222222222002          -0.6133885   0.0000000   0.0000000  -0.0000000  -0.4811364
 22222202222222222/2\          -0.0000000  -0.0000000  -0.0743431   0.0000000  -0.0000000
 22222202222222222/\2          -0.0000000  -0.0743430   0.0000000  -0.0000000   0.0000000
 222222022222222222/\           0.0000000   0.0000000  -0.0000000  -0.0743427  -0.0000000
 22222202222222222202          -0.0085637   0.0000000  -0.0000000  -0.0000000   0.0600934
 22222202222222222022           0.0563246  -0.0000000  -0.0000000   0.0000000  -0.0226306

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.896716    0.000000   -0.000000    0.000000   -0.336114
 2           0.000000    0.000000   -0.000000    0.957639    0.000000
 3           0.000000    0.957639    0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000    0.957639    0.000000   -0.000000
 5          -0.336114    0.000000    0.000000   -0.000000    0.896716

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957639   -0.000000   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.957639    0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.957639    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.957639   -0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.957639


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.89671612 (fixed)   0.95767075 (relaxed)   0.95763886 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00076759   -0.00171809   -1.20277441
 Singles      0.01340975   -0.04976522   -0.05818471
 Pairs        0.07624937    0.34008426    0.24052410
 Total        1.09042671    0.28860094   -1.02043503
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.31179036
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72539358
 One electron energy               -28575.28366230
 Two electron energy                 7689.95143691
 Virial quotient                       -0.63891547
 Correlation energy                    -1.02043503
 !MRCI STATE 1.1 Energy              -20885.3322253865    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42449997 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42442586 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42449997 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42694275 (Pople, fixed reference)
 Cluster corrected energies        -20885.42686012 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42694275 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95763881 (fixed)   0.95767071 (relaxed)   0.95763881 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00076760   -0.00171810   -0.89089246
 Singles      0.01340985   -0.04976529   -0.05818481
 Pairs        0.07624937   -0.00000000   -0.07135775
 Total        1.09042681   -0.05148338   -1.02043503
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.31179036
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72541925
 One electron energy               -28575.28374843
 Two electron energy                 7689.95152304
 Virial quotient                       -0.63891547
 Correlation energy                    -1.02043503
 !MRCI STATE 2.1 Energy              -20885.3322253854    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42450007 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42442596 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42450007 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42694286 (Pople, fixed reference)
 Cluster corrected energies        -20885.42686023 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42694286 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95763879 (fixed)   0.95767069 (relaxed)   0.95763879 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00076760   -0.00171810   -0.89089237
 Singles      0.01340990   -0.04976535   -0.05818488
 Pairs        0.07624936    0.00000000   -0.07135778
 Total        1.09042685   -0.05148344   -1.02043503
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.31179036
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72543089
 One electron energy               -28575.28376104
 Two electron energy                 7689.95153566
 Virial quotient                       -0.63891547
 Correlation energy                    -1.02043503
 !MRCI STATE 3.1 Energy              -20885.3322253854    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42450011 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42442600 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42450011 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42694291 (Pople, fixed reference)
 Cluster corrected energies        -20885.42686028 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42694291 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95763883 (fixed)   0.95767073 (relaxed)   0.95763883 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00076760   -0.00171810   -0.89089255
 Singles      0.01340978   -0.04976523   -0.05818475
 Pairs        0.07624938    0.00000000   -0.07135773
 Total        1.09042677   -0.05148333   -1.02043503
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.31179036
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72542366
 One electron energy               -28575.28376725
 Two electron energy                 7689.95154186
 Virial quotient                       -0.63891547
 Correlation energy                    -1.02043503
 !MRCI STATE 4.1 Energy              -20885.3322253851    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42450003 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42442591 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42450003 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42694282 (Pople, fixed reference)
 Cluster corrected energies        -20885.42686018 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42694282 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.89671612 (fixed)   0.95767075 (relaxed)   0.95763886 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00076760   -0.00171810   -0.05882451
 Singles      0.01340973   -0.04976521   -0.05818469
 Pairs        0.07624938   -0.90730929   -0.90342582
 Total        1.09042671   -0.95879259   -1.02043502
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.31179036
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72539145
 One electron energy               -28575.28367050
 Two electron energy                 7689.95144511
 Virial quotient                       -0.63891547
 Correlation energy                    -1.02043502
 !MRCI STATE 5.1 Energy              -20885.3322253841    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42449996 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42442585 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42449996 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42694275 (Pople, fixed reference)
 Cluster corrected energies        -20885.42686011 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42694275 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      237.72       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      575.34       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2501.03   1685.41    771.38     21.15      4.83     17.98
 REAL TIME  *      2610.95 SEC
 DISK USED  *       813.19 MB (local),        5.90 GB (total)
 SF USED    *         4.08 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =    -20885.42449997  AU                              
 SETTING HLSDIAG(5)     =    -20885.42450007  AU                              
 SETTING HLSDIAG(6)     =    -20885.42450011  AU                              
 SETTING HLSDIAG(7)     =    -20885.42450003  AU                              
 SETTING HLSDIAG(8)     =    -20885.42449996  AU                              


         HLSDIAG
    -20885.45014
    -20885.45014
    -20885.45014
    -20885.42450
    -20885.42450
    -20885.42450
    -20885.42450
    -20885.42450
                                                  

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

 Time for Seward_LS:     159.96 sec

       94136960. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    27008 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    159.96 sec, REAL time:    166.00 sec


 SORTLS1 read   110556387. and wrote   110556387. SO integrals in   434 records. CPU time:      1.10 sec, REAL time:      1.93 sec
 SORTLS2 read   110556387. and wrote   547794150. SO integrals in    21 records. CPU time:      1.97 sec, REAL time:      2.55 sec

 FILE SIZES: FILE 1:  2019.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2019.5 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1925.94       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      575.34       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2666.71    165.23   1685.41    771.38     21.15      4.83     17.98
 REAL TIME  *      2784.26 SEC
 DISK USED  *       813.41 MB (local),       11.42 GB (total)
 SF USED    *         4.08 GB
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
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies: -20885.360948 -20885.360948 -20885.360948
 Replaced energies: -20885.450142 -20885.450142 -20885.450142

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   5

 Original energies: -20885.332225 -20885.332225 -20885.332225 -20885.332225 -20885.332225
 Replaced energies: -20885.424500 -20885.424500 -20885.424500 -20885.424500 -20885.424500



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-20885.45014222

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.02       0.00       0.00       0.00   -4145.77      -0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00   -5863.00      -0.00       0.00      -0.00       0.00       0.00       0.00    3757.69

    2   2.1  1.0  1.0       0.00       0.01       0.00    4145.77      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00   -4145.76       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00   -4431.47
                         5863.00      -0.00       0.00       0.00    4145.76       0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00    4145.77       0.00       0.02       0.00       0.00       0.00   -4145.77      -0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

    5   2.1  1.0  0.0   -4145.77      -0.00       0.00       0.00       0.01       0.00    4145.77      -0.00      -0.00       0.00
                           -0.00      -0.00   -4145.76      -0.00       0.00       0.00      -0.00       0.00   -4145.76     952.84

    6   3.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00    4145.76      -0.00      -0.00      -0.00       0.00       0.00    4145.76       0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00    4145.77       0.00       0.02       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00    5863.00   -3757.69

    8   2.1  1.0 -1.0       0.00       0.00       0.00   -4145.77      -0.00       0.00       0.00       0.01       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00   -4145.76       0.00      -0.00      -0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00   -4431.47
                           -0.00      -0.00      -0.00       0.00    4145.76      -0.00   -5863.00       0.00      -0.00       0.00

   10   1.1  0.0  0.0      -0.00       0.00   -4431.47       0.00       0.00       0.00      -0.00       0.00   -4431.47    5627.82
                        -3757.69       0.00       0.00       0.00    -952.84      -0.00    3757.69      -0.00      -0.00       0.00

   11   2.1  0.0  0.0      -0.00    4135.83       0.00       0.00       0.00       0.00      -0.00    4135.83       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00   -5848.97      -0.00      -0.00      -0.00      -0.00

   12   3.1  0.0  0.0   -4135.83      -0.00       0.00       0.00       0.00       0.00   -4135.83      -0.00       0.00       0.00
                            0.00      -0.00    4135.84      -0.00      -0.00       0.00      -0.00       0.00   -4135.84      -0.00

   13   4.1  0.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00   -4135.84      -0.00   -5848.97       0.00       0.00       0.00    4135.84       0.00      -0.00

   14   5.1  0.0  0.0       0.00      -0.00    1780.52       0.00       0.00       0.00       0.00      -0.00    1780.52       0.00
                        -2947.52       0.00       0.00       0.00    6686.41       0.00    2947.52      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  1.0  1.0      -0.00   -4135.83       0.00       0.00
                           -0.00      -0.00       0.00    2947.52

    2   2.1  1.0  1.0    4135.83      -0.00       0.00      -0.00
                           -0.00       0.00    4135.84      -0.00

    3   3.1  1.0  1.0       0.00       0.00      -0.00    1780.52
                           -0.00   -4135.84       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00    5848.97      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00   -6686.41

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                         5848.97      -0.00      -0.00      -0.00

    7   1.1  1.0 -1.0      -0.00   -4135.83       0.00       0.00
                            0.00       0.00      -0.00   -2947.52

    8   2.1  1.0 -1.0    4135.83      -0.00       0.00      -0.00
                            0.00      -0.00   -4135.84       0.00

    9   3.1  1.0 -1.0       0.00       0.00      -0.00    1780.52
                            0.00    4135.84      -0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5627.80       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5627.79       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5627.81       0.00
                           -0.00      -0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5627.82
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by -20885.45014222 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.023       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.013       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000   -5862.996      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    5862.996       0.000    5862.998      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.023       0.000       0.000       0.000    5862.999
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.013       0.000   -5862.999       0.000
                               -0.000       0.000   -5862.996      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000    5862.996       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000   -5862.999      -0.000       0.023       0.000
                                0.000       0.000   -5862.998      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000    5862.999       0.000      -0.000       0.000       0.013
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             5862.998      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>              -0.000       0.000   -6267.047       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -952.835      -0.000   -5314.174       0.000

    2    1  |0 0>              -0.000    5848.952       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000   -5848.967       0.000       0.000

    3    1  |0 0>           -5848.952      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    4    1  |0 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -5848.967       0.000       0.000      -0.000   -5848.961

    5    1  |0 0>               0.000      -0.000    2518.038       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    6686.410       0.000   -4168.425       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |1 1>+              0.000      -0.000      -0.000   -5848.952       0.000       0.000
                            -5862.998       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000    5848.952      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   -6267.047       0.000       0.000      -0.000    2518.038
                                0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000    5848.967      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     952.835      -0.000       0.000      -0.000   -6686.410

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    5848.967      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    5314.174      -0.000      -0.000       0.000    4168.425

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000    5848.961      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000   -5848.960       0.000      -0.000

    1    1  |0 0>               0.000    5627.824       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5627.801       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5627.791       0.000       0.000
                             5848.960      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5627.811       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5627.824
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1-20885.50356973    -0.05342751   -11725.98      0.00000000        0.00      0.0000
    2-20885.47685596    -0.02671375    -5862.99      0.02671377     5862.99      0.7269
    3-20885.47685595    -0.02671373    -5862.99      0.02671378     5863.00      0.7269
    4-20885.47685593    -0.02671371    -5862.98      0.02671380     5863.00      0.7269
    5-20885.46165754    -0.01151532    -2527.32      0.04191219     9198.66      1.1405
    6-20885.46165750    -0.01151529    -2527.31      0.04191223     9198.67      1.1405
    7-20885.46165659    -0.01151437    -2527.11      0.04191314     9198.87      1.1405
    8-20885.46165657    -0.01151435    -2527.11      0.04191316     9198.88      1.1405
    9-20885.46165656    -0.01151434    -2527.11      0.04191317     9198.88      1.1405
   10-20885.38627192     0.06387029    14017.91      0.11729781    25743.89      3.1918
   11-20885.38627189     0.06387033    14017.92      0.11729784    25743.90      3.1918
   12-20885.38627181     0.06387041    14017.93      0.11729792    25743.92      3.1918
   13-20885.38627086     0.06387135    14018.14      0.11729887    25744.13      3.1919
   14-20885.38627079     0.06387143    14018.16      0.11729894    25744.14      3.1919

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000  0.00000000 -0.70710487 -0.00000000  0.00000000  0.00000000 -0.00000000  0.49643563
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.70710504 -0.00000000  0.00000000  0.00000000  0.00000000 -0.49643590 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.57735162 -0.00000000  0.00000000  0.00000000 -0.37430770  0.43391692 -0.00000000 -0.00000000
                           0.00000350  0.00000000  0.00000000 -0.00000000 -0.01424255  0.00055288 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.70710659  0.00000000 -0.00000000  0.00000001 -0.00000003

   2    1  |1 0>          -0.00000350  0.00000000  0.00000000 -0.00000000 -0.02140975 -0.00013689 -0.00000000  0.00000000
                           0.57734925 -0.00000000  0.00000000  0.00000000  0.56266871  0.10743589  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.70710852  0.00000000 -0.00000000  0.00000000  0.00000000 -0.49643075 -0.00000000

   1    1  |1 1>-         -0.00000350 -0.00000000 -0.00000000 -0.00000000  0.00716701  0.00068978  0.00000000 -0.00000000
                           0.57734994 -0.00000000  0.00000000  0.00000000 -0.18835580 -0.54135522 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.70710697  0.00000000 -0.00000000  0.00000001 -0.00000003

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.70710869  0.00000000  0.00000000  0.00000000 -0.00000000  0.49643049

   1    1  |0 0>           0.00000188 -0.00000000  0.00000000  0.00000000 -0.23064938  0.67366928  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00877629  0.00085837 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000269 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.71211510  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000244  0.00000000  0.00000000  0.00000000 -0.00000000  0.71211546
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000022 -0.00000000  0.00000000 -0.00000001  0.00000004
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000231  0.00000000  0.00000000  0.00000000  0.67318266  0.23081646  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.02561485  0.00029410  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |1 1>+         -0.00000003 -0.50354182  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000001  0.00000000  0.50354132 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.58124566 -0.01452379
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00378688  0.00009285

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.49643326 -0.00000000  0.00000000  0.50354174  0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00197538 -0.00317157
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.30320040 -0.49611134

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00000000  0.50354151 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00181149  0.00326443
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.27804409  0.51063624

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.49643322 -0.00000000  0.00000000  0.50354125  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000003 -0.50354152  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.64469169  0.27792919
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00420024 -0.00177676

   2    1  |0 0>           0.00000001  0.00000000  0.70206274 -0.00000001  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000004  0.70206237 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.71211522 -0.00000000  0.00000001  0.70206262  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.27792925  0.64469197
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00181074 -0.00412143


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1 -20885.50356973     -0.05342751   -11725.98      0.00000000        0.00      0.0000
     2   1 -20885.47685596     -0.02671375    -5862.99      0.02671377     5862.99      0.7269
     3   1 -20885.47685595     -0.02671373    -5862.99      0.02671378     5863.00      0.7269
     4   1 -20885.47685593     -0.02671371    -5862.98      0.02671380     5863.00      0.7269
     5   1 -20885.46165754     -0.01151532    -2527.32      0.04191219     9198.66      1.1405
     6   1 -20885.46165750     -0.01151529    -2527.31      0.04191223     9198.67      1.1405
     7   1 -20885.46165659     -0.01151437    -2527.11      0.04191314     9198.87      1.1405
     8   1 -20885.46165657     -0.01151435    -2527.11      0.04191316     9198.88      1.1405
     9   1 -20885.46165656     -0.01151434    -2527.11      0.04191317     9198.88      1.1405
    10   1 -20885.38627192      0.06387029    14017.91      0.11729781    25743.89      3.1918
    11   1 -20885.38627189      0.06387033    14017.92      0.11729784    25743.90      3.1918
    12   1 -20885.38627181      0.06387041    14017.93      0.11729792    25743.92      3.1918
    13   1 -20885.38627086      0.06387135    14018.14      0.11729887    25744.13      3.1919
    14   1 -20885.38627079      0.06387143    14018.16      0.11729894    25744.14      3.1919

 E0 = -20885.45014222 is the energy of the lowest zeroth-order state
 E1 = -20885.50356973 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000  0.00000000 -0.70710487 -0.00000000  0.00000000  0.00000000 -0.00000000  0.49643563
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.70710504 -0.00000000  0.00000000  0.00000000  0.00000000 -0.49643590 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.57735162 -0.00000000  0.00000000  0.00000000 -0.37430770  0.43391692 -0.00000000 -0.00000000
                                0.00000350  0.00000000  0.00000000 -0.00000000 -0.01424255  0.00055288 -0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.70710659  0.00000000 -0.00000000  0.00000001 -0.00000003

  5  1     2    1  |1 0>       -0.00000350  0.00000000  0.00000000 -0.00000000 -0.02140975 -0.00013689 -0.00000000  0.00000000
                                0.57734925 -0.00000000  0.00000000  0.00000000  0.56266871  0.10743589  0.00000000 -0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.70710852  0.00000000 -0.00000000  0.00000000  0.00000000 -0.49643075 -0.00000000

  7  1     1    1  |1 1>-      -0.00000350 -0.00000000 -0.00000000 -0.00000000  0.00716701  0.00068978  0.00000000 -0.00000000
                                0.57734994 -0.00000000  0.00000000  0.00000000 -0.18835580 -0.54135522 -0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.70710697  0.00000000 -0.00000000  0.00000001 -0.00000003

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.70710869  0.00000000  0.00000000  0.00000000 -0.00000000  0.49643049

 10  1     1    1  |0 0>        0.00000188 -0.00000000  0.00000000  0.00000000 -0.23064938  0.67366928  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00877629  0.00085837 -0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000269 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.71211510  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000244  0.00000000  0.00000000  0.00000000 -0.00000000  0.71211546
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000022 -0.00000000  0.00000000 -0.00000001  0.00000004
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000231  0.00000000  0.00000000  0.00000000  0.67318266  0.23081646  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.02561485  0.00029410  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |1 1>+      -0.00000003 -0.50354182  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000001  0.00000000  0.50354132 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.58124566 -0.01452379
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00378688  0.00009285

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.49643326 -0.00000000  0.00000000  0.50354174  0.00000000  0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00197538 -0.00317157
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.30320040 -0.49611134

  6  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00000000  0.50354151 -0.00000000  0.00000000 -0.00000000

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00181149  0.00326443
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.27804409  0.51063624

  8  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.49643322 -0.00000000  0.00000000  0.50354125  0.00000000  0.00000000

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000003 -0.50354152  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.64469169  0.27792919
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00420024 -0.00177676

 11  1     2    1  |0 0>        0.00000001  0.00000000  0.70206274 -0.00000001  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000004  0.70206237 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>        0.71211522 -0.00000000  0.00000001  0.70206262  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.27792925  0.64469197
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00181074 -0.00412143



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   24.64%
  2  1     2    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   24.64%    0.00%
  3  1     3    1  |1 1>+        33.33%    0.00%    0.00%    0.00%   14.03%   18.83%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>         33.33%    0.00%    0.00%    0.00%   31.71%    1.15%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   24.64%    0.00%
  7  1     1    1  |1 1>-        33.33%    0.00%    0.00%    0.00%    3.55%   29.31%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   24.64%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    5.33%   45.38%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.71%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.71%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   45.38%    5.33%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |1 1>+         0.00%   25.36%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%   25.36%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.79%    0.02%
  4  1     1    1  |1 0>         24.64%    0.00%    0.00%   25.36%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    9.19%   24.61%
  6  1     3    1  |1 0>          0.00%    0.00%   25.36%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    7.73%   26.08%
  8  1     2    1  |1 1>-        24.64%    0.00%    0.00%   25.36%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%   25.36%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   41.56%    7.72%
 11  1     2    1  |0 0>          0.00%    0.00%   49.29%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%   49.29%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>         50.71%    0.00%    0.00%   49.29%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    7.72%   41.56%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1925.94       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      575.34       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3511.68    844.96    165.23   1685.41    771.38     21.15      4.83     17.98
 REAL TIME  *      3670.74 SEC
 DISK USED  *       813.41 MB (local),       11.42 GB (total)
 SF USED    *         4.08 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-DK3 energy= -20885.386270787898

              CI              CI           MULTI         RHF-SCF
 -20885.33222538 -20885.36094821 -20884.31179036 -20884.11985862
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
