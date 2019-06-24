* 
 .TITLE delay

*Global Nodes
.GLOBAL n12849188 n12849158 

*Include the netlist
.inc '/home/akashl/Hybrid-RRAM-NEMS/model/sismart/devicetest/runtime/fr/fr.r6cad-tsmc40r.stanford.edu.19246/rundir/clusters_0_99999/cluster_0_deck_short.sp'

*Include the spice model files
.inc ' /home/akashl/Hybrid-RRAM-NEMS/model/sismart/devicetest/runtime/fr/netlists/INVX1.cdl.model'

* Temperature 
.temp   25.0

*Spice Options
.option autostop 

.options nomod

*Data Sweep for the measurement
.data delay tStart tStop 
+ l_n12849a20 h_n12849a20 s_n12849a20 
+ t_n12849a08_0 v_n12849a08_0 t_n12849a08_1 v_n12849a08_1 
+ 
+    0.0p 4000.0p 
+  0.100  0.400  0.250 
+  5.000p  0.500 338.333p  0.000 
+ 
+    0.0p 4000.0p 
+  0.100  0.400  0.250 
+  5.000p  0.000 338.333p  0.500 
+ 
.enddata

vn12849188 n12849188 0   0.50
vn12849158 n12849158 0   0.00

vn12849a08 n12849a08 0 PWL t_n12849a08_0 v_n12849a08_0 t_n12849a08_1 v_n12849a08_1 

*Measurement Constructs
.meas tran vl_n12849a20 when v(n12849a20)=l_n12849a20  td=tStart cross=1
.meas tran vh_n12849a20 when v(n12849a20)=h_n12849a20  td=tStart cross=1
.meas tran vs_n12849a20 when v(n12849a20)=s_n12849a20  td=tStart cross=1


.tran 10p tStop sweep data=delay

.end
