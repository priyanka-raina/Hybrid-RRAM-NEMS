if { [catch {
set_location /home/akashl/Hybrid-RRAM-NEMS/model/sismart/devicetest
set_log_file /var/tmp/sis.akashl.[pid].log
set_log_level info
set_log_stdout_level info
set jobName [lindex $argv 0]

# Parameter block and pintype definitions.  The following definitions
# preserve any (pintype) parameters set outside of the configure.tcl file.
define_parameters default {
    set PLACEHOLDER X
}

define_parameters liberty_model {
    set default_cell_leakage_power 0.0
    set default_fanout_load 1.0
    set default_inout_pin_cap 1.0
    set default_input_pin_cap 1.0
    set default_leakage_power_density 0.0
    set default_output_pin_cap 0.0
    set delay_model table_lookup
    set in_place_swap_mode match_footprint
}

pintype default {
    set PLACEHOLDER X
}

# Liberty attributes set by user
# Liberty groups added by the user
# Liberty attributes cleared by user

#Operating conditions

create_operating_condition op_cond_all
add_opc_supplies op_cond_all vb 0.5 vdd 1.1
add_opc_grounds op_cond_all gnd 0.0

## 
## User-specified characterization and modeling configuration options.
## 

create_parameter combine_timing_and_power
set_config_opt -- combine_timing_and_power 1

create_parameter default_combine_timing_and_power
set_config_opt -- default_combine_timing_and_power 1

create_parameter is_char_mode
set_config_opt -- is_char_mode 1

create_parameter pureRecharFlow
set_config_opt -- pureRecharFlow 0

create_parameter rechar_mode
set_config_opt -- rechar_mode 0

create_parameter simulator_version_info
set_config_opt -- simulator_version_info M-2017.03-SP2

create_parameter state_partitions
set_config_opt -cell INVX1 -type ID_CAPLOAD -from A -from_direction LH -to Y\
    -to_direction HL -reference - -- state_partitions one
set_config_opt -cell INVX1 -type ID_CAPLOAD -from A -from_direction HL -to Y\
    -to_direction LH -reference - -- state_partitions one

} err ] } {

# Connect back to the server to send err message.
startCdplWorker $err
exit 0
} else {

# Connect back to the server to retrieve the jobs.
startCdplWorker "" 
log_info "CDPL worker exited normally."
if { [catch {exec mv -f /var/tmp/sis.akashl.[pid].log /home/akashl/Hybrid-RRAM-NEMS/model/sismart/devicetest/runtime/cdpl/sis.W$::env(CDPL_WORKERID).[get_hostname].[pid].log} mv_err] } {
  log_warning $mv_err
}
set_log_file /home/akashl/Hybrid-RRAM-NEMS/model/sismart/devicetest/runtime/cdpl/sis.W$::env(CDPL_WORKERID).[get_hostname].[pid].log
exit 0
}
