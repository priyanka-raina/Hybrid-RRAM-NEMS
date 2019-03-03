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

** Test time trace: OFF->COPY->HOLD->OFF->SET->OFF->COPY->HOLD->OFF->RESET->OFF->COPY->HOLD **
Vsrc Vsrc gnd   1V
* Vb Vb gnd       PWLZ(0s 0   0.1s Vbcopy   1s Vbcopy   1.1s Vbhold   2s Vbhold   2.1s 0    3s z    3.1s z        4s z        4.1s 0    5s 0    5.1s Vbcopy   6s Vbcopy   6.1s Vbhold   7s Vbhold   7.1s 0    8s z    8.1s z        9s z        9.1s 0    10s 0   10.1s Vbcopy  11s Vbcopy  11.1s Vbhold  12s Vbhold)
Vb Vb gnd 0V
Vrow Vrow gnd   PWLZ(0s 0   0.1s Vrcopy   1s Vrcopy   1.1s Vrhold   2s Vrhold   2.1s 0    3s 0    3.1s Vrset    4s Vrset    4.1s 0    5s 0    5.1s Vrcopy   6s Vrcopy   6.1s Vrhold   7s Vrhold   7.1s 0    8s 0    8.1s Vrrst    9s Vrrst    9.1s 0    10s 0   10.1s Vrcopy  11s Vrcopy  11.1s Vrhold  12s Vrhold)
Vcol Vcol gnd   PWLZ(0s 0   0.1s Vccopy   1s Vccopy   1.1s z        2s 0        2.1s 0    3s 0    3.1s Vcset    4s Vcset    4.1s 0    5s 0    5.1s Vccopy   6s Vccopy   6.1s z        7s 0        7.1s 0    8s 0    8.1s Vcrst    9s Vcrst    9.1s 0    10s 0   10.1s Vccopy  11s Vccopy  11.1s z       12s 0     )

** Generate I-V plot **
.tran 1ms 12s
.probe V(Vrow) V(Vcol) V(Vg) V(Vb) V(Vsrc) PAR('abs(I(Vsrc))') PAR('abs(V(Vg,Vb))') V(Vg,Vb) V(Vg,Vcol)
.option post=2
.option runlvl=5 accurate delmax=1ms

.end