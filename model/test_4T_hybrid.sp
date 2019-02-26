.title <test_4T_hybrid.sp>

.hdl rram_simple.va
.hdl nem_relay_4T.va

** TFR device parameters **
.param tfr=63245.5532 tc1=1/6000 dtemp=25 tnom=25

** NEM relay device parameters **
.param Vpi=0.8 Vpo=0.2 rch=1E3 tdmec=1E-9 Cgson=2E-17 Cgsoff=1.5E-17

** RRAM parameters (IEDM 2014, HfO2) **
.param vset=3V vrst=-3V rl=2E4 rh=2E5 on_i=0

** Operational parameters **
.param Vrcopy=1.6 Vccopy=0 Vbcopy=0
.param Vrhold=1 Vchold=Z Vbcopy=0
.param Vrset=6 Vcset=0 Vbset=0
.param Vrrst=-6 Vcrst=0 Vbrst=0

** Create hybrid design (choose models) **
Rtfr Vrow Vg R=tfr tc1=tc1 dtemp=dtemp tnom=tnom
Xrram Vg Vcol RRAM Vset=vset Vrst=vrst Rl=rl Rh=rh on_i=on_i
Xnem gnd Vg Vsrc Vb NEM_4T Vpi=Vpi Vpo=Vpo rch=rch tdmec=tdmec Cgson=Cgson Cgsoff=Cgsoff

** Test time trace: COPY->HOLD->OFF->SET->OFF->COPY->HOLD->OFF->RESET->OFF->COPY->HOLD **
Vsrc Vsrc gnd 1V
Vb Vb gnd       PWLZ(0s Vbcopy  1s Vbcopy   1.001s Vbhold   2s Vbhold   2.001s 0    3s 0    3.001s Vbset    4s Vbset    4.001s 0    5s 0    5.001s Vbcopy   6s Vbcopy   6.001s Vbhold   7s Vbhold   7.001s 0    8s 0    8.001s Vbrst    9s Vbrst    9.001s 0    10s 0   10.001s Vbcopy  11s Vbcopy  11.001s Vbhold  12s Vbhold)
Vrow Vrow gnd   PWLZ(0s Vrcopy  1s Vrcopy   1.001s Vrhold   2s Vrhold   2.001s 0    3s 0    3.001s Vrset    4s Vrset    4.001s 0    5s 0    5.001s Vrcopy   6s Vrcopy   6.001s Vrhold   7s Vrhold   7.001s 0    8s 0    8.001s Vrrst    9s Vrrst    9.001s 0    10s 0   10.001s Vrcopy  11s Vrcopy  11.001s Vrhold  12s Vrhold)
Vcol Vcol gnd   PWLZ(0s Vccopy  1s Vccopy   1.001s Vchold   2s Vchold   2.001s 0    3s 0    3.001s Vcset    4s Vcset    4.001s 0    5s 0    5.001s Vccopy   6s Vccopy   6.001s Vchold   7s Vchold   7.001s 0    8s 0    8.001s Vcrst    9s Vcrst    9.001s 0    10s 0   10.001s Vccopy  11s Vccopy  11.001s Vchold  12s Vchold)

** Generate I-V plot **
.tran 1ms 12s
.probe V(Vrow) V(Vcol) V(Vg) V(Vb) V(Vsrc) PAR('abs(I(Vsrc))') PAR('abs(V(Vg,Vb))') PAR('V(Vg,Vb)')
.option post=2
.option runlvl=5 accurate delmax=1ms

.end