.title <test_3T_hybrid.sp>

.hdl rram_simple.va
.hdl nem_relay_3T.va

** TFR device parameters **
.param tfr=3.1622E7 tc1=1/6000 dtemp=25

** NEM relay device parameters **
.param Vpi=4 Vpo=2 rch=1E3 tdmec=1E-9 Cgson=2E-17 Cgsoff=1.5E-17

** RRAM parameters (IEDM 2014, HfO2) **
.param vset=6V vrst=-6V rl=1E7 rh=1E8 on_i=0

** Operational parameters **
.param Vrcopy=7 Vccopy=0
.param Vrhold=3.5
.param Vrset=12 Vcset=0
.param Vrrst=-30 Vcrst=0

** Create hybrid design (choose models) **
Rtfr Vrow Vg R=tfr tc1=tc1 dtemp=dtemp
Xrram Vg Vcol RRAM Vset=vset Vrst=vrst Rl=rl Rh=rh on_i=on_i
Xnem gnd Vg Vsrc NEM_3T Vpi=Vpi Vpo=Vpo rch=rch tdmec=tdmec Cgson=Cgson Cgsoff=Cgsoff

** Test time trace: OFF->COPY->HOLD->OFF->SET->OFF->COPY->HOLD->OFF->RESET->OFF->COPY->HOLD **
Vsrc Vsrc gnd 1V
Vrow Vrow gnd   PWLZ(0s 0   0.1s Vrcopy   1s Vrcopy   1.1s Vrhold   2s Vrhold   2.1s 0    3s 0    3.1s Vrset    4s Vrset    4.1s 0    5s 0    5.1s Vrcopy   6s Vrcopy   6.1s Vrhold   7s Vrhold   7.1s 0    8s 0    8.1s Vrrst    9s Vrrst    9.1s 0    10s 0   10.1s Vrcopy  11s Vrcopy  11.1s Vrhold  12s Vrhold)
Vcol Vcol gnd   PWLZ(0s 0   0.1s Vccopy   1s Vccopy   1.1s z        2s 0        2.1s 0    3s 0    3.1s Vcset    4s Vcset    4.1s 0    5s 0    5.1s Vccopy   6s Vccopy   6.1s z        7s 0        7.1s 0    8s 0    8.1s Vcrst    9s Vcrst    9.1s 0    10s 0   10.1s Vccopy  11s Vccopy  11.1s z       12s 0     )

** Generate I-V plot **
.tran 1ms 12s
.probe V(Vrow) V(Vcol) V(Vg) V(Vsrc) PAR('abs(I(Vsrc))') PAR('abs(V(Vg,Vsrc))')
.option post=2

.end