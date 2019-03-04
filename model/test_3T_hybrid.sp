.title <test_3T_hybrid.sp>

.hdl rram_simple.va
.hdl nem_relay_3T.va

** TFR device parameters **
.param tfr=3.5E7 tc1=1/6000 dtemp=25

** NEM relay device parameters **
.param Vpi=4 Vpo=2 rch=1E3 tdmec=1E-9 Cgson=2E-17 Cgsoff=1.5E-17

** RRAM parameters (IEDM 2014, HfO2) **
.param vset=5.9V vrst=-5.9V rl=1E7 rh=1E8 on_i=0

** Operational parameters **
.param Vrcopy=5 Vccopy=3.07
.param Vrhold=3.5
.param Vrset=14 Vcset=-13
.param Vrrst=-14 Vcrst=13

** Create hybrid design (choose models) **
Rtfr Vrow Vg R=tfr tc1=tc1 dtemp=dtemp
Xrram Vg Vcol RRAM Vset=vset Vrst=vrst Rl=rl Rh=rh on_i=on_i
Xnem gnd Vg Vsrc NEM_3T Vpi=Vpi Vpo=Vpo rch=rch tdmec=tdmec Cgson=Cgson Cgsoff=Cgsoff

** Test time trace **
.include test_row_col_tt.sp

** Option 1: do not float Vsrc during SET/RESET
Vsrc Vsrc gnd   PWLZ(0s 0   3s 0    3.1s 1  5s 1    5.1s 0  8s 0    8.1s 1  10s 1   10.1s 0 11s 0)

** Option 2: float Vsrc during SET/RESET
* Vsrc Vsrc gnd   PWLZ(0s 0 1s z    2.1s 0  3s 0    3.1s 1  5s 1    5.1s 0  6s z    7.1s 0  8s 0    8.1s 1  10s 1   10.1s 0 11s 0)

** Generate data **
.tran 10ms 11s
.probe V(Vrow) V(Vcol) V(Vg) V(Vsrc) PAR('abs(I(Vsrc))') PAR('abs(V(Vg,Vsrc))') V(Vg,Vcol)
.option post=2
.option runlvl=5 accurate delmax=10ms

.end