.title <test_nem_3T.sp>

** Lumped 3T NEM relay device parameters **
.param Vpi=0.8 Vpo=0.2 rch=1E3 tdmec=1E-9 Cgson=2E-17 Cgsoff=1.5E-17

** Sweep parameters **
.param vsweep_max=1
.param vsrc1=1mV vsrc2=500mV

** Create 3T NEM relay (choose a model) **
.hdl nem_relay_3T.va
Xnem gnd Vg Vsrc NEM_3T Vpi=Vpi Vpo=Vpo rch=rch tdmec=tdmec Cgson=Cgson Cgsoff=Cgsoff

** Sweep voltage over 2 source voltages **
Vsrc Vsrc gnd PWL(0s vsrc1 2s vsrc1 2.001s vsrc2 4s vsrc2)
Vg Vg gnd PWL(0s 0V 1s vsweep_max 2s 0V 3s vsweep_max 4s 0V)

** Generate I-V plot **
.tran 1ms 4s
.probe V(Vg) V(Vsrc) PAR('abs(I(Vsrc))') PAR('V(Vg,Vsrc)') PAR('abs(V(Vg,Vsrc))')
.option post=2
.option runlvl=5 accurate delmax=1ms

.end
