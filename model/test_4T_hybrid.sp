.title <test_4T_hybrid.sp>

.hdl rram_simple.va
.hdl nem_relay_4T.va

** TFR device parameters **
.param tfr=16000 tc1=1/6000 dtemp=25

** NEM relay device parameters **
.param Vpi=0.8 Vpo=0.2 rch=1E3 tdmec=1E-9 Cgbon=2E-17 Cgboff=1.5E-17

** RRAM parameters (IEDM 2014, HfO2) **
.param vset=2.9V vrst=-2.9V rl=2E4 rh=2E5 on_i=0

** Operational parameters **
.param Vrcopy=0.94 Vccopy=0.4 Vbcopy=0
.param Vrhold=0.5 Vbhold=0
.param Vrset=7/5 Vcset=-4 Vbset=0
.param Vrrst=-7/5 Vcrst=4

** Create hybrid design (choose models) **
Rtfr Vrow Vg R=tfr tc1=tc1 dtemp=dtemp
Xrram Vg Vcol RRAM Vset=vset Vrst=vrst Rl=rl Rh=rh on_i=on_i
Xnem gnd Vg Vsrc Vb NEM_4T Vpi=Vpi Vpo=Vpo rch=rch tdmec=tdmec Cgbon=Cgbon Cgboff=Cgboff

** Test time trace **
.include test_row_col_tt.sp
Vsrc Vsrc gnd 1V
Vb Vb gnd 0V
* Vb Vb gnd       PWLZ(0s 0   1s z    1.1s z      2s z        2.1s 0    3s 0    3.1s Vbcopy   4s Vbcopy   4.1s Vbhold   5s Vbhold   5.1s 0    6s z    6.1s z        7s z        7.1s 0    8s 0   8.1s Vbcopy  9s Vbcopy  9.1s Vbhold  10s Vbhold  10.1s 0 11s 0)

** Generate data **
.tran 1ms 12s
.probe V(Vrow) V(Vcol) V(Vg) V(Vb) V(Vsrc) PAR('abs(I(Vsrc))') PAR('abs(V(Vg,Vb))') V(Vg,Vb) V(Vg,Vcol)
.option post=2
.option runlvl=5 accurate delmax=1ms

.end