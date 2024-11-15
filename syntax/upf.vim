" Vim syntax file
" Language:	   UPF
" Description: UPF is an extension of tcl. Please refer to 'https://www.p1801.org/'
"              for further info. This syntax file is copied from vim's builtin tcl
"              syntax file and extended further 
" Maintainer:  Soumendu Ghorui <soumendu@verific.com>
" URL:		

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Basic Tcl commands: http://www.tcl.tk/man/tcl8.6/TclCmd/contents.htm
syn keyword tclCommand		after append array bgerror binary cd chan clock close concat
syn keyword tclCommand		dde dict encoding eof error eval exec exit expr fblocked
syn keyword tclCommand		fconfigure fcopy file fileevent flush format gets glob
syn keyword tclCommand		global history http incr info interp join lappend lassign
syn keyword tclCommand		lindex linsert list llength lmap load lrange lrepeat
syn keyword tclCommand		lreplace lreverse lsearch lset lsort memory my namespace
syn keyword tclCommand		next nextto open package pid puts pwd read refchan regexp
syn keyword tclCommand		registry regsub rename scan seek self set socket source
syn keyword tclCommand		split string subst tell time trace unknown unload unset
syn keyword tclCommand		update uplevel upvar variable vwait

" The 'Tcl Standard Library' commands: http://www.tcl.tk/man/tcl8.6/TclCmd/library.htm
syn keyword tclCommand		auto_execok auto_import auto_load auto_mkindex auto_reset
syn keyword tclCommand		auto_qualify tcl_findLibrary parray tcl_endOfWord
syn keyword tclCommand		tcl_startOfNextWord tcl_startOfPreviousWord
syn keyword tclCommand		tcl_wordBreakAfter tcl_wordBreakBefore

" The standard UPF commands:
syn keyword upfCommand          add_domain_elements
syn keyword upfCommand          add_parameter
syn keyword upfCommand          add_port_state
syn keyword upfCommand          add_power_state
syn keyword upfCommand          add_pst_state
syn keyword upfCommand          add_state_transition
syn keyword upfCommand          add_supply_state
syn keyword upfCommand          apply_power_model
syn keyword upfCommand          associate_supply_set
syn keyword upfCommand          begin_power_model
syn keyword upfCommand          bind_checker
syn keyword upfCommand          connect_logic_net
syn keyword upfCommand          connect_supply_net
syn keyword upfCommand          connect_supply_set
syn keyword upfCommand          create_abstract_power_source
syn keyword upfCommand          create_composite_domain
syn keyword upfCommand          create_hdl2upf_vct
syn keyword upfCommand          create_logic_net
syn keyword upfCommand          create_logic_port
syn keyword upfCommand          create_power_domain
syn keyword upfCommand          create_power_switch
syn keyword upfCommand          create_power_state_group
syn keyword upfCommand          create_pst
syn keyword upfCommand          create_supply_net
syn keyword upfCommand          create_supply_port
syn keyword upfCommand          create_supply_set
syn keyword upfCommand          create_upf2hdl_vct
syn keyword upfCommand          create_upf_library
syn keyword upfCommand          create_vcm
syn keyword upfCommand          define_always_on_cell
syn keyword upfCommand          define_diode_clamp
syn keyword upfCommand          define_isolation_cell
syn keyword upfCommand          define_level_shifter_cell
syn keyword upfCommand          define_power_model
syn keyword upfCommand          define_power_switch_cell
syn keyword upfCommand          define_retention_cell
syn keyword upfCommand          describe_state_transition
syn keyword upfCommand          end_power_model
syn keyword upfCommand          find_objects
syn keyword upfCommand          get_supply_net
syn keyword upfCommand          load_simstate_behavior
syn keyword upfCommand          load_upf
syn keyword upfCommand          load_upf_library
syn keyword upfCommand          load_upf_protected
syn keyword upfCommand          map_isolation_cell
syn keyword upfCommand          map_level_shifter_cell
syn keyword upfCommand          map_power_switch
syn keyword upfCommand          map_repeater_cell
syn keyword upfCommand          map_retention_cell
syn keyword upfCommand          map_retention_clamp_cell
syn keyword upfCommand          merge_power_domains
syn keyword upfCommand          name_format
syn keyword upfCommand          save_upf
syn keyword upfCommand          set_correlated
syn keyword upfCommand          set_design_attributes
syn keyword upfCommand          set_design_top
syn keyword upfCommand          set_domain_supply_net
syn keyword upfCommand          set_equivalent
syn keyword upfCommand          set_isolation
syn keyword upfCommand          set_isolation_control
syn keyword upfCommand          set_level_shifter
syn keyword upfCommand          set_partial_on_translation
syn keyword upfCommand          set_pin_related_supply
syn keyword upfCommand          set_port_attributes
syn keyword upfCommand          set_power_switch
syn keyword upfCommand          set_related_supply_net
syn keyword upfCommand          set_repeater
syn keyword upfCommand          set_retention
syn keyword upfCommand          set_retention_control
syn keyword upfCommand          set_retention_elements
syn keyword upfCommand          set_scope
syn keyword upfCommand          set_simstate_behavior
syn keyword upfCommand          set_variation
syn keyword upfCommand          sim_assertion_control
syn keyword upfCommand          sim_corruption_control
syn keyword upfCommand          sim_replay_control
syn keyword upfCommand          upf_object_in_class
syn keyword upfCommand          upf_query_object_pathname
syn keyword upfCommand          upf_query_object_properties
syn keyword upfCommand          upf_query_object_type
syn keyword upfCommand          upf_version
syn keyword upfCommand          use_interface_cell
syn keyword upfCommand          use_upf_library
syn keyword upfCommand          query_upf
syn keyword upfCommand          query_associate_supply_set
syn keyword upfCommand          query_bind_checker
syn keyword upfCommand          query_cell_instances
syn keyword upfCommand          query_cell_mapped
syn keyword upfCommand          query_composite_domain
syn keyword upfCommand          query_design_attributes
syn keyword upfCommand          query_hdl2upf_vct
syn keyword upfCommand          query_isolation
syn keyword upfCommand          query_isolation_control
syn keyword upfCommand          query_level_shifter
syn keyword upfCommand          query_map_isolation_cell
syn keyword upfCommand          query_map_level_shifter_cell
syn keyword upfCommand          query_map_power_switch
syn keyword upfCommand          query_map_retention_cell
syn keyword upfCommand          query_name_format
syn keyword upfCommand          query_net_ports
syn keyword upfCommand          query_partial_on_translation
syn keyword upfCommand          query_pin_related_supply
syn keyword upfCommand          query_port_attributes
syn keyword upfCommand          query_port_direction
syn keyword upfCommand          query_port_net
syn keyword upfCommand          query_port_state
syn keyword upfCommand          query_power_domain
syn keyword upfCommand          query_power_domain_element
syn keyword upfCommand          query_power_state
syn keyword upfCommand          query_power_switch
syn keyword upfCommand          query_pst
syn keyword upfCommand          query_pst_state
syn keyword upfCommand          query_retention
syn keyword upfCommand          query_retention_control
syn keyword upfCommand          query_retention_elements
syn keyword upfCommand          query_simstate_behavior
syn keyword upfCommand          query_state_transition
syn keyword upfCommand          query_supply_net
syn keyword upfCommand          query_supply_port
syn keyword upfCommand          query_supply_set
syn keyword upfCommand          query_upf2hdl_vct
syn keyword upfCommand          query_use_interface_cell

" UPF options:
syn match   upfOption               '\-pattern'
syn match   upfOption               '\-on_state'
syn match   upfOption               '\-switch_cell_type'
syn match   upfOption               '\-off_state'
syn match   upfOption               '\-inst_type'
syn match   upfOption               '\-retention_check'
syn match   upfOption               '\-data_pins'
syn match   upfOption               '\-element'
syn match   upfOption               '\-force_isolation'
syn match   upfOption               '\-range'
syn match   upfOption               '\-off_tools'
syn match   upfOption               '\-implicit_logic_prefix'
syn match   upfOption               '\-related_bias_ports'
syn match   upfOption               '\-elements'
syn match   upfOption               '\-connect'
syn match   upfOption               '\-non_dedicated'
syn match   upfOption               '\-bypass_enable'
syn match   upfOption               '\-class'
syn match   upfOption               '\-update_any'
syn match   upfOption               '\-output_ground_pin'
syn match   upfOption               '\-default'
syn match   upfOption               '\-model'
syn match   upfOption               '\-port_map'
syn match   upfOption               '\-contents'
syn match   upfOption               '\-sink'
syn match   upfOption               '\-hdl_type'
syn match   upfOption               '\-include_scope'
syn match   upfOption               '\-is_soft_macro'
syn match   upfOption               '\-lib_cell_type'
syn match   upfOption               '\-power_switchable'
syn match   upfOption               '\-clock_clamp_lib_cells'
syn match   upfOption               '\-use_functional_equivalence'
syn match   upfOption               '\-transition'
syn match   upfOption               '\-applies_to'
syn match   upfOption               '\-on_partial_state'
syn match   upfOption               '\-supply'
syn match   upfOption               '\-force_function'
syn match   upfOption               '\-all_equivalent'
syn match   upfOption               '\-output_power_pin'
syn match   upfOption               '\-ack_polarity'
syn match   upfOption               '\-name_prefix'
syn match   upfOption               '\-retention_power_net'
syn match   upfOption               '\-level_shift_prefix'
syn match   upfOption               '\-related_ground_port'
syn match   upfOption               '\-ack_delay'
syn match   upfOption               '\-clamp_cell'
syn match   upfOption               '\-implicit_logic_suffix'
syn match   upfOption               '\-is_supply'
syn match   upfOption               '\-version'
syn match   upfOption               '\-inverter_supply_set'
syn match   upfOption               '\-save_function'
syn match   upfOption               '\-no_elements'
syn match   upfOption               '\-cells'
syn match   upfOption               '\-applies_to_sink_off_clamp'
syn match   upfOption               '\-pg_type'
syn match   upfOption               '\-description'
syn match   upfOption               '\-control_port'
syn match   upfOption               '\-is_leaf_cell'
syn match   upfOption               '\-threshold'
syn match   upfOption               '\-gate_bias_pin'
syn match   upfOption               '\-table'
syn match   upfOption               '\-always_on_components'
syn match   upfOption               '\-detailed'
syn match   upfOption               '\-ground_input_voltage_range'
syn match   upfOption               '\-object_type'
syn match   upfOption               '\-input_voltage_range'
syn match   upfOption               '\-hide_globals'
syn match   upfOption               '\-transitive'
syn match   upfOption               '\-reference_gnd'
syn match   upfOption               '\-ground'
syn match   upfOption               '\-leaf_only'
syn match   upfOption               '\-supply_set'
syn match   upfOption               '\-is_hard_macro'
syn match   upfOption               '\-isolation_ground_net'
syn match   upfOption               '\-repeater_supply'
syn match   upfOption               '\-property'
syn match   upfOption               '\-conn'
syn match   upfOption               '\-map'
syn match   upfOption               '\-boundary_supplies'
syn match   upfOption               '\-reuse'
syn match   upfOption               '\-scope'
syn match   upfOption               '\-driver_supply'
syn match   upfOption               '\-function_only'
syn match   upfOption               '\-object'
syn match   upfOption               '\-strategy'
syn match   upfOption               '\-rule'
syn match   upfOption               '\-exclude_domains'
syn match   upfOption               '\-no_retention'
syn match   upfOption               '\-implicit_supply_prefix'
syn match   upfOption               '\-bind_to'
syn match   upfOption               '\-input_supply_set'
syn match   upfOption               '\-parameters'
syn match   upfOption               '\-simulation_only'
syn match   upfOption               '\-stage_2_output'
syn match   upfOption               '\-is_analog'
syn match   upfOption               '\-applies_to_source_off_clamp'
syn match   upfOption               '\-retention_ground_net'
syn match   upfOption               '\-vct'
syn match   upfOption               '\-related_ground_pin'
syn match   upfOption               '\-retention_supply_set'
syn match   upfOption               '\-use_equivalence'
syn match   upfOption               '\-simstate'
syn match   upfOption               '\-enable'
syn match   upfOption               '\-instance'
syn match   upfOption               '\-source'
syn match   upfOption               '\-define_func_type'
syn match   upfOption               '\-restore_condition'
syn match   upfOption               '\-from'
syn match   upfOption               '\-vcms'
syn match   upfOption               '\-models'
syn match   upfOption               '\-pin_groups'
syn match   upfOption               '\-applies_to_boundary'
syn match   upfOption               '\-available_supplies'
syn match   upfOption               '\-name_suffix'
syn match   upfOption               '\-restore_signal'
syn match   upfOption               '\-lib_cells'
syn match   upfOption               '\-related_power_pin'
syn match   upfOption               '\-ground_output_voltage_range'
syn match   upfOption               '\-aux_enables'
syn match   upfOption               '\-arch'
syn match   upfOption               '\-sink_off_clamp'
syn match   upfOption               '\-to'
syn match   upfOption               '\-port'
syn match   upfOption               '\-module'
syn match   upfOption               '\-multi_stage'
syn match   upfOption               '\-output_supply_port'
syn match   upfOption               '\-nets'
syn match   upfOption               '\-is_macro_cell'
syn match   upfOption               '\-type'
syn match   upfOption               '\-rail_connection'
syn match   upfOption               '\-retention_condition'
syn match   upfOption               '\-subdomains'
syn match   upfOption               '\-power_domains'
syn match   upfOption               '\-isolation_prefix'
syn match   upfOption               '\-unconnected'
syn match   upfOption               '\-diff_supply_only'
syn match   upfOption               '\-internal_supply_set'
syn match   upfOption               '\-output_voltage_range'
syn match   upfOption               '\-isolation_power_net'
syn match   upfOption               '\-save_condition'
syn match   upfOption               '\-no_isolation'
syn match   upfOption               '\-ignore_case'
syn match   upfOption               '\-domain'
syn match   upfOption               '\-supplies'
syn match   upfOption               '\-object_list'
syn match   upfOption               '\-sets'
syn match   upfOption               '\-conversion_direction'
syn match   upfOption               '\-leaf'
syn match   upfOption               '\-lib_model_name'
syn match   upfOption               '\-pst'
syn match   upfOption               '\-assert_rs_mutex'
syn match   upfOption               '\-restore_function'
syn match   upfOption               '\-domains'
syn match   upfOption               '\-related_power_port'
syn match   upfOption               '\-input_supply_port'
syn match   upfOption               '\-valid_location'
syn match   upfOption               '\-field'
syn match   upfOption               '\-legal'
syn match   upfOption               '\-controlling_domain'
syn match   upfOption               '\-exclude_ports'
syn match   upfOption               '\-assert_s_mutex'
syn match   upfOption               '\-literal_supply'
syn match   upfOption               '\-use_retention_as_primary'
syn match   upfOption               '\-reconnect'
syn match   upfOption               '\-resolve'
syn match   upfOption               '\-direction'
syn match   upfOption               '\-control_expr'
syn match   upfOption               '\-atomic'
syn match   upfOption               '\-input_power_pin'
syn match   upfOption               '\-level_shift_suffix'
syn match   upfOption               '\-stage_1_enable'
syn match   upfOption               '\-full_on_tools'
syn match   upfOption               '\-clamp_value'
syn match   upfOption               '\-cell_type'
syn match   upfOption               '\-is_isolated'
syn match   upfOption               '\-isolated_pins'
syn match   upfOption               '\-illegal'
syn match   upfOption               '\-no_enable'
syn match   upfOption               '\-location'
syn match   upfOption               '\-source_off_clamp'
syn match   upfOption               '\-assert_r_mutex'
syn match   upfOption               '\-complete'
syn match   upfOption               '\-expand'
syn match   upfOption               '\-all'
syn match   upfOption               '\-switch_type'
syn match   upfOption               '\-regexp'
syn match   upfOption               '\-isolation_sense'
syn match   upfOption               '\-ack_port'
syn match   upfOption               '\-exclude_elements'
syn match   upfOption               '\-paired'
syn match   upfOption               '\-save_signal'
syn match   upfOption               '\-ground_switchable'
syn match   upfOption               '\-supply_map'
syn match   upfOption               '\-output_supply_set'
syn match   upfOption               '\-no_shift'
syn match   upfOption               '\-repeater_supply_set'
syn match   upfOption               '\-function'
syn match   upfOption               '\-async_clamp_lib_cells'
syn match   upfOption               '\-primary_power_net'
syn match   upfOption               '\-stage_1_output'
syn match   upfOption               '\-for'
syn match   upfOption               '\-always_on_pins'
syn match   upfOption               '\-restore_check'
syn match   upfOption               '\-traverse_macros'
syn match   upfOption               '\-non_leaf'
syn match   upfOption               '\-attribute'
syn match   upfOption               '\-file'
syn match   upfOption               '\-isolation_signal'
syn match   upfOption               '\-lib'
syn match   upfOption               '\-group'
syn match   upfOption               '\-state'
syn match   upfOption               '\-implicit_supply_suffix'
syn match   upfOption               '\-virtual'
syn match   upfOption               '\-pins'
syn match   upfOption               '\-handle'
syn match   upfOption               '\-primary_ground_net'
syn match   upfOption               '\-interchangeable'
syn match   upfOption               '\-force_shift'
syn match   upfOption               '\-power'
syn match   upfOption               '\-exact'
syn match   upfOption               '\-params'
syn match   upfOption               '\-update'
syn match   upfOption               '\-hold_check'
syn match   upfOption               '\-receiver_supply'
syn match   upfOption               '\-applies_to_clamp'
syn match   upfOption               '\-ports'
syn match   upfOption               '\-power_switch'
syn match   upfOption               '\-error_state'
syn match   upfOption               '\-isolation_supply_set'
syn match   upfOption               '\-input_ground_pin'
syn match   upfOption               '\-relative_to'
syn match   upfOption               '\-isolation_suffix'
syn match   upfOption               '\-save_check'
syn match   upfOption               '\-feedthrough'
syn match   upfOption               '\-retention_purpose'
syn match   upfOption               '\-stage_2_enable'

" Global variables used by Tcl: http://www.tcl.tk/man/tcl8.6/TclCmd/tclvars.htm
syn keyword tclVars		auto_path env errorCode errorInfo tcl_library tcl_patchLevel
syn keyword tclVars		tcl_pkgPath tcl_platform tcl_precision tcl_rcFileName
syn keyword tclVars		tcl_traceCompile tcl_traceExec tcl_wordchars
syn keyword tclVars		tcl_nonwordchars tcl_version argc argv argv0 tcl_interactive

" Strings which expr accepts as boolean values, aside from zero / non-zero.
syn keyword tclBoolean		true false on off yes no

syn keyword tclProcCommand	apply coroutine proc return tailcall yield yieldto
syn keyword tclConditional	if then else elseif switch
syn keyword tclConditional	catch try throw finally
syn keyword tclLabel		default
syn keyword tclRepeat		while for foreach break continue

syn keyword tcltkSwitch	contained	insert create polygon fill outline tag

" WIDGETS
" commands associated with widgets
syn keyword tcltkWidgetSwitch contained background highlightbackground insertontime cget
syn keyword tcltkWidgetSwitch contained selectborderwidth borderwidth highlightcolor insertwidth
syn keyword tcltkWidgetSwitch contained selectforeground cursor highlightthickness padx setgrid
syn keyword tcltkWidgetSwitch contained exportselection insertbackground pady takefocus
syn keyword tcltkWidgetSwitch contained font insertborderwidth relief xscrollcommand
syn keyword tcltkWidgetSwitch contained foreground insertofftime selectbackground yscrollcommand
syn keyword tcltkWidgetSwitch contained height spacing1 spacing2 spacing3
syn keyword tcltkWidgetSwitch contained state tabs width wrap
" button
syn keyword tcltkWidgetSwitch contained command default
" canvas
syn keyword tcltkWidgetSwitch contained closeenough confine scrollregion xscrollincrement yscrollincrement orient
" checkbutton, radiobutton
syn keyword tcltkWidgetSwitch contained indicatoron offvalue onvalue selectcolor selectimage state variable
" entry, frame
syn keyword tcltkWidgetSwitch contained show class colormap container visual
" listbox, menu
syn keyword tcltkWidgetSwitch contained selectmode postcommand selectcolor tearoff tearoffcommand title type
" menubutton, message
syn keyword tcltkWidgetSwitch contained direction aspect justify
" scale
syn keyword tcltkWidgetSwitch contained bigincrement digits from length resolution showvalue sliderlength sliderrelief tickinterval to
" scrollbar
syn keyword tcltkWidgetSwitch contained activerelief elementborderwidth
" image
syn keyword tcltkWidgetSwitch contained delete names types create
" variable reference
	" ::optional::namespaces
syn match tclVarRef "$\(\(::\)\?\([[:alnum:]_]*::\)*\)\a[[:alnum:]_]*"
	" ${...} may contain any character except '}'
syn match tclVarRef "${[^}]*}"

" Used to facilitate hack to utilize string background for certain color
" schemes, e.g. inkpot and lettuce.
syn cluster tclVarRefC add=tclVarRef
syn cluster tclSpecialC add=tclSpecial

" The syntactic unquote-splicing replacement for [expand].
syn match tclExpand '\s{\*}'
syn match tclExpand '^{\*}'

" menu, mane add
syn keyword tcltkWidgetSwitch contained active end last none cascade checkbutton command radiobutton separator
syn keyword tcltkWidgetSwitch contained activebackground actveforeground accelerator background bitmap columnbreak
syn keyword tcltkWidgetSwitch contained font foreground hidemargin image indicatoron label menu offvalue onvalue
syn keyword tcltkWidgetSwitch contained selectcolor selectimage state underline value variable
syn keyword tcltkWidgetSwitch contained add clone configure delete entrycget entryconfigure index insert invoke
syn keyword tcltkWidgetSwitch contained post postcascade type unpost yposition activate
"syn keyword tcltkWidgetSwitch contained
"syn match tcltkWidgetSwitch contained
syn region tcltkWidget matchgroup=tcltkWidgetColor start="\<button\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1 contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef
syn region tcltkWidget matchgroup=tcltkWidgetColor start="\<scale\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef

syn region tcltkWidget matchgroup=tcltkWidgetColor start="\<canvas\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef
syn region tcltkWidget matchgroup=tcltkWidgetColor start="\<checkbutton\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef
syn region tcltkWidget matchgroup=tcltkWidgetColor start="\<entry\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef
syn region tcltkWidget matchgroup=tcltkWidgetColor start="\<frame\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef
syn region tcltkWidget matchgroup=tcltkWidgetColor start="\<image\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef
syn region tcltkWidget matchgroup=tcltkWidgetColor start="\<listbox\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef
syn region tcltkWidget matchgroup=tcltkWidgetColor start="\<menubutton\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef
syn region tcltkWidget matchgroup=tcltkWidgetColor start="\<message\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef
syn region tcltkWidget matchgroup=tcltkWidgetColor start="\<radiobutton\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1 contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef
syn region tcltkWidget matchgroup=tcltkWidgetColor start="\<scrollbar\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef
" These words are dual purpose.
" match switches
"syn match tcltkWidgetSwitch contained "-text"hs=s+1
syn match tcltkWidgetSwitch contained "-text\(var\)\?"hs=s+1
syn match tcltkWidgetSwitch contained "-menu"hs=s+1
syn match tcltkWidgetSwitch contained "-label"hs=s+1
" match commands - 2 lines for pretty match.
"variable
" Special case - If a number follows a variable region, it must be at the end of
" the pattern, by definition. Therefore, (1) either include a number as the region
" end and exclude tclNumber from the contains list, or (2) make variable
" keepend. As (1) would put variable out of step with everything else, use (2).
syn region tcltkCommand matchgroup=tcltkCommandColor start="^\<variable\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tclString,tclNumber,tclVarRef,tcltkCommand
syn region tcltkCommand matchgroup=tcltkCommandColor start="\s\<variable\>\|\[\<variable\>"hs=s+1 matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tclString,tclNumber,tclVarRef,tcltkCommand
" menu
syn region tcltkWidget matchgroup=tcltkWidgetColor start="^\<menu\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef
syn region tcltkWidget matchgroup=tcltkWidgetColor start="\s\<menu\>\|\[\<menu\>"hs=s+1 matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef
" label
syn region tcltkWidget matchgroup=tcltkWidgetColor start="^\<label\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef
syn region tcltkWidget matchgroup=tcltkWidgetColor start="\s\<label\>\|\[\<label\>"hs=s+1 matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef
" text
syn region tcltkWidget matchgroup=tcltkWidgetColor start="^\<text\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidget,tcltkWidgetSwitch,tcltkSwitch,tclNumber,tclVarRef,tclString
syn region tcltkWidget matchgroup=tcltkWidgetColor start="\s\<text\>\|\[\<text\>"hs=s+1 matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidget,tcltkWidgetSwitch,tclString,tcltkSwitch,tclNumber,tclVarRef

" This isn't contained (I don't think) so it's OK to just associate with the Color group.
" TODO: This could be wrong.
syn keyword tcltkWidgetColor	toplevel


syn region tcltkPackConf matchgroup=tcltkPackConfColor start="\<configure\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tcltkPackConfSwitch,tclNumber,tclVarRef keepend
syn region tcltkPackConf matchgroup=tcltkPackConfColor start="\<cget\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"me=e-1  contains=tclLineContinue,tcltkWidgetSwitch,tclString,tcltkSwitch,tcltkPackConfSwitch,tclNumber,tclVarRef


" NAMESPACE
" commands associated with namespace
syn keyword tcltkNamespaceSwitch contained children code current delete eval
syn keyword tcltkNamespaceSwitch contained export forget import inscope origin
syn keyword tcltkNamespaceSwitch contained parent qualifiers tail which command variable
syn region tcltkCommand matchgroup=tcltkCommandColor start="\<namespace\>" matchgroup=NONE skip="^\s*$" end="{\|}\|]\|\"\|[^\\]*\s*$"me=e-1  contains=tclLineContinue,tcltkNamespaceSwitch

" EXPR
" commands associated with expr
syn keyword tcltkMaths contained	abs acos asin atan atan2 bool ceil cos cosh double entier
syn keyword tcltkMaths contained	exp floor fmod hypot int isqrt log log10 max min pow rand
syn keyword tcltkMaths contained	round sin sinh sqrt srand tan tanh wide

syn region tcltkCommand matchgroup=tcltkCommandColor start="\<expr\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"me=e-1  contains=tclLineContinue,tcltkMaths,tclNumber,tclVarRef,tclString,tcltlWidgetSwitch,tcltkCommand,tcltkPackConf

" format
syn region tcltkCommand matchgroup=tcltkCommandColor start="\<format\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"me=e-1  contains=tclLineContinue,tcltkMaths,tclNumber,tclVarRef,tclString,tcltlWidgetSwitch,tcltkCommand,tcltkPackConf

" PACK
" commands associated with pack
syn keyword tcltkPackSwitch	contained	forget info propagate slaves
syn keyword tcltkPackConfSwitch	contained	after anchor before expand fill in ipadx ipady padx pady side
syn region tcltkCommand matchgroup=tcltkCommandColor start="\<pack\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkPackSwitch,tcltkPackConf,tcltkPackConfSwitch,tclNumber,tclVarRef,tclString,tcltkCommand keepend

" STRING
" commands associated with string
syn keyword tcltkStringSwitch	contained	compare first index last length match range tolower toupper trim trimleft trimright wordstart wordend
syn region tcltkCommand matchgroup=tcltkCommandColor start="\<string\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkStringSwitch,tclNumber,tclVarRef,tclString,tcltkCommand

" ARRAY
" commands associated with array
syn keyword tcltkArraySwitch	contained	anymore donesearch exists get names nextelement size startsearch set
" match from command name to ] or EOL
syn region tcltkCommand matchgroup=tcltkCommandColor start="\<array\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkArraySwitch,tclNumber,tclVarRef,tclString,tcltkCommand

" LSORT
" switches for lsort
syn keyword tcltkLsortSwitch	contained	ascii dictionary integer real command increasing decreasing index
" match from command name to ] or EOL
syn region tcltkCommand matchgroup=tcltkCommandColor start="\<lsort\>" matchgroup=NONE skip="^\s*$" end="]\|[^\\]*\s*$"he=e-1  contains=tclLineContinue,tcltkLsortSwitch,tclNumber,tclVarRef,tclString,tcltkCommand

syn keyword tclTodo contained	TODO

" Sequences which are backslash-escaped: http://www.tcl.tk/man/tcl8.5/TclCmd/Tcl.htm#M16
" Octal, hexadecimal, Unicode codepoints, and the classics.
" Tcl takes as many valid characters in a row as it can, so \xAZ in a string is newline followed by 'Z'.
syn match   tclSpecial contained '\\\(\o\{1,3}\|x\x\{1,2}\|u\x\{1,4}\|[abfnrtv]\)'
syn match   tclSpecial contained '\\[\[\]\{\}\"\$]'

" Command appearing inside another command or inside a string.
syn region tclEmbeddedStatement	start='\[' end='\]' contained contains=tclCommand,upfCommand,tclNumber,tclLineContinue,tclString,tclVarRef,tclEmbeddedStatement
" A string needs the skip argument as it may legitimately contain \".
" Match at start of line
syn region  tclString		  start=+^"+ end=+"+ contains=@tclSpecialC,@Spell skip=+\\\\\|\\"+
"Match all other legal strings.
syn region  tclString		  start=+[^\\]"+ms=s+1  end=+"+ contains=@tclSpecialC,@tclVarRefC,tclEmbeddedStatement,@Spell skip=+\\\\\|\\"+

" Line continuation is backslash immediately followed by newline.
syn match tclLineContinue '\\$'

if exists('g:tcl_warn_continuation')
    syn match tclNotLineContinue '\\\s\+$'
endif

"integer number, or floating point number without a dot and with "f".
syn case ignore
syn match  tclNumber		"\<\d\+\(u\=l\=\|lu\|f\)\>"
"floating point number, with dot, optional exponent
syn match  tclNumber		"\<\d\+\.\d*\(e[-+]\=\d\+\)\=[fl]\=\>"
"floating point number, starting with a dot, optional exponent
syn match  tclNumber		"\.\d\+\(e[-+]\=\d\+\)\=[fl]\=\>"
"floating point number, without dot, with exponent
syn match  tclNumber		"\<\d\+e[-+]\=\d\+[fl]\=\>"
"hex number
syn match  tclNumber		"0x\x\+\(u\=l\=\|lu\)\>"
"syn match  tclIdentifier	"\<\h\w*\>"
syn case match

syn region  tclComment		start="^\s*\#" skip="\\$" end="$" contains=tclTodo,@Spell
syn region  tclComment		start=/;\s*\#/hs=s+1 skip="\\$" end="$" contains=tclTodo,@Spell

"syn match tclComment /^\s*\#.*$/
"syn match tclComment /;\s*\#.*$/hs=s+1

"syn sync ccomment tclComment

" Define the default highlighting.
" Only when an item doesn't have highlighting yet

hi def link tcltkSwitch		Special
hi def link tclExpand		Special
hi def link tclLabel		Label
hi def link tclConditional		Conditional
hi def link tclRepeat		Repeat
hi def link tclNumber		Number
hi def link tclError		Error
hi def link tclCommand		Statement
hi def link upfCommand		Statement
hi def link tclProcCommand		Type
hi def link tclString		String
hi def link tclComment		Comment
hi def link tclSpecial		Special
hi def link tclTodo		Todo
" Below here are the commands and their options.
hi def link tcltkCommandColor	Statement
hi def link tcltkWidgetColor	Structure
hi def link tclLineContinue	WarningMsg
if exists('g:tcl_warn_continuation')
hi def link tclNotLineContinue	ErrorMsg
endif
hi def link tcltkStringSwitch	Special
hi def link tcltkArraySwitch	Special
hi def link tcltkLsortSwitch	Special
hi def link tcltkPackSwitch	Special
hi def link tcltkPackConfSwitch	Special
hi def link tcltkMaths		Special
hi def link tcltkNamespaceSwitch	Special
hi def link tcltkWidgetSwitch	Special
hi def link upfOption		Special
hi def link tcltkPackConfColor	Identifier
hi def link tclVarRef		Identifier


let b:current_syntax = "upf"

" vim: ts=8 noet nolist
