.title <test_4T_hybrid_xbar.sp>

.hdl rram_simple.va
.hdl nem_relay_4T.va

** NEM relay device parameters **
.param Vpi=0.8 Vpo=0.2 rch=1E3 tdmec=1E-9 Cgbon=2E-17 Cgboff=1.5E-17

** RRAM parameters **
.param vset=0.7V vrst=-0.6V rl=2E4 rh=2E5

** Operational parameters **
.param Vrcopy=0.9444444 Vccopy=0.4555556 Vbcopy=0
.param Vrhold=0.5 Vbhold=0
.param Vrset1=0.77 Vcset1=0
.param Vrset2=1.2 Vcset2=0
.param Vrrst1=0 Vcrst1=0.77
.param Vrrst2=0 Vcrst2=1.2

** Create hybrid design **
.subckt PSwitch Vrow Vcol Vsrc Vdrn
Xrram1 Vrow Vg RRAM Vset=vset Vrst=vrst Rl=rl Rh=rh on_i=0
Xrram2 Vcol Vg RRAM Vset=vset Vrst=vrst Rl=rl Rh=rh on_i=1
Xnem Vdrn Vg Vsrc gnd NEM_4T Vpi=Vpi Vpo=Vpo rch=rch tdmec=tdmec Cgbon=Cgbon Cgboff=Cgboff
.ends PSwitch

** Create 3x3 crossbar array of programmable switches **
Xpswitch1 Vrow1 Vcol1 Vsrc1 gnd PSwitch
Xpswitch2 Vrow1 Vcol2 Vsrc2 gnd PSwitch
Xpswitch3 Vrow1 Vcol3 Vsrc3 gnd PSwitch
Xpswitch4 Vrow2 Vcol1 Vsrc4 gnd PSwitch
Xpswitch5 Vrow2 Vcol2 Vsrc5 gnd PSwitch
Xpswitch6 Vrow2 Vcol3 Vsrc6 gnd PSwitch
Xpswitch7 Vrow3 Vcol1 Vsrc7 gnd PSwitch
Xpswitch8 Vrow3 Vcol2 Vsrc8 gnd PSwitch
Xpswitch9 Vrow3 Vcol3 Vsrc9 gnd PSwitch

** Test time trace **
Vsrc5 Vsrc5 gnd   1V
Vrow5 Vrow5 gnd   PWLZ(0s 0   1s 0    1.1s Vrset1 1.5s Vrset2 2s Vrset2   2.1s 0  3s 0    3.1s Vrcopy 4s Vrcopy   4.1s Vrhold 5s Vrhold   5.1s 0  6s 0    6.1s Vrrst1 6.5s Vrrst2 7s Vrrst2   7.1s 0  8s 0    8.1s Vrcopy 9s Vrcopy   9.1s Vrhold 10s Vrhold  10.1s 0 11s 0)
Vcol5 Vcol5 gnd   PWLZ(0s 0   1s 0    1.1s Vcset1 1.5s Vcset2 2s Vcset2   2.1s 0  3s 0    3.1s Vccopy 4s Vccopy   4.1s z      5s z        5.1s 0  6s 0    6.1s Vcrst1 6.5s Vcrst2 7s Vcrst2   7.1s 0  8s 0    8.1s Vccopy 9s Vccopy   9.1s z      10s z       10.1s 0 11s 0)

** Generate data **
.tran 1ms 11s
.probe PAR('abs(I(Vsrc1))') PAR('abs(I(Vsrc2))') PAR('abs(I(Vsrc3))') PAR('abs(I(Vsrc4))') PAR('abs(I(Vsrc5))') PAR('abs(I(Vsrc6))') PAR('abs(I(Vsrc7))') PAR('abs(I(Vsrc8))') PAR('abs(I(Vsrc9))')
.option post=2
.option runlvl=5 accurate delmax=1ms
.option method=bdf

.end