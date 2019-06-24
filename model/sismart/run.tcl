set cells {DUALRRAM_ON DUALRRAM_OFF INVX1}
set charpoint devicetest
create $charpoint 
set_log_file $charpoint/sis.log

# Copy functional definitions
exec cp control/DUALRRAM_ON.inst ${charpoint}/control/DUALRRAM_ON.inst
exec cp control/DUALRRAM_OFF.inst ${charpoint}/control/DUALRRAM_OFF.inst
exec cp control/NEM4T_ON.inst ${charpoint}/control/NEM4T_ON.inst
exec cp control/NEM4T_OFF.inst ${charpoint}/control/NEM4T_OFF.inst

# Copy Verilog-A models
exec cp netlists/rram_simple.va ${charpoint}/netlists/rram_simple.va
exec cp netlists/nem_relay_4T.va ${charpoint}/netlists/nem_relay_4T.va

exec cp configure.tcl ${charpoint}/config/configure.tcl
set_location  $charpoint 

#FR with just netlists
import -fast -extension .cdl -netlist_dir netlists/ $cells

#FR + Liberty input
#import -fast -extension .cdl -netlist_dir netlists/ -liberty import.lib -recognize $cells

#exit

configure -fast -timing -power -ccs $cells
characterize $cells

model -verilog -output my_model $cells
model -timing -power -output nldm $cells
model -timing -power -ccs -output ccs $cells

log_info "IAMDONE"
