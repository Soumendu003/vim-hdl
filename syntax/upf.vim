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
syn region tclEmbeddedStatement	start='\[' end='\]' contained contains=tclCommand,tclNumber,tclLineContinue,tclString,tclVarRef,tclEmbeddedStatement
" A string needs the skip argument as it may legitimately contain \".
" Match at start of line
syn region  tclString		  start=+^"+ end=+"+ contains=@tclSpecialC,@Spell skip=+\\\\\|\\"+
"Match all other legal strings.
syn region  tclString		  start=+[^\\]"+ms=s+1  end=+"+ contains=@tclSpecialC,@tclVarRefC,tclEmbeddedStatement,@Spell skip=+\\\\\|\\"+

" Line continuation is backslash immediately followed by newline.
syn match tclLineContinue '\\$'

" if exists('g:tcl_warn_continuation')
    syn match tclNotLineContinue '\\\s\+$'
" endif

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
hi def link tclProcCommand		Type
hi def link tclString		String
hi def link tclComment		Comment
hi def link tclSpecial		Special
hi def link tclTodo		Todo
" Below here are the commands and their options.
hi def link tcltkCommandColor	Statement
hi def link tcltkWidgetColor	Structure
hi def link tclLineContinue	WarningMsg
" if exists('g:tcl_warn_continuation')
hi def link tclNotLineContinue	ErrorMsg
" endif
hi def link tcltkStringSwitch	Special
hi def link tcltkArraySwitch	Special
hi def link tcltkLsortSwitch	Special
hi def link tcltkPackSwitch	Special
hi def link tcltkPackConfSwitch	Special
hi def link tcltkMaths		Special
hi def link tcltkNamespaceSwitch	Special
hi def link tcltkWidgetSwitch	Special
hi def link tcltkPackConfColor	Identifier
hi def link tclVarRef		Identifier

" Write manual modifications for enabling UPF syntax under this region
" ------------------- MANUAL UPF REGION START ----------------------------
syn region tclEmbeddedStatement	start='\[' end='\]' contained contains=tclCommand,upfCommand,tclNumber,tclLineContinue,tclString,tclVarRef,tclEmbeddedStatement

hi def link upfCommand		Statement
hi def link upfOption		Special
" ------------------- MANUAL UPF REGION END   ----------------------------

" Place script genearted part under this region
" ------------------- GENERATED REGION START ----------------------------
" UPF-1.0 commands
syn keyword upfCommand               add_domain_elements add_port_state contains=upfOption
syn keyword upfCommand               add_pst_state bind_checker connect_supply_net contains=upfOption
syn keyword upfCommand               create_hdl2upf_vct create_power_domain contains=upfOption
syn keyword upfCommand               create_power_switch create_pst contains=upfOption
syn keyword upfCommand               create_supply_net create_supply_port contains=upfOption
syn keyword upfCommand               create_upf2hdl_vct get_supply_net contains=upfOption
syn keyword upfCommand               load_upf map_isolation_cell map_level_shifter_cell contains=upfOption
syn keyword upfCommand               map_power_switch map_retention_cell contains=upfOption
syn keyword upfCommand               merge_power_domains name_format contains=upfOption
syn keyword upfCommand               save_upf set_design_top set_domain_supply_net contains=upfOption
syn keyword upfCommand               set_isolation set_isolation_control contains=upfOption
syn keyword upfCommand               set_level_shifter set_pin_related_supply contains=upfOption
syn keyword upfCommand               set_power_switch set_related_supply_net contains=upfOption
syn keyword upfCommand               set_retention set_retention_control contains=upfOption
syn keyword upfCommand               set_scope upf_version contains=upfOption


" UPF-2.0 commands
syn keyword upfCommand               add_power_state associate_supply_set contains=upfOption
syn keyword upfCommand               connect_logic_net connect_supply_set contains=upfOption
syn keyword upfCommand               create_composite_domain create_logic_net contains=upfOption
syn keyword upfCommand               create_logic_port create_supply_set contains=upfOption
syn keyword upfCommand               describe_state_transition find_objects contains=upfOption
syn keyword upfCommand               load_simstate_behavior load_upf_protected contains=upfOption
syn keyword upfCommand               query_associate_supply_set query_bind_checker contains=upfOption
syn keyword upfCommand               query_cell_instances query_cell_mapped contains=upfOption
syn keyword upfCommand               query_composite_domain query_design_attributes contains=upfOption
syn keyword upfCommand               query_hdl2upf_vct query_isolation contains=upfOption
syn keyword upfCommand               query_isolation_control query_level_shifter contains=upfOption
syn keyword upfCommand               query_map_isolation_cell query_map_level_shifter_cell contains=upfOption
syn keyword upfCommand               query_map_power_switch query_map_retention_cell contains=upfOption
syn keyword upfCommand               query_name_format query_net_ports contains=upfOption
syn keyword upfCommand               query_partial_on_translation query_pin_related_supply contains=upfOption
syn keyword upfCommand               query_port_attributes query_port_direction contains=upfOption
syn keyword upfCommand               query_port_net query_port_state contains=upfOption
syn keyword upfCommand               query_power_domain query_power_domain_element contains=upfOption
syn keyword upfCommand               query_power_state query_power_switch contains=upfOption
syn keyword upfCommand               query_pst query_pst_state query_retention contains=upfOption
syn keyword upfCommand               query_retention_control query_retention_elements contains=upfOption
syn keyword upfCommand               query_simstate_behavior query_state_transition contains=upfOption
syn keyword upfCommand               query_supply_net query_supply_port contains=upfOption
syn keyword upfCommand               query_supply_set query_upf query_upf2hdl_vct contains=upfOption
syn keyword upfCommand               query_use_interface_cell set_design_attributes contains=upfOption
syn keyword upfCommand               set_partial_on_translation set_port_attributes contains=upfOption
syn keyword upfCommand               set_retention_elements set_simstate_behavior contains=upfOption
syn keyword upfCommand               use_interface_cell contains=upfOption


" UPF-2.1 commands
syn keyword upfCommand               apply_power_model begin_power_model contains=upfOption
syn keyword upfCommand               define_always_on_cell define_diode_clamp contains=upfOption
syn keyword upfCommand               define_isolation_cell define_level_shifter_cell contains=upfOption
syn keyword upfCommand               define_power_switch_cell define_retention_cell contains=upfOption
syn keyword upfCommand               end_power_model set_equivalent contains=upfOption
syn keyword upfCommand               set_repeater contains=upfOption


" UPF-3.0 commands
syn keyword upfCommand               add_parameter add_state_transition contains=upfOption
syn keyword upfCommand               add_supply_state create_power_state_group contains=upfOption
syn keyword upfCommand               map_repeater_cell set_correlated contains=upfOption
syn keyword upfCommand               set_variation upf_object_in_class contains=upfOption
syn keyword upfCommand               upf_query_object_pathname upf_query_object_properties contains=upfOption
syn keyword upfCommand               upf_query_object_type contains=upfOption


" UPF-3.1 commands
syn keyword upfCommand               define_power_model sim_assertion_control contains=upfOption
syn keyword upfCommand               sim_corruption_control sim_replay_control contains=upfOption


" UPF-4.0 commands
syn keyword upfCommand               create_abstract_power_source create_upf_library contains=upfOption
syn keyword upfCommand               create_vcm load_upf_library map_retention_clamp_cell contains=upfOption
syn keyword upfCommand               use_upf_library contains=upfOption


" UPF-1.0 options
syn keyword upfOption contained      -all_equivalent -applies_to -assert_r_mutex
syn keyword upfOption contained      -assert_rs_mutex -assert_s_mutex
syn keyword upfOption contained      -cells -clamp_value -elements -error_state
syn keyword upfOption contained      -hdl_type -include_scope -input_supply_port
syn keyword upfOption contained      -isolation_ground_net -isolation_power_net
syn keyword upfOption contained      -isolation_prefix -isolation_suffix
syn keyword upfOption contained      -level_shift_prefix -level_shift_suffix
syn keyword upfOption contained      -lib_cell_type -lib_cells -lib_model_name
syn keyword upfOption contained      -module -no_isolation -no_shift
syn keyword upfOption contained      -object_list -on_partial_state
syn keyword upfOption contained      -output_supply_port -pg_type -pins
syn keyword upfOption contained      -port -ports -power_domains -primary_ground_net
syn keyword upfOption contained      -primary_power_net -pst -rail_connection
syn keyword upfOption contained      -related_ground_pin -related_power_pin
syn keyword upfOption contained      -resolve -retention_ground_net
syn keyword upfOption contained      -retention_power_net -reuse -rule
syn keyword upfOption contained      -scope -state -supplies -table
syn keyword upfOption contained      -threshold -vct -version


" UPF-2.0 options
syn keyword upfOption contained      -all -applies_to_clamp -applies_to_sink_off_clamp
syn keyword upfOption contained      -applies_to_source_off_clamp -arch
syn keyword upfOption contained      -attribute -bind_to -conn -connect
syn keyword upfOption contained      -define_func_type -detailed -diff_supply_only
syn keyword upfOption contained      -direction -domains -driver_supply
syn keyword upfOption contained      -element -exact -exclude_domains
syn keyword upfOption contained      -exclude_elements -exclude_ports
syn keyword upfOption contained      -expand -file -force_function -force_isolation
syn keyword upfOption contained      -force_shift -from -full_on_tools
syn keyword upfOption contained      -function -handle -ignore_case
syn keyword upfOption contained      -illegal -implicit_logic_prefix
syn keyword upfOption contained      -implicit_logic_suffix -implicit_supply_prefix
syn keyword upfOption contained      -implicit_supply_suffix -inst_type
syn keyword upfOption contained      -internal_supply_set -inverter_supply_set
syn keyword upfOption contained      -is_supply -isolation_sense -isolation_signal
syn keyword upfOption contained      -isolation_supply_set -leaf -leaf_only
syn keyword upfOption contained      -legal -lib -location -map -models
syn keyword upfOption contained      -name_prefix -name_suffix -no_elements
syn keyword upfOption contained      -no_retention -non_leaf -object
syn keyword upfOption contained      -object_type -off_tools -paired
syn keyword upfOption contained      -params -pattern -receiver_supply
syn keyword upfOption contained      -reference_gnd -regexp -related_bias_ports
syn keyword upfOption contained      -related_ground_port -related_power_port
syn keyword upfOption contained      -repeater_supply -restore_condition
syn keyword upfOption contained      -restore_signal -retention_condition
syn keyword upfOption contained      -retention_purpose -retention_supply_set
syn keyword upfOption contained      -save_condition -save_signal -simstate
syn keyword upfOption contained      -simulation_only -sink -sink_off_clamp
syn keyword upfOption contained      -source -source_off_clamp -strategy
syn keyword upfOption contained      -subdomains -to -transitive -update
syn keyword upfOption contained      -update_any -use_retention_as_primary


" UPF-2.1 options
syn keyword upfOption contained      -always_on_components -always_on_pins
syn keyword upfOption contained      -atomic -aux_enables -available_supplies
syn keyword upfOption contained      -bypass_enable -cell_type -clamp_cell
syn keyword upfOption contained      -complete -data_pins -domain -enable
syn keyword upfOption contained      -feedthrough -for -function_only
syn keyword upfOption contained      -gate_bias_pin -ground -ground_input_voltage_range
syn keyword upfOption contained      -ground_output_voltage_range -ground_switchable
syn keyword upfOption contained      -hold_check -input_ground_pin -input_power_pin
syn keyword upfOption contained      -input_voltage_range -is_leaf_cell
syn keyword upfOption contained      -is_macro_cell -isolated_pins -multi_stage
syn keyword upfOption contained      -no_enable -non_dedicated -output_ground_pin
syn keyword upfOption contained      -output_power_pin -output_voltage_range
syn keyword upfOption contained      -pin_groups -power -power_switchable
syn keyword upfOption contained      -reconnect -repeater_supply_set
syn keyword upfOption contained      -restore_check -restore_function
syn keyword upfOption contained      -retention_check -save_check -save_function
syn keyword upfOption contained      -stage_1_enable -stage_1_output
syn keyword upfOption contained      -stage_2_enable -stage_2_output
syn keyword upfOption contained      -supply -supply_map -unconnected
syn keyword upfOption contained      -use_equivalence -valid_location


" UPF-3.0 options
syn keyword upfOption contained      -applies_to_boundary -class -default
syn keyword upfOption contained      -description -group -hide_globals
syn keyword upfOption contained      -instance -is_analog -is_hard_macro
syn keyword upfOption contained      -is_isolated -is_soft_macro -literal_supply
syn keyword upfOption contained      -model -nets -parameters -property
syn keyword upfOption contained      -range -relative_to -sets -switch_cell_type
syn keyword upfOption contained      -switch_type -transition -type


" UPF-3.1 options
syn keyword upfOption contained      -boundary_supplies -control_expr
syn keyword upfOption contained      -controlling_domain -interchangeable
syn keyword upfOption contained      -port_map -traverse_macros -use_functional_equivalence


" UPF-4.0 options
syn keyword upfOption contained      -ack_delay -ack_polarity -ack_port
syn keyword upfOption contained      -async_clamp_lib_cells -clock_clamp_lib_cells
syn keyword upfOption contained      -contents -control_port -conversion_direction
syn keyword upfOption contained      -field -input_supply_set -off_state
syn keyword upfOption contained      -on_state -output_supply_set -power_switch
syn keyword upfOption contained      -supply_set -vcms -virtual


" ------------------- GENERATED REGION END   ----------------------------

let b:current_syntax = "upf"

" vim: ts=8 noet nolist
