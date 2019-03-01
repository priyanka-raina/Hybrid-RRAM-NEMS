.title <test_rram.sp>

** Filamentary RRAM parameters (IEDM 2014, HfO2) **
* .param vsweep_min=-4V vsweep_max=4V vset=3V vrst=-3V rl=2E4 rh=2E5 on_i=0

** Non-filamentary RRAM parameters (VLSI 2015, a-Si/TiO2) **
* .param vsweep_min=-8V vsweep_max=8V vset=6V vrst=-6V rl=1E7 rh=1E8 on_i=0

** Real RRAM parameters **
.param vsweep_min=-2V vsweep_max=2V

** Create RRAM (choose a model) **
* .hdl rram_simple.va
* Xrram Vte gnd RRAM Vset=vset Vrst=vrst Rl=rl Rh=rh on_i=on_i
* .hdl rram_v_1_0_0.va
* Xrram Vte gnd rram_v_1_0_0
.hdl rram_v_2_0.va
Xrram Vte gnd RRAM_v_2_0_Beta
* .hdl rram_analytical.va
* Xrram Vte gnd ReRAM_analytical
* .hdl rram_numerical.va
* Xrram Vte gnd ReRAM_num

** Sweep voltage (bipolar mode) **
Vte Vte gnd 0V PWL(0s 0V 1ms vsweep_max 3ms vsweep_min 4ms 0V)

** Generate butterfly curve **
.tran 1us 4ms
.probe V(Vte) PAR('abs(I(Vte))') PAR('-I(Vte)')
.option post=2
.option runlvl=5 accurate delmax=1us

.end
