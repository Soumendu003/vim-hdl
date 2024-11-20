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
let b:do_not_cleanup_tcl_funcs = 1
source <sfile>:h/tcl.vim


function s:pred_w_switches(word, keywords)
    let l:syn_group = 'upfCmd_' . a:word . 'Options'
    let l:contains = l:syn_group
    let l:group = 'tclPredicates'
    let l:syn = 'tclPrimary'
    execute 'syn region' l:group 'contained transparent matchgroup=' . l:syn ' keepend'
          \ 'start=+\<' . a:word . '\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+'
          \ 'contains=' . l:syn_group . ',@tclOpts'
    if a:keywords != ''
        execute 'syn match' l:syn_group 'contained' a:keywords
        execute 'HiLink' l:syn_group  'upfOption'
    endif
    return l:syn_group
endfunction

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


" Define syntax region for the command 'add_domain_elements'
call s:pred_w_switches('add_domain_elements', "-\(elements\)\>"')
" Define syntax region for the command 'add_parameter'
call s:pred_w_switches('add_parameter', "-\(type\|default\|description\)\>"')
" Define syntax region for the command 'add_port_state'
call s:pred_w_switches('add_port_state', "-\(state\)\>"')
" Define syntax region for the command 'add_power_state'
call s:pred_w_switches('add_power_state', "-\(supply\|domain\|group\|model\|instance\|state\|simstate\|legal\|illegal\|complete\|update\)\>"')
" Define syntax region for the command 'add_pst_state'
call s:pred_w_switches('add_pst_state', "-\(pst\|state\)\>"')
" Define syntax region for the command 'add_state_transition'
call s:pred_w_switches('add_state_transition', "-\(supply\|domain\|group\|model\|instance\|update\|transition\|complete\)\>"')
" Define syntax region for the command 'add_supply_state'
call s:pred_w_switches('add_supply_state', "-\(state\)\>"')
" Define syntax region for the command 'apply_power_model'
call s:pred_w_switches('apply_power_model', "-\(elements\|supply_map\|port_map\|parameters\)\>"')
" Define syntax region for the command 'associate_supply_set'
call s:pred_w_switches('associate_supply_set', "-\(handle\)\>"')
" Define syntax region for the command 'begin_power_model'
call s:pred_w_switches('begin_power_model', "-\(for\)\>"')
" Define syntax region for the command 'bind_checker'
call s:pred_w_switches('bind_checker', "-\(module\|elements\|ports\|bind_to\|arch\)\>"')
" Define syntax region for the command 'connect_logic_net'
call s:pred_w_switches('connect_logic_net', "-\(ports\|reconnect\)\>"')
" Define syntax region for the command 'connect_supply_net'
call s:pred_w_switches('connect_supply_net', "-\(ports\|pg_type\|vct\|cells\|domain\|pins\|rail_connection\|elements\)\>"')
" Define syntax region for the command 'connect_supply_set'
call s:pred_w_switches('connect_supply_set', "-\(connect\|elements\|exclude_elements\|transitive\)\>"')
" Define syntax region for the command 'create_abstract_power_source'
call s:pred_w_switches('create_abstract_power_source', "-\(output_supply_set\|input_supply_set\|control_port\|on_state\|off_state\|supply_set\|ack_port\|ack_delay\|ack_polarity\|power_switch\|update\)\>"')
" Define syntax region for the command 'create_composite_domain'
call s:pred_w_switches('create_composite_domain', "-\(subdomains\|supply\|update\)\>"')
" Define syntax region for the command 'create_hdl2upf_vct'
call s:pred_w_switches('create_hdl2upf_vct', "-\(hdl_type\|table\)\>"')
" Define syntax region for the command 'create_logic_net'
call s:pred_w_switches('create_logic_net', ')
" Define syntax region for the command 'create_logic_port'
call s:pred_w_switches('create_logic_port', "-\(direction\)\>"')
" Define syntax region for the command 'create_power_domain'
call s:pred_w_switches('create_power_domain', "-\(elements\|include_scope\|scope\|exclude_elements\|simulation_only\|supply\|define_func_type\|update\|atomic\|available_supplies\|boundary_supplies\)\>"')
" Define syntax region for the command 'create_power_switch'
call s:pred_w_switches('create_power_switch', "-\(domain\|output_supply_port\|input_supply_port\|control_port\|on_state\|on_partial_state\|ack_port\|ack_delay\|off_state\|error_state\|supply_set\|instance\|update\|switch_type\)\>"')
" Define syntax region for the command 'create_power_state_group'
call s:pred_w_switches('create_power_state_group', ')
" Define syntax region for the command 'create_pst'
call s:pred_w_switches('create_pst', "-\(supplies\)\>"')
" Define syntax region for the command 'create_supply_net'
call s:pred_w_switches('create_supply_net', "-\(domain\|reuse\|resolve\|virtual\)\>"')
" Define syntax region for the command 'create_supply_port'
call s:pred_w_switches('create_supply_port', "-\(domain\|direction\|virtual\)\>"')
" Define syntax region for the command 'create_supply_set'
call s:pred_w_switches('create_supply_set', "-\(function\|reference_gnd\|update\|virtual\)\>"')
" Define syntax region for the command 'create_upf2hdl_vct'
call s:pred_w_switches('create_upf2hdl_vct', "-\(hdl_type\|table\)\>"')
" Define syntax region for the command 'create_upf_library'
call s:pred_w_switches('create_upf_library', "-\(contents\)\>"')
" Define syntax region for the command 'create_vcm'
call s:pred_w_switches('create_vcm', "-\(table\|hdl_type\|conversion_direction\|field\|function\|model\|parameters\|vcms\)\>"')
" Define syntax region for the command 'define_always_on_cell'
call s:pred_w_switches('define_always_on_cell', "-\(cells\|power\|ground\|power_switchable\|ground_switchable\|isolated_pins\|enable\)\>"')
" Define syntax region for the command 'define_diode_clamp'
call s:pred_w_switches('define_diode_clamp', "-\(cells\|data_pins\|type\|power\|ground\)\>"')
" Define syntax region for the command 'define_isolation_cell'
call s:pred_w_switches('define_isolation_cell', "-\(cells\|power\|ground\|enable\|clamp_cell\|pin_groups\|no_enable\|always_on_pins\|aux_enables\|power_switchable\|ground_switchable\|valid_location\|non_dedicated\)\>"')
" Define syntax region for the command 'define_level_shifter_cell'
call s:pred_w_switches('define_level_shifter_cell', "-\(cells\|input_voltage_range\|output_voltage_range\|ground_input_voltage_range\|ground_output_voltage_range\|direction\|input_power_pin\|output_power_pin\|input_ground_pin\|output_ground_pin\|power\|ground\|enable\|pin_groups\|valid_location\|bypass_enable\|multi_stage\)\>"')
" Define syntax region for the command 'define_power_model'
call s:pred_w_switches('define_power_model', "-\(for\)\>"')
" Define syntax region for the command 'define_power_switch_cell'
call s:pred_w_switches('define_power_switch_cell', "-\(cells\|type\|stage_1_enable\|stage_1_output\|power_switchable\|power\|ground_switchable\|ground\|stage_2_enable\|stage_2_output\|always_on_pins\|gate_bias_pin\)\>"')
" Define syntax region for the command 'define_retention_cell'
call s:pred_w_switches('define_retention_cell', "-\(cells\|power\|ground\|cell_type\|always_on_pins\|restore_function\|save_function\|restore_check\|save_check\|retention_check\|hold_check\|always_on_components\|power_switchable\|ground_switchable\)\>"')
" Define syntax region for the command 'describe_state_transition'
call s:pred_w_switches('describe_state_transition', "-\(object\|from\|to\|paired\|legal\|illegal\)\>"')
" Define syntax region for the command 'end_power_model'
call s:pred_w_switches('end_power_model', ')
" Define syntax region for the command 'find_objects'
call s:pred_w_switches('find_objects', "-\(pattern\|object_type\|direction\|transitive\|regexp\|exact\|ignore_case\|non_leaf\|leaf_only\|traverse_macros\)\>"')
" Define syntax region for the command 'get_supply_net'
call s:pred_w_switches('get_supply_net', "-\(domain\|scope\)\>"')
" Define syntax region for the command 'load_simstate_behavior'
call s:pred_w_switches('load_simstate_behavior', "-\(file\)\>"')
" Define syntax region for the command 'load_upf'
call s:pred_w_switches('load_upf', "-\(scope\|hide_globals\|parameters\|version\)\>"')
" Define syntax region for the command 'load_upf_library'
call s:pred_w_switches('load_upf_library', ')
" Define syntax region for the command 'load_upf_protected'
call s:pred_w_switches('load_upf_protected', "-\(hide_globals\|scope\|version\|params\)\>"')
" Define syntax region for the command 'map_isolation_cell'
call s:pred_w_switches('map_isolation_cell', "-\(domain\|elements\|lib_cells\|lib_cell_type\|lib_model_name\|port\)\>"')
" Define syntax region for the command 'map_level_shifter_cell'
call s:pred_w_switches('map_level_shifter_cell', "-\(domain\|lib_cells\|elements\)\>"')
" Define syntax region for the command 'map_power_switch'
call s:pred_w_switches('map_power_switch', "-\(domain\|lib_cells\|port_map\)\>"')
" Define syntax region for the command 'map_repeater_cell'
call s:pred_w_switches('map_repeater_cell', "-\(domain\|elements\|exclude_elements\|lib_cells\)\>"')
" Define syntax region for the command 'map_retention_cell'
call s:pred_w_switches('map_retention_cell', "-\(domain\|elements\|lib_cells\|lib_cell_type\|lib_model_name\|port\|exclude_elements\)\>"')
" Define syntax region for the command 'map_retention_clamp_cell'
call s:pred_w_switches('map_retention_clamp_cell', "-\(domain\|clock_clamp_lib_cells\|async_clamp_lib_cells\)\>"')
" Define syntax region for the command 'merge_power_domains'
call s:pred_w_switches('merge_power_domains', "-\(power_domains\|scope\|all_equivalent\)\>"')
" Define syntax region for the command 'name_format'
call s:pred_w_switches('name_format', "-\(isolation_prefix\|isolation_suffix\|level_shift_prefix\|level_shift_suffix\|implicit_supply_suffix\|implicit_logic_prefix\|implicit_logic_suffix\)\>"')
" Define syntax region for the command 'save_upf'
call s:pred_w_switches('save_upf', "-\(scope\|version\)\>"')
" Define syntax region for the command 'set_correlated'
call s:pred_w_switches('set_correlated', "-\(nets\|sets\)\>"')
" Define syntax region for the command 'set_design_attributes'
call s:pred_w_switches('set_design_attributes', "-\(elements\|exclude_elements\|models\|attribute\|is_leaf_cell\|is_macro_cell\|is_soft_macro\|is_hard_macro\|switch_cell_type\|transitive\)\>"')
" Define syntax region for the command 'set_design_top'
call s:pred_w_switches('set_design_top', ')
" Define syntax region for the command 'set_domain_supply_net'
call s:pred_w_switches('set_domain_supply_net', "-\(primary_power_net\|primary_ground_net\)\>"')
" Define syntax region for the command 'set_equivalent'
call s:pred_w_switches('set_equivalent', "-\(function_only\|interchangeable\|nets\|sets\)\>"')
" Define syntax region for the command 'set_isolation'
call s:pred_w_switches('set_isolation', "-\(domain\|elements\|exclude_elements\|isolation_power_net\|isolation_ground_net\|no_isolation\|force_isolation\|source\|sink\|use_equivalence\|use_functional_equivalence\|applies_to\|applies_to_clamp\|applies_to_sink_off_clamp\|applies_to_source_off_clamp\|applies_to_boundary\|location\|clamp_value\|isolation_supply_set\|isolation_signal\|isolation_sense\|name_prefix\|name_suffix\|sink_off_clamp\|source_off_clamp\|instance\|diff_supply_only\|transitive\|update\)\>"')
" Define syntax region for the command 'set_isolation_control'
call s:pred_w_switches('set_isolation_control', "-\(domain\|isolation_signal\|isolation_sense\|location\)\>"')
" Define syntax region for the command 'set_level_shifter'
call s:pred_w_switches('set_level_shifter', "-\(domain\|elements\|exclude_elements\|applies_to\|applies_to_boundary\|threshold\|rule\|location\|no_shift\|force_shift\|source\|sink\|use_equivalence\|use_functional_equivalence\|name_prefix\|name_suffix\|input_supply_set\|output_supply_set\|internal_supply_set\|instance\|transitive\|update\)\>"')
" Define syntax region for the command 'set_partial_on_translation'
call s:pred_w_switches('set_partial_on_translation', "-\(full_on_tools\|off_tools\)\>"')
" Define syntax region for the command 'set_pin_related_supply'
call s:pred_w_switches('set_pin_related_supply', "-\(pins\|related_power_pin\|related_ground_pin\)\>"')
" Define syntax region for the command 'set_port_attributes'
call s:pred_w_switches('set_port_attributes', "-\(ports\|exclude_ports\|domains\|exclude_domains\|elements\|exclude_elements\|model\|attribute\|clamp_value\|sink_off_clamp\|source_off_clamp\|receiver_supply\|driver_supply\|related_power_port\|related_ground_port\|related_bias_ports\|repeater_supply\|pg_type\|transitive\|applies_to\|feedthrough\|unconnected\|literal_supply\|is_isolated\|is_analog\)\>"')
" Define syntax region for the command 'set_power_switch'
call s:pred_w_switches('set_power_switch', "-\(output_supply_port\|input_supply_port\|control_port\|supply_set\|on_state\|on_partial_state\|off_state\|error_state\)\>"')
" Define syntax region for the command 'set_related_supply_net'
call s:pred_w_switches('set_related_supply_net', "-\(object_list\|ground\|power\)\>"')
" Define syntax region for the command 'set_repeater'
call s:pred_w_switches('set_repeater', "-\(domain\|elements\|exclude_elements\|source\|sink\|use_equivalence\|use_functional_equivalence\|applies_to\|applies_to_boundary\|repeater_supply_set\|name_prefix\|name_suffix\|instance\|update\)\>"')
" Define syntax region for the command 'set_retention'
call s:pred_w_switches('set_retention', "-\(domain\|elements\|exclude_elements\|retention_power_net\|retention_ground_net\|retention_supply_set\|no_retention\|save_signal\|restore_signal\|save_condition\|restore_condition\|retention_condition\|use_retention_as_primary\|parameters\|instance\|transitive\|update\)\>"')
" Define syntax region for the command 'set_retention_control'
call s:pred_w_switches('set_retention_control', "-\(domain\|save_signal\|restore_signal\|assert_r_mutex\|assert_s_mutex\|assert_rs_mutex\)\>"')
" Define syntax region for the command 'set_retention_elements'
call s:pred_w_switches('set_retention_elements', "-\(elements\|exclude_elements\|applies_to\|retention_purpose\|transitive\|expand\)\>"')
" Define syntax region for the command 'set_scope'
call s:pred_w_switches('set_scope', ')
" Define syntax region for the command 'set_simstate_behavior'
call s:pred_w_switches('set_simstate_behavior', "-\(lib\|model\|elements\|exclude_elements\)\>"')
" Define syntax region for the command 'set_variation'
call s:pred_w_switches('set_variation', "-\(supply\|range\)\>"')
" Define syntax region for the command 'sim_assertion_control'
call s:pred_w_switches('sim_assertion_control', "-\(elements\|exclude_elements\|domain\|model\|controlling_domain\|control_expr\|type\|transitive\)\>"')
" Define syntax region for the command 'sim_corruption_control'
call s:pred_w_switches('sim_corruption_control', "-\(type\|elements\|exclude_elements\|model\|domain\|transitive\)\>"')
" Define syntax region for the command 'sim_replay_control'
call s:pred_w_switches('sim_replay_control', "-\(elements\|exclude_elements\|model\|domain\|controlling_domain\|transitive\)\>"')
" Define syntax region for the command 'upf_object_in_class'
call s:pred_w_switches('upf_object_in_class', "-\(class\)\>"')
" Define syntax region for the command 'upf_query_object_pathname'
call s:pred_w_switches('upf_query_object_pathname', "-\(relative_to\)\>"')
" Define syntax region for the command 'upf_query_object_properties'
call s:pred_w_switches('upf_query_object_properties', "-\(property\)\>"')
" Define syntax region for the command 'upf_query_object_type'
call s:pred_w_switches('upf_query_object_type', ')
" Define syntax region for the command 'upf_version'
call s:pred_w_switches('upf_version', ')
" Define syntax region for the command 'use_interface_cell'
call s:pred_w_switches('use_interface_cell', "-\(strategy\|domain\|lib_cells\|map\|elements\|exclude_elements\|applies_to_clamp\|update_any\|force_function\|inverter_supply_set\)\>"')
" Define syntax region for the command 'use_upf_library'
call s:pred_w_switches('use_upf_library', ')
" Define syntax region for the command 'query_upf'
call s:pred_w_switches('query_upf', "-\(pattern\|object_type\|inst_type\|direction\|transitive\|regexp\|exact\|ignore_case\|non_leaf\|leaf_only\)\>"')
" Define syntax region for the command 'query_associate_supply_set'
call s:pred_w_switches('query_associate_supply_set', "-\(detailed\)\>"')
" Define syntax region for the command 'query_bind_checker'
call s:pred_w_switches('query_bind_checker', "-\(detailed\)\>"')
" Define syntax region for the command 'query_cell_instances'
call s:pred_w_switches('query_cell_instances', "-\(domain\)\>"')
" Define syntax region for the command 'query_cell_mapped'
call s:pred_w_switches('query_cell_mapped', ')
" Define syntax region for the command 'query_composite_domain'
call s:pred_w_switches('query_composite_domain', "-\(detailed\)\>"')
" Define syntax region for the command 'query_design_attributes'
call s:pred_w_switches('query_design_attributes', "-\(element\|model\|detailed\)\>"')
" Define syntax region for the command 'query_hdl2upf_vct'
call s:pred_w_switches('query_hdl2upf_vct', "-\(detailed\)\>"')
" Define syntax region for the command 'query_isolation'
call s:pred_w_switches('query_isolation', "-\(domain\|detailed\)\>"')
" Define syntax region for the command 'query_isolation_control'
call s:pred_w_switches('query_isolation_control', "-\(domain\|detailed\)\>"')
" Define syntax region for the command 'query_level_shifter'
call s:pred_w_switches('query_level_shifter', "-\(domain\|detailed\)\>"')
" Define syntax region for the command 'query_map_isolation_cell'
call s:pred_w_switches('query_map_isolation_cell', "-\(domain\|detailed\)\>"')
" Define syntax region for the command 'query_map_level_shifter_cell'
call s:pred_w_switches('query_map_level_shifter_cell', "-\(domain\|detailed\)\>"')
" Define syntax region for the command 'query_map_power_switch'
call s:pred_w_switches('query_map_power_switch', "-\(detailed\)\>"')
" Define syntax region for the command 'query_map_retention_cell'
call s:pred_w_switches('query_map_retention_cell', "-\(domain\|detailed\)\>"')
" Define syntax region for the command 'query_name_format'
call s:pred_w_switches('query_name_format', "-\(isolation_prefix\|isolation_suffix\|level_shift_prefix\|level_shift_suffix\|implicit_supply_prefix\|implicit_supply_suffix\|implicit_logic_prefix\|implicit_logic_suffix\|detailed\)\>"')
" Define syntax region for the command 'query_net_ports'
call s:pred_w_switches('query_net_ports', "-\(transitive\|leaf\)\>"')
" Define syntax region for the command 'query_partial_on_translation'
call s:pred_w_switches('query_partial_on_translation', ')
" Define syntax region for the command 'query_pin_related_supply'
call s:pred_w_switches('query_pin_related_supply', "-\(detailed\)\>"')
" Define syntax region for the command 'query_port_attributes'
call s:pred_w_switches('query_port_attributes', "-\(detailed\)\>"')
" Define syntax region for the command 'query_port_direction'
call s:pred_w_switches('query_port_direction', ')
" Define syntax region for the command 'query_port_net'
call s:pred_w_switches('query_port_net', "-\(conn\)\>"')
" Define syntax region for the command 'query_port_state'
call s:pred_w_switches('query_port_state', "-\(state\|detailed\)\>"')
" Define syntax region for the command 'query_power_domain'
call s:pred_w_switches('query_power_domain', "-\(non_leaf\|all\|no_elements\|detailed\)\>"')
" Define syntax region for the command 'query_power_domain_element'
call s:pred_w_switches('query_power_domain_element', ')
" Define syntax region for the command 'query_power_state'
call s:pred_w_switches('query_power_state', "-\(state\|detailed\)\>"')
" Define syntax region for the command 'query_power_switch'
call s:pred_w_switches('query_power_switch', "-\(detailed\)\>"')
" Define syntax region for the command 'query_pst'
call s:pred_w_switches('query_pst', "-\(detailed\)\>"')
" Define syntax region for the command 'query_pst_state'
call s:pred_w_switches('query_pst_state', "-\(pst\|detailed\)\>"')
" Define syntax region for the command 'query_retention'
call s:pred_w_switches('query_retention', "-\(domain\|detailed\)\>"')
" Define syntax region for the command 'query_retention_control'
call s:pred_w_switches('query_retention_control', "-\(domain\|detailed\)\>"')
" Define syntax region for the command 'query_retention_elements'
call s:pred_w_switches('query_retention_elements', "-\(detailed\)\>"')
" Define syntax region for the command 'query_simstate_behavior'
call s:pred_w_switches('query_simstate_behavior', "-\(lib\|model\|detailed\)\>"')
" Define syntax region for the command 'query_state_transition'
call s:pred_w_switches('query_state_transition', "-\(object\|from\|to\|paired\|legal\|illegal\|detailed\)\>"')
" Define syntax region for the command 'query_supply_net'
call s:pred_w_switches('query_supply_net', "-\(domain\|is_supply\|detailed\)\>"')
" Define syntax region for the command 'query_supply_port'
call s:pred_w_switches('query_supply_port', "-\(domain\|is_supply\|detailed\)\>"')
" Define syntax region for the command 'query_supply_set'
call s:pred_w_switches('query_supply_set', "-\(detailed\|transitive\)\>"')
" Define syntax region for the command 'query_upf2hdl_vct'
call s:pred_w_switches('query_upf2hdl_vct', "-\(detailed\)\>"')
" Define syntax region for the command 'query_use_interface_cell'
call s:pred_w_switches('query_use_interface_cell', "-\(strategy\|domain\|detailed\)\>"')
" ------------------- GENERATED REGION END   ----------------------------

" -------------------------
" Write manual modifications for
" enabling UPF syntax under this region
" -------------------------

HiLink upfKeyWord        tclKeyword
HiLink upfOption         tclOption

" -------------------------
" Cleanup:
" -------------------------
delcommand HiLink
delfunction s:pred_w_switches

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
