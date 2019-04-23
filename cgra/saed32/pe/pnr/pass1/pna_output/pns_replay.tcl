# reset
set_fp_rail_constraints -remove_all_layers
remove_fp_virtual_pad -all              
set_fp_rail_strategy -reset             
set_fp_block_ring_constraints -remove_all
set_fp_rail_region_constraints  -remove 
# global constraints
set_fp_rail_constraints -set_global 

# layer constraints
set_fp_rail_constraints -add_layer  -layer M9 -direction horizontal -max_pitch 30.400000 -min_pitch 2.432000 -max_width 5.000000 -min_width 3.000000 -spacing minimum 
set_fp_rail_constraints -add_layer  -layer M8 -direction vertical -max_pitch 30.400000 -min_pitch 2.432000 -max_width 5.000000 -min_width 3.000000 -spacing minimum 

# ring and strap constraints
set_fp_rail_constraints  -set_ring -nets { VDD VSS } -horizontal_ring_layer { M9 } -vertical_ring_layer { MRDL } -extend_strap core_ring 

# strategies
set_fp_rail_strategy  -use_tluplus true 

# block ring constraints

# regions

# virtual pads

# synthesize_fp_rail 
synthesize_fp_rail -nets { VDD VSS } -voltage_supply 1.200000 -power_budget 100.000000  -create_virtual_rails M1 -use_strap_ends_as_pads  
