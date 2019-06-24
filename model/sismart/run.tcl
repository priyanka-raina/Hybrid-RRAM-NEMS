set cells {DUALRRAM INVX1} #NEM4T
set charpoint devicetest
create $charpoint 
set_log_file $charpoint/sis.log

exec cp configure.tcl ${charpoint}/config/configure.tcl
exec cp control/DUALRRAM.inst ${charpoint}/control/DUALRRAM.inst
exec cp control/NEM4T.inst ${charpoint}/control/NEM4T.inst
set_location  $charpoint 

#FR with just netlists
import -fast -extension .cdl -netlist_dir netlists/ $cells

#FR + Liberty input
#import -fast -extension .cdl -netlist_dir netlists/ -liberty import.lib -recognize $cells

exit

configure -fast -timing -power -ccs $cells
characterize $cells

model -verilog -output my_model $cells
model -timing -power -output nldm $cells
model -timing -power -ccs -output ccs $cells

log_info "IAMDONE"
