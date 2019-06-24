* 
 .TITLE in_cap

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


*Data Sweep for the measurement
.data in_cap t_n12849a08_start t_n12849a08_end tStop 
+ t_n12849a08_0 v_n12849a08_0 t_n12849a08_1 v_n12849a08_1 
+ 
+    0.0p 4000.0p 4000.0p 
+  5.000p  0.000 338.333p  0.500 
+ 
+    0.0p 4000.0p 4000.0p 
+  5.000p  0.500 338.333p  0.000 
+ 
.enddata

vn12849188 n12849188 0   0.50
vn12849158 n12849158 0   0.00

vn12849a08 n12849a08 0 PWL t_n12849a08_0 v_n12849a08_0 t_n12849a08_1 v_n12849a08_1 

*Measurement Constructs
.meas tran i_n12849a08 AVG i(vn12849a08) from=t_n12849a08_start to=t_n12849a08_end

.tran 10p tStop sweep data=in_cap

.end
