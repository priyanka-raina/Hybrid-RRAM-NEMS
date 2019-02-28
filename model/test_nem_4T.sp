.title <test_nem_4T.sp>

** Lumped 4T NEM relay device parameters **
.param Vpi=0.8 Vpo=0.2 rch=1E3 tdmec=1E-9 Cgbon=2E-17 Cgboff=1.5E-17

** Sweep parameters **
.param vsweep_max=1
.param vsrc1=1mV vsrc2=500mV

** Create 4T NEM relay (choose a model) **
.hdl nem_relay_4T.va
Xnem gnd Vg Vsrc gnd NEM_4T Vpi=Vpi Vpo=Vpo rch=rch tdmec=tdmec Cgbon=Cgbon Cgboff=Cgboff

** Sweep voltage over 2 source voltages **
Vsrc Vsrc gnd PWL(0s vsrc1 2s vsrc1 2.001s vsrc2 4s vsrc2)
Vg Vg gnd PWL(0s 0V 1s vsweep_max 2s 0V 3s vsweep_max 4s 0V)

** Generate I-V plot **
.tran 1ms 4s
.probe V(Vg) V(Vsrc) PAR('abs(I(Vsrc))')
.option post=2
.option runlvl=5 accurate delmax=1ms

.end
