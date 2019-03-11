.title <test_4T_hybrid_xbar.sp>

.hdl 4T_hybrid_xbar.va

** Crossbar parameters **
.param nrows=3 ncols=3

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

** Create crossbar array **
Xxbar Vrow1 Vrow2 Vrow3 Vcol1 Vcol2 Vcol3 Vsrc1 Vsrc2 Vsrc3 Vsrc4 Vsrc5 Vsrc6 Vsrc7 Vsrc8 Vsrc9 gnd gnd gnd gnd gnd gnd gnd gnd gnd Hybrid_4T_Xbar Vpi=Vpi Vpo=Vpo rch=rch tdmec=tdmec Cgbon=Cgbon Cgboff=Cgboff Vset=vset Vrst=vrst Rl=rl Rh=rh on_i=1 nrows=nrows ncols=ncols

** Test time trace **
Vsrc1 Vsrc1 gnd   1V
Vsrc2 Vsrc2 gnd   1V
Vsrc3 Vsrc3 gnd   1V
Vsrc4 Vsrc4 gnd   1V
Vsrc5 Vsrc5 gnd   1V
Vsrc6 Vsrc6 gnd   1V
Vsrc7 Vsrc7 gnd   1V
Vsrc8 Vsrc8 gnd   1V
Vsrc9 Vsrc9 gnd   1V
Vrow2 Vrow2 gnd   PWLZ(0s 0   1s 0    1.1s Vrset1 1.5s Vrset2 2s Vrset2   2.1s 0  3s 0    3.1s Vrcopy 4s Vrcopy   4.1s Vrhold 5s Vrhold   5.1s 0  6s 0    6.1s Vrrst1 6.5s Vrrst2 7s Vrrst2   7.1s 0  8s 0    8.1s Vrcopy 9s Vrcopy   9.1s Vrhold 10s Vrhold  10.1s 0 11s 0)
Vcol2 Vcol2 gnd   PWLZ(0s 0   1s 0    1.1s Vcset1 1.5s Vcset2 2s Vcset2   2.1s 0  3s 0    3.1s Vccopy 4s Vccopy   4.1s z      5s z        5.1s 0  6s 0    6.1s Vcrst1 6.5s Vcrst2 7s Vcrst2   7.1s 0  8s 0    8.1s Vccopy 9s Vccopy   9.1s z      10s z       10.1s 0 11s 0)

** Generate data **
.tran 1ms 11s
.probe V(Vrow) V(Vcol) V(Vg) V(Vb) V(Vsrc) PAR('abs(I(Vsrc))') PAR('abs(V(Vg,Vb))') V(Vg,Vb) V(Vrow,Vg) V(Vg,Vcol)
.option post=2
.option runlvl=5 accurate delmax=1ms
.option method=bdf

.end