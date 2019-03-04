.title <test_3T_hybrid.sp>

.hdl rram_simple.va
.hdl nem_relay_3T.va

** TFR device parameters **
.param tfr=2E8/7 tc1=1/6000 dtemp=25

** NEM relay device parameters **
.param Vpi=4 Vpo=2 rch=1E3 tdmec=1E-9 Cgson=2E-17 Cgsoff=1.5E-17

** RRAM parameters (IEDM 2014, HfO2) **
.param vset=6V vrst=-6V rl=1E7 rh=1E8 on_i=0

** Operational parameters **
.param Vrcopy=4.92857 Vccopy=3
.param Vrhold=3.5
.param Vrset=78/7 Vcset=-12
.param Vrrst=-78/7 Vcrst=12

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
.tran 1ms 12s
.probe V(Vrow) V(Vcol) V(Vg) V(Vsrc) PAR('abs(I(Vsrc))') PAR('abs(V(Vg,Vsrc))') V(Vg,Vcol)
.option post=2
.option runlvl=5 accurate delmax=1ms

.end