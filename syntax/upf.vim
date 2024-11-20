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
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<add_domain_elements\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_add_domain_elements
syn match upfCmd_add_domain_elements contained "-\(elements\)\>"
HiLink upfCmd_add_domain_elements upfOption



" Define syntax region for the command 'add_parameter'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<add_parameter\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_add_parameter
syn match upfCmd_add_parameter contained "-\(type\|default\|description\)\>"
HiLink upfCmd_add_parameter upfOption



" Define syntax region for the command 'add_port_state'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<add_port_state\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_add_port_state
syn match upfCmd_add_port_state contained "-\(state\)\>"
HiLink upfCmd_add_port_state upfOption



" Define syntax region for the command 'add_power_state'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<add_power_state\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_add_power_state
syn match upfCmd_add_power_state contained "-\(supply\|domain\|group\|model\|instance\|state\|simstate\|legal\|illegal\|complete\|update\)\>"
HiLink upfCmd_add_power_state upfOption



" Define syntax region for the command 'add_pst_state'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<add_pst_state\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_add_pst_state
syn match upfCmd_add_pst_state contained "-\(pst\|state\)\>"
HiLink upfCmd_add_pst_state upfOption



" Define syntax region for the command 'add_state_transition'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<add_state_transition\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_add_state_transition
syn match upfCmd_add_state_transition contained "-\(supply\|domain\|group\|model\|instance\|update\|transition\|complete\)\>"
HiLink upfCmd_add_state_transition upfOption



" Define syntax region for the command 'add_supply_state'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<add_supply_state\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_add_supply_state
syn match upfCmd_add_supply_state contained "-\(state\)\>"
HiLink upfCmd_add_supply_state upfOption



" Define syntax region for the command 'apply_power_model'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<apply_power_model\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_apply_power_model
syn match upfCmd_apply_power_model contained "-\(elements\|supply_map\|port_map\|parameters\)\>"
HiLink upfCmd_apply_power_model upfOption



" Define syntax region for the command 'associate_supply_set'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<associate_supply_set\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_associate_supply_set
syn match upfCmd_associate_supply_set contained "-\(handle\)\>"
HiLink upfCmd_associate_supply_set upfOption



" Define syntax region for the command 'begin_power_model'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<begin_power_model\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_begin_power_model
syn match upfCmd_begin_power_model contained "-\(for\)\>"
HiLink upfCmd_begin_power_model upfOption



" Define syntax region for the command 'bind_checker'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<bind_checker\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_bind_checker
syn match upfCmd_bind_checker contained "-\(module\|elements\|ports\|bind_to\|arch\)\>"
HiLink upfCmd_bind_checker upfOption



" Define syntax region for the command 'connect_logic_net'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<connect_logic_net\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_connect_logic_net
syn match upfCmd_connect_logic_net contained "-\(ports\|reconnect\)\>"
HiLink upfCmd_connect_logic_net upfOption



" Define syntax region for the command 'connect_supply_net'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<connect_supply_net\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_connect_supply_net
syn match upfCmd_connect_supply_net contained "-\(ports\|pg_type\|vct\|cells\|domain\|pins\|rail_connection\|elements\)\>"
HiLink upfCmd_connect_supply_net upfOption



" Define syntax region for the command 'connect_supply_set'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<connect_supply_set\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_connect_supply_set
syn match upfCmd_connect_supply_set contained "-\(connect\|elements\|exclude_elements\|transitive\)\>"
HiLink upfCmd_connect_supply_set upfOption



" Define syntax region for the command 'create_abstract_power_source'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<create_abstract_power_source\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_create_abstract_power_source
syn match upfCmd_create_abstract_power_source contained "-\(output_supply_set\|input_supply_set\|control_port\|on_state\|off_state\|supply_set\|ack_port\|ack_delay\|ack_polarity\|power_switch\|update\)\>"
HiLink upfCmd_create_abstract_power_source upfOption



" Define syntax region for the command 'create_composite_domain'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<create_composite_domain\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_create_composite_domain
syn match upfCmd_create_composite_domain contained "-\(subdomains\|supply\|update\)\>"
HiLink upfCmd_create_composite_domain upfOption



" Define syntax region for the command 'create_hdl2upf_vct'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<create_hdl2upf_vct\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_create_hdl2upf_vct
syn match upfCmd_create_hdl2upf_vct contained "-\(hdl_type\|table\)\>"
HiLink upfCmd_create_hdl2upf_vct upfOption



" Define syntax region for the command 'create_logic_net'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<create_logic_net\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'create_logic_port'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<create_logic_port\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_create_logic_port
syn match upfCmd_create_logic_port contained "-\(direction\)\>"
HiLink upfCmd_create_logic_port upfOption



" Define syntax region for the command 'create_power_domain'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<create_power_domain\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_create_power_domain
syn match upfCmd_create_power_domain contained "-\(elements\|include_scope\|scope\|exclude_elements\|simulation_only\|supply\|define_func_type\|update\|atomic\|available_supplies\|boundary_supplies\)\>"
HiLink upfCmd_create_power_domain upfOption



" Define syntax region for the command 'create_power_switch'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<create_power_switch\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_create_power_switch
syn match upfCmd_create_power_switch contained "-\(domain\|output_supply_port\|input_supply_port\|control_port\|on_state\|on_partial_state\|ack_port\|ack_delay\|off_state\|error_state\|supply_set\|instance\|update\|switch_type\)\>"
HiLink upfCmd_create_power_switch upfOption



" Define syntax region for the command 'create_power_state_group'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<create_power_state_group\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'create_pst'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<create_pst\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_create_pst
syn match upfCmd_create_pst contained "-\(supplies\)\>"
HiLink upfCmd_create_pst upfOption



" Define syntax region for the command 'create_supply_net'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<create_supply_net\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_create_supply_net
syn match upfCmd_create_supply_net contained "-\(domain\|reuse\|resolve\|virtual\)\>"
HiLink upfCmd_create_supply_net upfOption



" Define syntax region for the command 'create_supply_port'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<create_supply_port\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_create_supply_port
syn match upfCmd_create_supply_port contained "-\(domain\|direction\|virtual\)\>"
HiLink upfCmd_create_supply_port upfOption



" Define syntax region for the command 'create_supply_set'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<create_supply_set\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_create_supply_set
syn match upfCmd_create_supply_set contained "-\(function\|reference_gnd\|update\|virtual\)\>"
HiLink upfCmd_create_supply_set upfOption



" Define syntax region for the command 'create_upf2hdl_vct'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<create_upf2hdl_vct\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_create_upf2hdl_vct
syn match upfCmd_create_upf2hdl_vct contained "-\(hdl_type\|table\)\>"
HiLink upfCmd_create_upf2hdl_vct upfOption



" Define syntax region for the command 'create_upf_library'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<create_upf_library\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_create_upf_library
syn match upfCmd_create_upf_library contained "-\(contents\)\>"
HiLink upfCmd_create_upf_library upfOption



" Define syntax region for the command 'create_vcm'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<create_vcm\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_create_vcm
syn match upfCmd_create_vcm contained "-\(table\|hdl_type\|conversion_direction\|field\|function\|model\|parameters\|vcms\)\>"
HiLink upfCmd_create_vcm upfOption



" Define syntax region for the command 'define_always_on_cell'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<define_always_on_cell\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_define_always_on_cell
syn match upfCmd_define_always_on_cell contained "-\(cells\|power\|ground\|power_switchable\|ground_switchable\|isolated_pins\|enable\)\>"
HiLink upfCmd_define_always_on_cell upfOption



" Define syntax region for the command 'define_diode_clamp'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<define_diode_clamp\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_define_diode_clamp
syn match upfCmd_define_diode_clamp contained "-\(cells\|data_pins\|type\|power\|ground\)\>"
HiLink upfCmd_define_diode_clamp upfOption



" Define syntax region for the command 'define_isolation_cell'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<define_isolation_cell\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_define_isolation_cell
syn match upfCmd_define_isolation_cell contained "-\(cells\|power\|ground\|enable\|clamp_cell\|pin_groups\|no_enable\|always_on_pins\|aux_enables\|power_switchable\|ground_switchable\|valid_location\|non_dedicated\)\>"
HiLink upfCmd_define_isolation_cell upfOption



" Define syntax region for the command 'define_level_shifter_cell'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<define_level_shifter_cell\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_define_level_shifter_cell
syn match upfCmd_define_level_shifter_cell contained "-\(cells\|input_voltage_range\|output_voltage_range\|ground_input_voltage_range\|ground_output_voltage_range\|direction\|input_power_pin\|output_power_pin\|input_ground_pin\|output_ground_pin\|power\|ground\|enable\|pin_groups\|valid_location\|bypass_enable\|multi_stage\)\>"
HiLink upfCmd_define_level_shifter_cell upfOption



" Define syntax region for the command 'define_power_model'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<define_power_model\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_define_power_model
syn match upfCmd_define_power_model contained "-\(for\)\>"
HiLink upfCmd_define_power_model upfOption



" Define syntax region for the command 'define_power_switch_cell'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<define_power_switch_cell\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_define_power_switch_cell
syn match upfCmd_define_power_switch_cell contained "-\(cells\|type\|stage_1_enable\|stage_1_output\|power_switchable\|power\|ground_switchable\|ground\|stage_2_enable\|stage_2_output\|always_on_pins\|gate_bias_pin\)\>"
HiLink upfCmd_define_power_switch_cell upfOption



" Define syntax region for the command 'define_retention_cell'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<define_retention_cell\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_define_retention_cell
syn match upfCmd_define_retention_cell contained "-\(cells\|power\|ground\|cell_type\|always_on_pins\|restore_function\|save_function\|restore_check\|save_check\|retention_check\|hold_check\|always_on_components\|power_switchable\|ground_switchable\)\>"
HiLink upfCmd_define_retention_cell upfOption



" Define syntax region for the command 'describe_state_transition'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<describe_state_transition\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_describe_state_transition
syn match upfCmd_describe_state_transition contained "-\(object\|from\|to\|paired\|legal\|illegal\)\>"
HiLink upfCmd_describe_state_transition upfOption



" Define syntax region for the command 'end_power_model'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<end_power_model\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'find_objects'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<find_objects\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_find_objects
syn match upfCmd_find_objects contained "-\(pattern\|object_type\|direction\|transitive\|regexp\|exact\|ignore_case\|non_leaf\|leaf_only\|traverse_macros\)\>"
HiLink upfCmd_find_objects upfOption



" Define syntax region for the command 'get_supply_net'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<get_supply_net\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_get_supply_net
syn match upfCmd_get_supply_net contained "-\(domain\|scope\)\>"
HiLink upfCmd_get_supply_net upfOption



" Define syntax region for the command 'load_simstate_behavior'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<load_simstate_behavior\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_load_simstate_behavior
syn match upfCmd_load_simstate_behavior contained "-\(file\)\>"
HiLink upfCmd_load_simstate_behavior upfOption



" Define syntax region for the command 'load_upf'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<load_upf\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_load_upf
syn match upfCmd_load_upf contained "-\(scope\|hide_globals\|parameters\|version\)\>"
HiLink upfCmd_load_upf upfOption



" Define syntax region for the command 'load_upf_library'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<load_upf_library\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'load_upf_protected'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<load_upf_protected\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_load_upf_protected
syn match upfCmd_load_upf_protected contained "-\(hide_globals\|scope\|version\|params\)\>"
HiLink upfCmd_load_upf_protected upfOption



" Define syntax region for the command 'map_isolation_cell'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<map_isolation_cell\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_map_isolation_cell
syn match upfCmd_map_isolation_cell contained "-\(domain\|elements\|lib_cells\|lib_cell_type\|lib_model_name\|port\)\>"
HiLink upfCmd_map_isolation_cell upfOption



" Define syntax region for the command 'map_level_shifter_cell'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<map_level_shifter_cell\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_map_level_shifter_cell
syn match upfCmd_map_level_shifter_cell contained "-\(domain\|lib_cells\|elements\)\>"
HiLink upfCmd_map_level_shifter_cell upfOption



" Define syntax region for the command 'map_power_switch'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<map_power_switch\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_map_power_switch
syn match upfCmd_map_power_switch contained "-\(domain\|lib_cells\|port_map\)\>"
HiLink upfCmd_map_power_switch upfOption



" Define syntax region for the command 'map_repeater_cell'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<map_repeater_cell\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_map_repeater_cell
syn match upfCmd_map_repeater_cell contained "-\(domain\|elements\|exclude_elements\|lib_cells\)\>"
HiLink upfCmd_map_repeater_cell upfOption



" Define syntax region for the command 'map_retention_cell'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<map_retention_cell\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_map_retention_cell
syn match upfCmd_map_retention_cell contained "-\(domain\|elements\|lib_cells\|lib_cell_type\|lib_model_name\|port\|exclude_elements\)\>"
HiLink upfCmd_map_retention_cell upfOption



" Define syntax region for the command 'map_retention_clamp_cell'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<map_retention_clamp_cell\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_map_retention_clamp_cell
syn match upfCmd_map_retention_clamp_cell contained "-\(domain\|clock_clamp_lib_cells\|async_clamp_lib_cells\)\>"
HiLink upfCmd_map_retention_clamp_cell upfOption



" Define syntax region for the command 'merge_power_domains'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<merge_power_domains\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_merge_power_domains
syn match upfCmd_merge_power_domains contained "-\(power_domains\|scope\|all_equivalent\)\>"
HiLink upfCmd_merge_power_domains upfOption



" Define syntax region for the command 'name_format'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<name_format\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_name_format
syn match upfCmd_name_format contained "-\(isolation_prefix\|isolation_suffix\|level_shift_prefix\|level_shift_suffix\|implicit_supply_suffix\|implicit_logic_prefix\|implicit_logic_suffix\)\>"
HiLink upfCmd_name_format upfOption



" Define syntax region for the command 'save_upf'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<save_upf\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_save_upf
syn match upfCmd_save_upf contained "-\(scope\|version\)\>"
HiLink upfCmd_save_upf upfOption



" Define syntax region for the command 'set_correlated'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_correlated\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_correlated
syn match upfCmd_set_correlated contained "-\(nets\|sets\)\>"
HiLink upfCmd_set_correlated upfOption



" Define syntax region for the command 'set_design_attributes'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_design_attributes\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_design_attributes
syn match upfCmd_set_design_attributes contained "-\(elements\|exclude_elements\|models\|attribute\|is_leaf_cell\|is_macro_cell\|is_soft_macro\|is_hard_macro\|switch_cell_type\|transitive\)\>"
HiLink upfCmd_set_design_attributes upfOption



" Define syntax region for the command 'set_design_top'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_design_top\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'set_domain_supply_net'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_domain_supply_net\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_domain_supply_net
syn match upfCmd_set_domain_supply_net contained "-\(primary_power_net\|primary_ground_net\)\>"
HiLink upfCmd_set_domain_supply_net upfOption



" Define syntax region for the command 'set_equivalent'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_equivalent\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_equivalent
syn match upfCmd_set_equivalent contained "-\(function_only\|interchangeable\|nets\|sets\)\>"
HiLink upfCmd_set_equivalent upfOption



" Define syntax region for the command 'set_isolation'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_isolation\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_isolation
syn match upfCmd_set_isolation contained "-\(domain\|elements\|exclude_elements\|isolation_power_net\|isolation_ground_net\|no_isolation\|force_isolation\|source\|sink\|use_equivalence\|use_functional_equivalence\|applies_to\|applies_to_clamp\|applies_to_sink_off_clamp\|applies_to_source_off_clamp\|applies_to_boundary\|location\|clamp_value\|isolation_supply_set\|isolation_signal\|isolation_sense\|name_prefix\|name_suffix\|sink_off_clamp\|source_off_clamp\|instance\|diff_supply_only\|transitive\|update\)\>"
HiLink upfCmd_set_isolation upfOption



" Define syntax region for the command 'set_isolation_control'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_isolation_control\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_isolation_control
syn match upfCmd_set_isolation_control contained "-\(domain\|isolation_signal\|isolation_sense\|location\)\>"
HiLink upfCmd_set_isolation_control upfOption



" Define syntax region for the command 'set_level_shifter'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_level_shifter\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_level_shifter
syn match upfCmd_set_level_shifter contained "-\(domain\|elements\|exclude_elements\|applies_to\|applies_to_boundary\|threshold\|rule\|location\|no_shift\|force_shift\|source\|sink\|use_equivalence\|use_functional_equivalence\|name_prefix\|name_suffix\|input_supply_set\|output_supply_set\|internal_supply_set\|instance\|transitive\|update\)\>"
HiLink upfCmd_set_level_shifter upfOption



" Define syntax region for the command 'set_partial_on_translation'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_partial_on_translation\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_partial_on_translation
syn match upfCmd_set_partial_on_translation contained "-\(full_on_tools\|off_tools\)\>"
HiLink upfCmd_set_partial_on_translation upfOption



" Define syntax region for the command 'set_pin_related_supply'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_pin_related_supply\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_pin_related_supply
syn match upfCmd_set_pin_related_supply contained "-\(pins\|related_power_pin\|related_ground_pin\)\>"
HiLink upfCmd_set_pin_related_supply upfOption



" Define syntax region for the command 'set_port_attributes'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_port_attributes\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_port_attributes
syn match upfCmd_set_port_attributes contained "-\(ports\|exclude_ports\|domains\|exclude_domains\|elements\|exclude_elements\|model\|attribute\|clamp_value\|sink_off_clamp\|source_off_clamp\|receiver_supply\|driver_supply\|related_power_port\|related_ground_port\|related_bias_ports\|repeater_supply\|pg_type\|transitive\|applies_to\|feedthrough\|unconnected\|literal_supply\|is_isolated\|is_analog\)\>"
HiLink upfCmd_set_port_attributes upfOption



" Define syntax region for the command 'set_power_switch'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_power_switch\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_power_switch
syn match upfCmd_set_power_switch contained "-\(output_supply_port\|input_supply_port\|control_port\|supply_set\|on_state\|on_partial_state\|off_state\|error_state\)\>"
HiLink upfCmd_set_power_switch upfOption



" Define syntax region for the command 'set_related_supply_net'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_related_supply_net\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_related_supply_net
syn match upfCmd_set_related_supply_net contained "-\(object_list\|ground\|power\)\>"
HiLink upfCmd_set_related_supply_net upfOption



" Define syntax region for the command 'set_repeater'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_repeater\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_repeater
syn match upfCmd_set_repeater contained "-\(domain\|elements\|exclude_elements\|source\|sink\|use_equivalence\|use_functional_equivalence\|applies_to\|applies_to_boundary\|repeater_supply_set\|name_prefix\|name_suffix\|instance\|update\)\>"
HiLink upfCmd_set_repeater upfOption



" Define syntax region for the command 'set_retention'
" syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
"   \ start=+\<set_retention\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
"   \ contains=@tclOpts,upfCmd_set_retention,tclVarName
" syn match upfCmd_set_retention contained "-\(domain\|elements\|exclude_elements\|retention_power_net\|retention_ground_net\|retention_supply_set\|no_retention\|save_signal\|restore_signal\|save_condition\|restore_condition\|retention_condition\|use_retention_as_primary\|parameters\|instance\|transitive\|update\)\>"
" HiLink upfCmd_set_retention upfOption

syn keyword tclPrimary      contained transparent set_retention skipwhite nextgroup=retention_VarName
syn match   retention_VarName contained "\a\S\+" skipwhite contains=@tclOpts nextgroup=upfCmd_set_retention
syn match upfCmd_set_retention contained "-domain" "-elements" "-exclude_elements" "-retention_power_net" "-retention_ground_net"
HiLink upfCmd_set_retention upfOption
HiLink retention_VarName Type


" Define syntax region for the command 'set_retention_control'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_retention_control\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_retention_control
syn match upfCmd_set_retention_control contained "-\(domain\|save_signal\|restore_signal\|assert_r_mutex\|assert_s_mutex\|assert_rs_mutex\)\>"
HiLink upfCmd_set_retention_control upfOption



" Define syntax region for the command 'set_retention_elements'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_retention_elements\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_retention_elements
syn match upfCmd_set_retention_elements contained "-\(elements\|exclude_elements\|applies_to\|retention_purpose\|transitive\|expand\)\>"
HiLink upfCmd_set_retention_elements upfOption



" Define syntax region for the command 'set_scope'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_scope\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'set_simstate_behavior'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_simstate_behavior\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_simstate_behavior
syn match upfCmd_set_simstate_behavior contained "-\(lib\|model\|elements\|exclude_elements\)\>"
HiLink upfCmd_set_simstate_behavior upfOption



" Define syntax region for the command 'set_variation'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_variation\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_set_variation
syn match upfCmd_set_variation contained "-\(supply\|range\)\>"
HiLink upfCmd_set_variation upfOption



" Define syntax region for the command 'sim_assertion_control'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<sim_assertion_control\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_sim_assertion_control
syn match upfCmd_sim_assertion_control contained "-\(elements\|exclude_elements\|domain\|model\|controlling_domain\|control_expr\|type\|transitive\)\>"
HiLink upfCmd_sim_assertion_control upfOption



" Define syntax region for the command 'sim_corruption_control'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<sim_corruption_control\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_sim_corruption_control
syn match upfCmd_sim_corruption_control contained "-\(type\|elements\|exclude_elements\|model\|domain\|transitive\)\>"
HiLink upfCmd_sim_corruption_control upfOption



" Define syntax region for the command 'sim_replay_control'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<sim_replay_control\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_sim_replay_control
syn match upfCmd_sim_replay_control contained "-\(elements\|exclude_elements\|model\|domain\|controlling_domain\|transitive\)\>"
HiLink upfCmd_sim_replay_control upfOption



" Define syntax region for the command 'upf_object_in_class'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<upf_object_in_class\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_upf_object_in_class
syn match upfCmd_upf_object_in_class contained "-\(class\)\>"
HiLink upfCmd_upf_object_in_class upfOption



" Define syntax region for the command 'upf_query_object_pathname'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<upf_query_object_pathname\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_upf_query_object_pathname
syn match upfCmd_upf_query_object_pathname contained "-\(relative_to\)\>"
HiLink upfCmd_upf_query_object_pathname upfOption



" Define syntax region for the command 'upf_query_object_properties'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<upf_query_object_properties\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_upf_query_object_properties
syn match upfCmd_upf_query_object_properties contained "-\(property\)\>"
HiLink upfCmd_upf_query_object_properties upfOption



" Define syntax region for the command 'upf_query_object_type'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<upf_query_object_type\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'upf_version'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<upf_version\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'use_interface_cell'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<use_interface_cell\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_use_interface_cell
syn match upfCmd_use_interface_cell contained "-\(strategy\|domain\|lib_cells\|map\|elements\|exclude_elements\|applies_to_clamp\|update_any\|force_function\|inverter_supply_set\)\>"
HiLink upfCmd_use_interface_cell upfOption



" Define syntax region for the command 'use_upf_library'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<use_upf_library\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'query_upf'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_upf\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_upf
syn match upfCmd_query_upf contained "-\(pattern\|object_type\|inst_type\|direction\|transitive\|regexp\|exact\|ignore_case\|non_leaf\|leaf_only\)\>"
HiLink upfCmd_query_upf upfOption



" Define syntax region for the command 'query_associate_supply_set'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_associate_supply_set\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_associate_supply_set
syn match upfCmd_query_associate_supply_set contained "-\(detailed\)\>"
HiLink upfCmd_query_associate_supply_set upfOption



" Define syntax region for the command 'query_bind_checker'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_bind_checker\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_bind_checker
syn match upfCmd_query_bind_checker contained "-\(detailed\)\>"
HiLink upfCmd_query_bind_checker upfOption



" Define syntax region for the command 'query_cell_instances'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_cell_instances\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_cell_instances
syn match upfCmd_query_cell_instances contained "-\(domain\)\>"
HiLink upfCmd_query_cell_instances upfOption



" Define syntax region for the command 'query_cell_mapped'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_cell_mapped\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'query_composite_domain'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_composite_domain\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_composite_domain
syn match upfCmd_query_composite_domain contained "-\(detailed\)\>"
HiLink upfCmd_query_composite_domain upfOption



" Define syntax region for the command 'query_design_attributes'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_design_attributes\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_design_attributes
syn match upfCmd_query_design_attributes contained "-\(element\|model\|detailed\)\>"
HiLink upfCmd_query_design_attributes upfOption



" Define syntax region for the command 'query_hdl2upf_vct'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_hdl2upf_vct\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_hdl2upf_vct
syn match upfCmd_query_hdl2upf_vct contained "-\(detailed\)\>"
HiLink upfCmd_query_hdl2upf_vct upfOption



" Define syntax region for the command 'query_isolation'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_isolation\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_isolation
syn match upfCmd_query_isolation contained "-\(domain\|detailed\)\>"
HiLink upfCmd_query_isolation upfOption



" Define syntax region for the command 'query_isolation_control'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_isolation_control\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_isolation_control
syn match upfCmd_query_isolation_control contained "-\(domain\|detailed\)\>"
HiLink upfCmd_query_isolation_control upfOption



" Define syntax region for the command 'query_level_shifter'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_level_shifter\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_level_shifter
syn match upfCmd_query_level_shifter contained "-\(domain\|detailed\)\>"
HiLink upfCmd_query_level_shifter upfOption



" Define syntax region for the command 'query_map_isolation_cell'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_map_isolation_cell\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_map_isolation_cell
syn match upfCmd_query_map_isolation_cell contained "-\(domain\|detailed\)\>"
HiLink upfCmd_query_map_isolation_cell upfOption



" Define syntax region for the command 'query_map_level_shifter_cell'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_map_level_shifter_cell\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_map_level_shifter_cell
syn match upfCmd_query_map_level_shifter_cell contained "-\(domain\|detailed\)\>"
HiLink upfCmd_query_map_level_shifter_cell upfOption



" Define syntax region for the command 'query_map_power_switch'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_map_power_switch\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_map_power_switch
syn match upfCmd_query_map_power_switch contained "-\(detailed\)\>"
HiLink upfCmd_query_map_power_switch upfOption



" Define syntax region for the command 'query_map_retention_cell'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_map_retention_cell\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_map_retention_cell
syn match upfCmd_query_map_retention_cell contained "-\(domain\|detailed\)\>"
HiLink upfCmd_query_map_retention_cell upfOption



" Define syntax region for the command 'query_name_format'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_name_format\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_name_format
syn match upfCmd_query_name_format contained "-\(isolation_prefix\|isolation_suffix\|level_shift_prefix\|level_shift_suffix\|implicit_supply_prefix\|implicit_supply_suffix\|implicit_logic_prefix\|implicit_logic_suffix\|detailed\)\>"
HiLink upfCmd_query_name_format upfOption



" Define syntax region for the command 'query_net_ports'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_net_ports\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_net_ports
syn match upfCmd_query_net_ports contained "-\(transitive\|leaf\)\>"
HiLink upfCmd_query_net_ports upfOption



" Define syntax region for the command 'query_partial_on_translation'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_partial_on_translation\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'query_pin_related_supply'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_pin_related_supply\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_pin_related_supply
syn match upfCmd_query_pin_related_supply contained "-\(detailed\)\>"
HiLink upfCmd_query_pin_related_supply upfOption



" Define syntax region for the command 'query_port_attributes'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_port_attributes\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_port_attributes
syn match upfCmd_query_port_attributes contained "-\(detailed\)\>"
HiLink upfCmd_query_port_attributes upfOption



" Define syntax region for the command 'query_port_direction'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_port_direction\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'query_port_net'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_port_net\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_port_net
syn match upfCmd_query_port_net contained "-\(conn\)\>"
HiLink upfCmd_query_port_net upfOption



" Define syntax region for the command 'query_port_state'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_port_state\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_port_state
syn match upfCmd_query_port_state contained "-\(state\|detailed\)\>"
HiLink upfCmd_query_port_state upfOption



" Define syntax region for the command 'query_power_domain'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_power_domain\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_power_domain
syn match upfCmd_query_power_domain contained "-\(non_leaf\|all\|no_elements\|detailed\)\>"
HiLink upfCmd_query_power_domain upfOption



" Define syntax region for the command 'query_power_domain_element'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_power_domain_element\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'query_power_state'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_power_state\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_power_state
syn match upfCmd_query_power_state contained "-\(state\|detailed\)\>"
HiLink upfCmd_query_power_state upfOption



" Define syntax region for the command 'query_power_switch'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_power_switch\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_power_switch
syn match upfCmd_query_power_switch contained "-\(detailed\)\>"
HiLink upfCmd_query_power_switch upfOption



" Define syntax region for the command 'query_pst'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_pst\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_pst
syn match upfCmd_query_pst contained "-\(detailed\)\>"
HiLink upfCmd_query_pst upfOption



" Define syntax region for the command 'query_pst_state'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_pst_state\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_pst_state
syn match upfCmd_query_pst_state contained "-\(pst\|detailed\)\>"
HiLink upfCmd_query_pst_state upfOption



" Define syntax region for the command 'query_retention'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_retention\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_retention
syn match upfCmd_query_retention contained "-\(domain\|detailed\)\>"
HiLink upfCmd_query_retention upfOption



" Define syntax region for the command 'query_retention_control'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_retention_control\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_retention_control
syn match upfCmd_query_retention_control contained "-\(domain\|detailed\)\>"
HiLink upfCmd_query_retention_control upfOption



" Define syntax region for the command 'query_retention_elements'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_retention_elements\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_retention_elements
syn match upfCmd_query_retention_elements contained "-\(detailed\)\>"
HiLink upfCmd_query_retention_elements upfOption



" Define syntax region for the command 'query_simstate_behavior'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_simstate_behavior\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_simstate_behavior
syn match upfCmd_query_simstate_behavior contained "-\(lib\|model\|detailed\)\>"
HiLink upfCmd_query_simstate_behavior upfOption



" Define syntax region for the command 'query_state_transition'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_state_transition\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_state_transition
syn match upfCmd_query_state_transition contained "-\(object\|from\|to\|paired\|legal\|illegal\|detailed\)\>"
HiLink upfCmd_query_state_transition upfOption



" Define syntax region for the command 'query_supply_net'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_supply_net\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_supply_net
syn match upfCmd_query_supply_net contained "-\(domain\|is_supply\|detailed\)\>"
HiLink upfCmd_query_supply_net upfOption



" Define syntax region for the command 'query_supply_port'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_supply_port\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_supply_port
syn match upfCmd_query_supply_port contained "-\(domain\|is_supply\|detailed\)\>"
HiLink upfCmd_query_supply_port upfOption



" Define syntax region for the command 'query_supply_set'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_supply_set\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_supply_set
syn match upfCmd_query_supply_set contained "-\(detailed\|transitive\)\>"
HiLink upfCmd_query_supply_set upfOption



" Define syntax region for the command 'query_upf2hdl_vct'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_upf2hdl_vct\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_upf2hdl_vct
syn match upfCmd_query_upf2hdl_vct contained "-\(detailed\)\>"
HiLink upfCmd_query_upf2hdl_vct upfOption



" Define syntax region for the command 'query_use_interface_cell'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<query_use_interface_cell\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+
  \ contains=@tclOpts,upfCmd_query_use_interface_cell
syn match upfCmd_query_use_interface_cell contained "-\(strategy\|domain\|detailed\)\>"
HiLink upfCmd_query_use_interface_cell upfOption



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
