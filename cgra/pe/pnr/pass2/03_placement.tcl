set_preferred_routing_direction -layers {M1 M3 M5 M7 M9} -direction horizontal
set_preferred_routing_direction -layers {M2 M4 M6 M8 MRDL} -direction vertical

report_clock
report_clock -skew

check_physical_constraints

check_physical_design -stage pre_place_opt

place_opt

derive_pg_connection -power_net $MW_POWER_NET -ground_net $MW_GROUND_NET -power_pin $MW_POWER_PORT -ground_pin $MW_GROUND_PORT

save_mw_cel -as "${design_name}_place.CEL"
