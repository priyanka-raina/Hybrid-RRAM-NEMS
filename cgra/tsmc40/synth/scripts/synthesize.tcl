
# Set up technology libs
source -echo -verbose ../../scripts/saed32_setup.tcl

set design_name $::env(DESIGN)
set report_dir ./reports

sh mkdir -p $report_dir

define_design_lib WORK -path ./WORK


# Read in the RTL
# Currently expects rtl to be at EE272_flow/rtl (feel free to change this)
# read_file automatically performs both analyze and elaborate
read_file -top $design_name -autoread [glob -directory ../../../rtl -type f *.v *.sv]
current_design $design_name

# Look at link libs to resolve any cell references in the RTL
link

### PLACE YOUR DESIGN CONSTRAINTS HERE
# If you want to use this script to synthesize multiple designs
# with different constraints, you can create a contraints script
# for each of the designs and use the commentd line below
# source -verbose "../../scripts/constraints_${design_name}.tcl"




### END DESIGN CONSTRAINTS
check_design > $report_dir/$design_name.chk1

report_compile_options

compile_ultra -gate_clock              -scan -no_seq_output_inversion -no_autoungroup 
compile_ultra -gate_clock -incremental -scan -no_seq_output_inversion -no_autoungroup 

uniquify -force -dont_skip_empty_designs

check_design > $report_dir/$design_name.chk2

report_timing -in -net -transition_time  -capacitance  -significant_digits  4 -attributes  -nosplit -path full_clock -delay max -nworst 1 -max_paths 10 > $report_dir/$design_name.time

# Write synthesized verilog
write -format verilog -hierarchy -output ./$design_name.sv
# write_milkyway -overwrite -output $design_name
# write design reports (timing, area, power)
report_qor > $report_dir/$design_name.qor.rpt
report_power > $report_dir/$design_name.power.top.rpt
report_area -hierarchy > $report_dir/$design_name.area.rpt
report_power -hierarchy -levels 3 >  $report_dir/$design_name.power.rpt
#export design database
write -format ddc -hier -out ./$design_name.ddc;

quit

