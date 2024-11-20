" Vim syntax file
" Language:    UPF
" Description: UPF is an extension of tcl. Please refer to 'https://www.p1801.org/'
"              for further info. This syntax file is copied from vim's builtin tcl
"              syntax file and extended further 
" Maintainer:  Soumendu Ghorui <soumendu@verific.com>
" URL:		


" -------------------------
" Version check
" -------------------------
if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif
" -------------------------

" -------------------------
" Source all the syntax defined in 'tcl_main.vim' file
" -------------------------
source <sfile>:h/tcl_common.vim

" -------------------------
" Place script genearted part under this region
" -------------------------

" ------------------- GENERATED REGION START ----------------------------
" UPF-1.0 commands
syn keyword upfKeyWord        contained add_domain_elements add_port_state skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained add_pst_state bind_checker connect_supply_net skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained create_hdl2upf_vct create_power_domain skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained create_power_switch create_pst skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained create_supply_net create_supply_port skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained create_upf2hdl_vct get_supply_net skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained load_upf map_isolation_cell map_level_shifter_cell skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained map_power_switch map_retention_cell skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained merge_power_domains name_format skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained save_upf set_design_top set_domain_supply_net skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained set_isolation set_isolation_control skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained set_level_shifter set_pin_related_supply skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained set_power_switch set_related_supply_net skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained set_retention set_retention_control skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained set_scope upf_version skipwhite nextgroup=tclPred


" UPF-2.0 commands
syn keyword upfKeyWord        contained add_power_state associate_supply_set skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained connect_logic_net connect_supply_set skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained create_composite_domain create_logic_net skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained create_logic_port create_supply_set skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained describe_state_transition find_objects skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained load_simstate_behavior load_upf_protected skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_associate_supply_set query_bind_checker skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_cell_instances query_cell_mapped skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_composite_domain query_design_attributes skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_hdl2upf_vct query_isolation skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_isolation_control query_level_shifter skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_map_isolation_cell query_map_level_shifter_cell skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_map_power_switch query_map_retention_cell skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_name_format query_net_ports skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_partial_on_translation query_pin_related_supply skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_port_attributes query_port_direction skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_port_net query_port_state skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_power_domain query_power_domain_element skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_power_state query_power_switch skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_pst query_pst_state query_retention skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_retention_control query_retention_elements skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_simstate_behavior query_state_transition skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_supply_net query_supply_port skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_supply_set query_upf query_upf2hdl_vct skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained query_use_interface_cell set_design_attributes skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained set_partial_on_translation set_port_attributes skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained set_retention_elements set_simstate_behavior skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained use_interface_cell skipwhite nextgroup=tclPred


" UPF-2.1 commands
syn keyword upfKeyWord        contained apply_power_model begin_power_model skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained define_always_on_cell define_diode_clamp skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained define_isolation_cell define_level_shifter_cell skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained define_power_switch_cell define_retention_cell skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained end_power_model set_equivalent skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained set_repeater skipwhite nextgroup=tclPred


" UPF-3.0 commands
syn keyword upfKeyWord        contained add_parameter add_state_transition skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained add_supply_state create_power_state_group skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained map_repeater_cell set_correlated skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained set_variation upf_object_in_class skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained upf_query_object_pathname upf_query_object_properties skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained upf_query_object_type skipwhite nextgroup=tclPred


" UPF-3.1 commands
syn keyword upfKeyWord        contained define_power_model sim_assertion_control skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained sim_corruption_control sim_replay_control skipwhite nextgroup=tclPred


" UPF-4.0 commands
syn keyword upfKeyWord        contained create_abstract_power_source create_upf_library skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained create_vcm load_upf_library map_retention_clamp_cell skipwhite nextgroup=tclPred
syn keyword upfKeyWord        contained use_upf_library skipwhite nextgroup=tclPred


" UPF-1.0 options
syn keyword upfOption contained      all_equivalent applies_to assert_r_mutex
syn keyword upfOption contained      assert_rs_mutex assert_s_mutex
syn keyword upfOption contained      cells clamp_value elements error_state
syn keyword upfOption contained      hdl_type include_scope input_supply_port
syn keyword upfOption contained      isolation_ground_net isolation_power_net
syn keyword upfOption contained      isolation_prefix isolation_suffix
syn keyword upfOption contained      level_shift_prefix level_shift_suffix
syn keyword upfOption contained      lib_cell_type lib_cells lib_model_name
syn keyword upfOption contained      module no_isolation no_shift object_list
syn keyword upfOption contained      on_partial_state output_supply_port
syn keyword upfOption contained      pg_type pins port ports power_domains
syn keyword upfOption contained      primary_ground_net primary_power_net
syn keyword upfOption contained      pst rail_connection related_ground_pin
syn keyword upfOption contained      related_power_pin resolve retention_ground_net
syn keyword upfOption contained      retention_power_net reuse rule
syn keyword upfOption contained      scope state supplies table threshold
syn keyword upfOption contained      vct version


" UPF-2.0 options
syn keyword upfOption contained      all applies_to_clamp applies_to_sink_off_clamp
syn keyword upfOption contained      applies_to_source_off_clamp arch
syn keyword upfOption contained      attribute bind_to conn connect
syn keyword upfOption contained      define_func_type detailed diff_supply_only
syn keyword upfOption contained      direction domains driver_supply
syn keyword upfOption contained      element exact exclude_domains exclude_elements
syn keyword upfOption contained      exclude_ports expand file force_function
syn keyword upfOption contained      force_isolation force_shift from
syn keyword upfOption contained      full_on_tools function handle ignore_case
syn keyword upfOption contained      illegal implicit_logic_prefix implicit_logic_suffix
syn keyword upfOption contained      implicit_supply_prefix implicit_supply_suffix
syn keyword upfOption contained      inst_type internal_supply_set inverter_supply_set
syn keyword upfOption contained      is_supply isolation_sense isolation_signal
syn keyword upfOption contained      isolation_supply_set leaf leaf_only
syn keyword upfOption contained      legal lib location map models name_prefix
syn keyword upfOption contained      name_suffix no_elements no_retention
syn keyword upfOption contained      non_leaf object object_type off_tools
syn keyword upfOption contained      paired params pattern receiver_supply
syn keyword upfOption contained      reference_gnd regexp related_bias_ports
syn keyword upfOption contained      related_ground_port related_power_port
syn keyword upfOption contained      repeater_supply restore_condition
syn keyword upfOption contained      restore_signal retention_condition
syn keyword upfOption contained      retention_purpose retention_supply_set
syn keyword upfOption contained      save_condition save_signal simstate
syn keyword upfOption contained      simulation_only sink sink_off_clamp
syn keyword upfOption contained      source source_off_clamp strategy
syn keyword upfOption contained      subdomains to transitive update
syn keyword upfOption contained      update_any use_retention_as_primary


" UPF-2.1 options
syn keyword upfOption contained      always_on_components always_on_pins
syn keyword upfOption contained      atomic aux_enables available_supplies
syn keyword upfOption contained      bypass_enable cell_type clamp_cell
syn keyword upfOption contained      complete data_pins domain enable
syn keyword upfOption contained      feedthrough for function_only gate_bias_pin
syn keyword upfOption contained      ground ground_input_voltage_range
syn keyword upfOption contained      ground_output_voltage_range ground_switchable
syn keyword upfOption contained      hold_check input_ground_pin input_power_pin
syn keyword upfOption contained      input_voltage_range is_leaf_cell
syn keyword upfOption contained      is_macro_cell isolated_pins multi_stage
syn keyword upfOption contained      no_enable non_dedicated output_ground_pin
syn keyword upfOption contained      output_power_pin output_voltage_range
syn keyword upfOption contained      pin_groups power power_switchable
syn keyword upfOption contained      reconnect repeater_supply_set restore_check
syn keyword upfOption contained      restore_function retention_check
syn keyword upfOption contained      save_check save_function stage_1_enable
syn keyword upfOption contained      stage_1_output stage_2_enable stage_2_output
syn keyword upfOption contained      supply supply_map unconnected use_equivalence
syn keyword upfOption contained      valid_location


" UPF-3.0 options
syn keyword upfOption contained      applies_to_boundary class default
syn keyword upfOption contained      description group hide_globals
syn keyword upfOption contained      instance is_analog is_hard_macro
syn keyword upfOption contained      is_isolated is_soft_macro literal_supply
syn keyword upfOption contained      model nets parameters property
syn keyword upfOption contained      range relative_to sets switch_cell_type
syn keyword upfOption contained      switch_type transition type


" UPF-3.1 options
syn keyword upfOption contained      boundary_supplies control_expr
syn keyword upfOption contained      controlling_domain interchangeable
syn keyword upfOption contained      port_map traverse_macros use_functional_equivalence


" UPF-4.0 options
syn keyword upfOption contained      ack_delay ack_polarity ack_port
syn keyword upfOption contained      async_clamp_lib_cells clock_clamp_lib_cells
syn keyword upfOption contained      contents control_port conversion_direction
syn keyword upfOption contained      field input_supply_set off_state
syn keyword upfOption contained      on_state output_supply_set power_switch
syn keyword upfOption contained      supply_set vcms virtual


" ------------------- GENERATED REGION END   ----------------------------

" -------------------------
" Write manual modifications for
" enabling UPF syntax under this region
" -------------------------

TCLHiLink upfKeyWord                 tclKeyword
TCLHiLink upfOption                  tclOption

" -------------------------
" Cleanup:
" -------------------------
delcommand TCLHiLink
delfunction tcl_common#pred_w_switches
delfunction tcl_common#pred_w_subcmd

" -------------------------
" Hoodage:
" -------------------------

let b:current_syntax = "upf"
" override the sync commands from the other syntax files
syn sync clear
" syn sync minlines=300
syn sync fromstart

" -------------------------

" vim:ft=vim
