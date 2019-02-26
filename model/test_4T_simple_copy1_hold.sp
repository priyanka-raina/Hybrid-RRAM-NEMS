.title <test_4T_simple_copy1_hold.sp>

.hdl tfr.va
.hdl simple_rram.va
.hdl nem_relay_4T.va

** COPY **
Vin Vi 0 DC 10m
Vout Vo 0 DC 0
Vrow Vr 0 DC 5
Vcol Vc 0 DC 0
Xtfr Vr Vg TFR R0=2000
Xnem Vo Vi Vg 0 NEM_4T
Xrram Vg Vcol 

.tran 0.1ns 100ns
.print V(Vi) V(Vg) PAR('I(Vin)')

** HOLD **
Vrow Vr 0 DC 1
Rfloat Vi 0 10000000

.tran 0.1ns 100ns
.print V(Vi) V(Vg) PAR('I(Vin)')

.end
