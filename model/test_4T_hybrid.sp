.title <test_4T_hybrid.sp>

.hdl rram_simple.va
.hdl nem_relay_4T.va

** TFR device parameters **
.param tfr=16000 tc1=1/6000 dtemp=25

** NEM relay device parameters **
.param Vpi=0.8 Vpo=0.2 rch=1E3 tdmec=1E-9 Cgbon=2E-17 Cgboff=1.5E-17

** RRAM parameters **
.param vset=0.7V vrst=-0.6V rl=2E4 rh=2E5 on_i=0

** Operational parameters **
.param Vrcopy=0.9444444 Vccopy=0.4555556 Vbcopy=0
.param Vrhold=0.5 Vbhold=0
.param Vrset1=0.77 Vcset1=0
.param Vrset2=1.2 Vcset2=0
.param Vrrst1=0 Vcrst1=0.77
.param Vrrst2=0 Vcrst2=1.2

** Create hybrid design (choose models) **
Xrram1 Vrow Vcol RRAM Vset=vset Vrst=vrst Rl=rl Rh=rh on_i=on_i
Xrram2 Vg Vcol RRAM Vset=vset Vrst=vrst Rl=rl Rh=rh on_i=on_i
Xnem gnd Vg Vsrc Vb NEM_4T Vpi=Vpi Vpo=Vpo rch=rch tdmec=tdmec Cgbon=Cgbon Cgboff=Cgboff

** Test time trace **
Vsrc Vsrc gnd   1V
Vrow Vrow gnd   PWLZ(0s 0   1s 0    1.1s Vrset1 1.5s Vrset2 2s Vrset2   2.1s 0  3s 0    3.1s Vrcopy 4s Vrcopy   4.1s Vrhold 5s Vrhold   5.1s 0  6s 0    6.1s Vrrst1 6.5s Vrrst2 7s Vrrst2   7.1s 0  8s 0    8.1s Vrcopy 9s Vrcopy   9.1s Vrhold 10s Vrhold  10.1s 0 11s 0)
Vcol Vcol gnd   PWLZ(0s 0   1s 0    1.1s Vcset1 1.5s Vcset2 2s Vcset2   2.1s 0  3s 0    3.1s Vccopy 4s Vccopy   4.1s z      5s z        5.1s 0  6s 0    6.1s Vcrst1 6.5s Vcrst2 7s Vcrst2   7.1s 0  8s 0    8.1s Vccopy 9s Vccopy   9.1s z      10s z       10.1s 0 11s 0)
Vb   Vb   gnd   0V

** Generate data **
.tran 1ms 11s
.probe V(Vrow) V(Vcol) V(Vg) V(Vb) V(Vsrc) PAR('abs(I(Vsrc))') PAR('abs(V(Vg,Vb))') V(Vg,Vb) V(Vg,Vcol)
.option post=2
.option runlvl=5 accurate delmax=1ms
.option method=bdf

.end