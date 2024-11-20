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




call tcl_common#pred_w_switches('add_domain_elements', '', '"-\(elements\)\>"')
call tcl_common#pred_w_switches('add_parameter', '', '"-\(type\|default\|description\)\>"')
call tcl_common#pred_w_switches('add_port_state', '', '"-\(state\)\>"')
call tcl_common#pred_w_switches('add_power_state', '', '"-\(supply\|domain\|group\|model\|instance\|state\|simstate\|legal\|illegal\|complete\|update\)\>"')
call tcl_common#pred_w_switches('add_pst_state', '', '"-\(pst\|state\)\>"')
call tcl_common#pred_w_switches('add_state_transition', '', '"-\(supply\|domain\|group\|model\|instance\|update\|transition\|complete\)\>"')
call tcl_common#pred_w_switches('add_supply_state', '', '"-\(state\)\>"')
call tcl_common#pred_w_switches('apply_power_model', '', '"-\(elements\|supply_map\|port_map\|parameters\)\>"')
call tcl_common#pred_w_switches('associate_supply_set', '', '"-\(handle\)\>"')
call tcl_common#pred_w_switches('begin_power_model', '', '"-\(for\)\>"')
call tcl_common#pred_w_switches('bind_checker', '', '"-\(module\|elements\|ports\|bind_to\|arch\)\>"')
call tcl_common#pred_w_switches('connect_logic_net', '', '"-\(ports\|reconnect\)\>"')
call tcl_common#pred_w_switches('connect_supply_net', '', '"-\(ports\|pg_type\|vct\|cells\|domain\|pins\|rail_connection\|elements\)\>"')
call tcl_common#pred_w_switches('connect_supply_set', '', '"-\(connect\|elements\|exclude_elements\|transitive\)\>"')
call tcl_common#pred_w_switches('create_abstract_power_source', '', '"-\(output_supply_set\|input_supply_set\|control_port\|on_state\|off_state\|supply_set\|ack_port\|ack_delay\|ack_polarity\|power_switch\|update\)\>"')
call tcl_common#pred_w_switches('create_composite_domain', '', '"-\(subdomains\|supply\|update\)\>"')
call tcl_common#pred_w_switches('create_hdl2upf_vct', '', '"-\(hdl_type\|table\)\>"')
call tcl_common#pred_w_switches('create_logic_net', '', '')
call tcl_common#pred_w_switches('create_logic_port', '', '"-\(direction\)\>"')
call tcl_common#pred_w_switches('create_power_domain', '', '"-\(elements\|include_scope\|scope\|exclude_elements\|simulation_only\|supply\|define_func_type\|update\|atomic\|available_supplies\|boundary_supplies\)\>"')
call tcl_common#pred_w_switches('create_power_switch', '', '"-\(domain\|output_supply_port\|input_supply_port\|control_port\|on_state\|on_partial_state\|ack_port\|ack_delay\|off_state\|error_state\|supply_set\|instance\|update\|switch_type\)\>"')
call tcl_common#pred_w_switches('create_power_state_group', '', '')
call tcl_common#pred_w_switches('create_pst', '', '"-\(supplies\)\>"')
call tcl_common#pred_w_switches('create_supply_net', '', '"-\(domain\|reuse\|resolve\|virtual\)\>"')
call tcl_common#pred_w_switches('create_supply_port', '', '"-\(domain\|direction\|virtual\)\>"')
call tcl_common#pred_w_switches('create_supply_set', '', '"-\(function\|reference_gnd\|update\|virtual\)\>"')
call tcl_common#pred_w_switches('create_upf2hdl_vct', '', '"-\(hdl_type\|table\)\>"')
call tcl_common#pred_w_switches('create_upf_library', '', '"-\(contents\)\>"')
call tcl_common#pred_w_switches('create_vcm', '', '"-\(table\|hdl_type\|conversion_direction\|field\|function\|model\|parameters\|vcms\)\>"')
call tcl_common#pred_w_switches('define_always_on_cell', '', '"-\(cells\|power\|ground\|power_switchable\|ground_switchable\|isolated_pins\|enable\)\>"')
call tcl_common#pred_w_switches('define_diode_clamp', '', '"-\(cells\|data_pins\|type\|power\|ground\)\>"')
call tcl_common#pred_w_switches('define_isolation_cell', '', '"-\(cells\|power\|ground\|enable\|clamp_cell\|pin_groups\|no_enable\|always_on_pins\|aux_enables\|power_switchable\|ground_switchable\|valid_location\|non_dedicated\)\>"')
call tcl_common#pred_w_switches('define_level_shifter_cell', '', '"-\(cells\|input_voltage_range\|output_voltage_range\|ground_input_voltage_range\|ground_output_voltage_range\|direction\|input_power_pin\|output_power_pin\|input_ground_pin\|output_ground_pin\|power\|ground\|enable\|pin_groups\|valid_location\|bypass_enable\|multi_stage\)\>"')
call tcl_common#pred_w_switches('define_power_model', '', '"-\(for\)\>"')
call tcl_common#pred_w_switches('define_power_switch_cell', '', '"-\(cells\|type\|stage_1_enable\|stage_1_output\|power_switchable\|power\|ground_switchable\|ground\|stage_2_enable\|stage_2_output\|always_on_pins\|gate_bias_pin\)\>"')
call tcl_common#pred_w_switches('define_retention_cell', '', '"-\(cells\|power\|ground\|cell_type\|always_on_pins\|restore_function\|save_function\|restore_check\|save_check\|retention_check\|hold_check\|always_on_components\|power_switchable\|ground_switchable\)\>"')
call tcl_common#pred_w_switches('describe_state_transition', '', '"-\(object\|from\|to\|paired\|legal\|illegal\)\>"')
call tcl_common#pred_w_switches('end_power_model', '', '')
call tcl_common#pred_w_switches('find_objects', '', '"-\(pattern\|object_type\|direction\|transitive\|regexp\|exact\|ignore_case\|non_leaf\|leaf_only\|traverse_macros\)\>"')
call tcl_common#pred_w_switches('get_supply_net', '', '"-\(domain\|scope\)\>"')
call tcl_common#pred_w_switches('load_simstate_behavior', '', '"-\(file\)\>"')
call tcl_common#pred_w_switches('load_upf', '', '"-\(scope\|hide_globals\|parameters\|version\)\>"')
call tcl_common#pred_w_switches('load_upf_library', '', '')
call tcl_common#pred_w_switches('load_upf_protected', '', '"-\(hide_globals\|scope\|version\|params\)\>"')
call tcl_common#pred_w_switches('map_isolation_cell', '', '"-\(domain\|elements\|lib_cells\|lib_cell_type\|lib_model_name\|port\)\>"')
call tcl_common#pred_w_switches('map_level_shifter_cell', '', '"-\(domain\|lib_cells\|elements\)\>"')
call tcl_common#pred_w_switches('map_power_switch', '', '"-\(domain\|lib_cells\|port_map\)\>"')
call tcl_common#pred_w_switches('map_repeater_cell', '', '"-\(domain\|elements\|exclude_elements\|lib_cells\)\>"')
call tcl_common#pred_w_switches('map_retention_cell', '', '"-\(domain\|elements\|lib_cells\|lib_cell_type\|lib_model_name\|port\|exclude_elements\)\>"')
call tcl_common#pred_w_switches('map_retention_clamp_cell', '', '"-\(domain\|clock_clamp_lib_cells\|async_clamp_lib_cells\)\>"')
call tcl_common#pred_w_switches('merge_power_domains', '', '"-\(power_domains\|scope\|all_equivalent\)\>"')
call tcl_common#pred_w_switches('name_format', '', '"-\(isolation_prefix\|isolation_suffix\|level_shift_prefix\|level_shift_suffix\|implicit_supply_suffix\|implicit_logic_prefix\|implicit_logic_suffix\)\>"')
call tcl_common#pred_w_switches('save_upf', '', '"-\(scope\|version\)\>"')
call tcl_common#pred_w_switches('set_correlated', '', '"-\(nets\|sets\)\>"')
call tcl_common#pred_w_switches('set_design_attributes', '', '"-\(elements\|exclude_elements\|models\|attribute\|is_leaf_cell\|is_macro_cell\|is_soft_macro\|is_hard_macro\|switch_cell_type\|transitive\)\>"')
call tcl_common#pred_w_switches('set_design_top', '', '')
call tcl_common#pred_w_switches('set_domain_supply_net', '', '"-\(primary_power_net\|primary_ground_net\)\>"')
call tcl_common#pred_w_switches('set_equivalent', '', '"-\(function_only\|interchangeable\|nets\|sets\)\>"')
call tcl_common#pred_w_switches('set_isolation', '', '"-\(domain\|elements\|exclude_elements\|isolation_power_net\|isolation_ground_net\|no_isolation\|force_isolation\|source\|sink\|use_equivalence\|use_functional_equivalence\|applies_to\|applies_to_clamp\|applies_to_sink_off_clamp\|applies_to_source_off_clamp\|applies_to_boundary\|location\|clamp_value\|isolation_supply_set\|isolation_signal\|isolation_sense\|name_prefix\|name_suffix\|sink_off_clamp\|source_off_clamp\|instance\|diff_supply_only\|transitive\|update\)\>"')
call tcl_common#pred_w_switches('set_isolation_control', '', '"-\(domain\|isolation_signal\|isolation_sense\|location\)\>"')
call tcl_common#pred_w_switches('set_level_shifter', '', '"-\(domain\|elements\|exclude_elements\|applies_to\|applies_to_boundary\|threshold\|rule\|location\|no_shift\|force_shift\|source\|sink\|use_equivalence\|use_functional_equivalence\|name_prefix\|name_suffix\|input_supply_set\|output_supply_set\|internal_supply_set\|instance\|transitive\|update\)\>"')
call tcl_common#pred_w_switches('set_partial_on_translation', '', '"-\(full_on_tools\|off_tools\)\>"')
call tcl_common#pred_w_switches('set_pin_related_supply', '', '"-\(pins\|related_power_pin\|related_ground_pin\)\>"')
call tcl_common#pred_w_switches('set_port_attributes', '', '"-\(ports\|exclude_ports\|domains\|exclude_domains\|elements\|exclude_elements\|model\|attribute\|clamp_value\|sink_off_clamp\|source_off_clamp\|receiver_supply\|driver_supply\|related_power_port\|related_ground_port\|related_bias_ports\|repeater_supply\|pg_type\|transitive\|applies_to\|feedthrough\|unconnected\|literal_supply\|is_isolated\|is_analog\)\>"')
call tcl_common#pred_w_switches('set_power_switch', '', '"-\(output_supply_port\|input_supply_port\|control_port\|supply_set\|on_state\|on_partial_state\|off_state\|error_state\)\>"')
call tcl_common#pred_w_switches('set_related_supply_net', '', '"-\(object_list\|ground\|power\)\>"')
call tcl_common#pred_w_switches('set_repeater', '', '"-\(domain\|elements\|exclude_elements\|source\|sink\|use_equivalence\|use_functional_equivalence\|applies_to\|applies_to_boundary\|repeater_supply_set\|name_prefix\|name_suffix\|instance\|update\)\>"')
call tcl_common#pred_w_switches('set_retention', '', '"-\(domain\|elements\|exclude_elements\|retention_power_net\|retention_ground_net\|retention_supply_set\|no_retention\|save_signal\|restore_signal\|save_condition\|restore_condition\|retention_condition\|use_retention_as_primary\|parameters\|instance\|transitive\|update\)\>"')
call tcl_common#pred_w_switches('set_retention_control', '', '"-\(domain\|save_signal\|restore_signal\|assert_r_mutex\|assert_s_mutex\|assert_rs_mutex\)\>"')
call tcl_common#pred_w_switches('set_retention_elements', '', '"-\(elements\|exclude_elements\|applies_to\|retention_purpose\|transitive\|expand\)\>"')
call tcl_common#pred_w_switches('set_scope', '', '')
call tcl_common#pred_w_switches('set_simstate_behavior', '', '"-\(lib\|model\|elements\|exclude_elements\)\>"')
call tcl_common#pred_w_switches('set_variation', '', '"-\(supply\|range\)\>"')
call tcl_common#pred_w_switches('sim_assertion_control', '', '"-\(elements\|exclude_elements\|domain\|model\|controlling_domain\|control_expr\|type\|transitive\)\>"')
call tcl_common#pred_w_switches('sim_corruption_control', '', '"-\(type\|elements\|exclude_elements\|model\|domain\|transitive\)\>"')
call tcl_common#pred_w_switches('sim_replay_control', '', '"-\(elements\|exclude_elements\|model\|domain\|controlling_domain\|transitive\)\>"')
call tcl_common#pred_w_switches('upf_object_in_class', '', '"-\(class\)\>"')
call tcl_common#pred_w_switches('upf_query_object_pathname', '', '"-\(relative_to\)\>"')
call tcl_common#pred_w_switches('upf_query_object_properties', '', '"-\(property\)\>"')
call tcl_common#pred_w_switches('upf_query_object_type', '', '')
call tcl_common#pred_w_switches('upf_version', '', '')
call tcl_common#pred_w_switches('use_interface_cell', '', '"-\(strategy\|domain\|lib_cells\|map\|elements\|exclude_elements\|applies_to_clamp\|update_any\|force_function\|inverter_supply_set\)\>"')
call tcl_common#pred_w_switches('use_upf_library', '', '')
call tcl_common#pred_w_switches('query_upf', '', '"-\(pattern\|object_type\|inst_type\|direction\|transitive\|regexp\|exact\|ignore_case\|non_leaf\|leaf_only\)\>"')
call tcl_common#pred_w_switches('query_associate_supply_set', '', '"-\(detailed\)\>"')
call tcl_common#pred_w_switches('query_bind_checker', '', '"-\(detailed\)\>"')
call tcl_common#pred_w_switches('query_cell_instances', '', '"-\(domain\)\>"')
call tcl_common#pred_w_switches('query_cell_mapped', '', '')
call tcl_common#pred_w_switches('query_composite_domain', '', '"-\(detailed\)\>"')
call tcl_common#pred_w_switches('query_design_attributes', '', '"-\(element\|model\|detailed\)\>"')
call tcl_common#pred_w_switches('query_hdl2upf_vct', '', '"-\(detailed\)\>"')
call tcl_common#pred_w_switches('query_isolation', '', '"-\(domain\|detailed\)\>"')
call tcl_common#pred_w_switches('query_isolation_control', '', '"-\(domain\|detailed\)\>"')
call tcl_common#pred_w_switches('query_level_shifter', '', '"-\(domain\|detailed\)\>"')
call tcl_common#pred_w_switches('query_map_isolation_cell', '', '"-\(domain\|detailed\)\>"')
call tcl_common#pred_w_switches('query_map_level_shifter_cell', '', '"-\(domain\|detailed\)\>"')
call tcl_common#pred_w_switches('query_map_power_switch', '', '"-\(detailed\)\>"')
call tcl_common#pred_w_switches('query_map_retention_cell', '', '"-\(domain\|detailed\)\>"')
call tcl_common#pred_w_switches('query_name_format', '', '"-\(isolation_prefix\|isolation_suffix\|level_shift_prefix\|level_shift_suffix\|implicit_supply_prefix\|implicit_supply_suffix\|implicit_logic_prefix\|implicit_logic_suffix\|detailed\)\>"')
call tcl_common#pred_w_switches('query_net_ports', '', '"-\(transitive\|leaf\)\>"')
call tcl_common#pred_w_switches('query_partial_on_translation', '', '')
call tcl_common#pred_w_switches('query_pin_related_supply', '', '"-\(detailed\)\>"')
call tcl_common#pred_w_switches('query_port_attributes', '', '"-\(detailed\)\>"')
call tcl_common#pred_w_switches('query_port_direction', '', '')
call tcl_common#pred_w_switches('query_port_net', '', '"-\(conn\)\>"')
call tcl_common#pred_w_switches('query_port_state', '', '"-\(state\|detailed\)\>"')
call tcl_common#pred_w_switches('query_power_domain', '', '"-\(non_leaf\|all\|no_elements\|detailed\)\>"')
call tcl_common#pred_w_switches('query_power_domain_element', '', '')
call tcl_common#pred_w_switches('query_power_state', '', '"-\(state\|detailed\)\>"')
call tcl_common#pred_w_switches('query_power_switch', '', '"-\(detailed\)\>"')
call tcl_common#pred_w_switches('query_pst', '', '"-\(detailed\)\>"')
call tcl_common#pred_w_switches('query_pst_state', '', '"-\(pst\|detailed\)\>"')
call tcl_common#pred_w_switches('query_retention', '', '"-\(domain\|detailed\)\>"')
call tcl_common#pred_w_switches('query_retention_control', '', '"-\(domain\|detailed\)\>"')
call tcl_common#pred_w_switches('query_retention_elements', '', '"-\(detailed\)\>"')
call tcl_common#pred_w_switches('query_simstate_behavior', '', '"-\(lib\|model\|detailed\)\>"')
call tcl_common#pred_w_switches('query_state_transition', '', '"-\(object\|from\|to\|paired\|legal\|illegal\|detailed\)\>"')
call tcl_common#pred_w_switches('query_supply_net', '', '"-\(domain\|is_supply\|detailed\)\>"')
call tcl_common#pred_w_switches('query_supply_port', '', '"-\(domain\|is_supply\|detailed\)\>"')
call tcl_common#pred_w_switches('query_supply_set', '', '"-\(detailed\|transitive\)\>"')
call tcl_common#pred_w_switches('query_upf2hdl_vct', '', '"-\(detailed\)\>"')
call tcl_common#pred_w_switches('query_use_interface_cell', '', '"-\(strategy\|domain\|detailed\)\>"')
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
