" Vim syntax file
" Language:    VTCL
" Description: VTCL is Verific's tcl extension.
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
    let l:syn_group = 'vtclCmd_' . a:word . 'Options'
    let l:contains = l:syn_group
    let l:group = 'tclPredicates'
    let l:syn = 'tclPrimary'
    execute 'syn region' l:group 'contained transparent matchgroup=' . l:syn ' keepend'
          \ 'start=+\<' . a:word . '\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|$\|--+'
          \ 'contains=' . l:syn_group . ',@tclOpts'
    if a:keywords != ''
        execute 'syn match' l:syn_group 'contained' a:keywords
        execute 'HiLink' l:syn_group  'vtclOption'
    endif
    return l:syn_group
endfunction

" -------------------------
" Place script genearted part under this region
" -------------------------
" Verific tcl commands
syn keyword vtclKeyWord        contained preprocess skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained analyze skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained pretty_print skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained setvhdllibraryalias skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained unsetvhdllibraryalias skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained setverilibraryalias skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained unsetverilibraryalias skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained hdl_file_sort_set_library_alias skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained hdl_file_sort_unset_library_alias skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained elaborate skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained read_file skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained vhdl_read_all skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained verific_fork skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained present_design skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained find skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained blast_ram skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained merge_ram_write_ports skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained prune_ram_dimension skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained infer_clock_enable_mux skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained area skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained ungroup skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained get_connections skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained write_file skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained optimize skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained remove_dangling_logic skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained propagate_constants skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained eliminate_common_subexpressions skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained to_set_reset_registers skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained remove_buffers skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained insert_buffers skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained change_portbus_structures skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained map skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained uniquify skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained getvhdllibrarypath skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained setvhdllibrarypath skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained getveriloglibrarypath skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained setveriloglibrarypath skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained save skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained restore skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained save_upf skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained synthesize_assertion skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained optimize_parse_tree skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained setblackbox skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained compare skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained setmsgtype skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained clearmsgtype skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained cleanup skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained vhdl_register skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained vhdl_clear_registry skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained list_sorted_vhdl_files skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained veri_register skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained veri_clear_registry skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained list_sorted_veri_files skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained auto_discover_register_file skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained auto_discover_register_dir skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained auto_discover_add_extension skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained auto_discover_clear_registry skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained list_auto_discovered_files skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained hdl_file_sort_register skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained hdl_file_sort_add_extension skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained hdl_file_sort_clear_registry skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained list_sorted_files skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained verilog2oa skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained vhdl2oa skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained convert_implicit_state_machine skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained resource_usage skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained set_runtime_flag skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained get_runtime_flag skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained clear_runtime_flags skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained set_relaxed_checking_mode skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained analyze_full skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained set_ignore_translate_off skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained create_hier_tree skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained semantic_check skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained pct_print skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained synlib_add_extension skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained write_event_log skipwhite nextgroup=tclPred
syn keyword vtclKeyWord        contained port_punch skipwhite nextgroup=tclPred



" Verific tcl options
syn keyword vtclOption        contained out_file
syn keyword vtclOption        contained file
syn keyword vtclOption        contained File
syn keyword vtclOption        contained f
syn keyword vtclOption        contained verilog_95
syn keyword vtclOption        contained verilog_2000
syn keyword vtclOption        contained sysv_2005
syn keyword vtclOption        contained sysv_2009
syn keyword vtclOption        contained sysv_2012
syn keyword vtclOption        contained sysv_2017
syn keyword vtclOption        contained sysv_2023
syn keyword vtclOption        contained sysv
syn keyword vtclOption        contained sfcu
syn keyword vtclOption        contained mfcu
syn keyword vtclOption        contained incdir
syn keyword vtclOption        contained define
syn keyword vtclOption        contained undefine
syn keyword vtclOption        contained veri1995ext
syn keyword vtclOption        contained veri2000ext
syn keyword vtclOption        contained sysveri2005ext
syn keyword vtclOption        contained sysveri2009ext
syn keyword vtclOption        contained sysveri2012ext
syn keyword vtclOption        contained sysveri2017ext
syn keyword vtclOption        contained sysveri2023ext
syn keyword vtclOption        contained sysveriext
syn keyword vtclOption        contained format
syn keyword vtclOption        contained work
syn keyword vtclOption        contained L
syn keyword vtclOption        contained veriamsext
syn keyword vtclOption        contained vhdl_87
syn keyword vtclOption        contained vhdl_2k
syn keyword vtclOption        contained vhdl_2008
syn keyword vtclOption        contained vhdl_2019
syn keyword vtclOption        contained vhdl_sort
syn keyword vtclOption        contained ams
syn keyword vtclOption        contained cuname
syn keyword vtclOption        contained v
syn keyword vtclOption        contained y
syn keyword vtclOption        contained u
syn keyword vtclOption        contained libext
syn keyword vtclOption        contained librescan
syn keyword vtclOption        contained veri_sort
syn keyword vtclOption        contained psl
syn keyword vtclOption        contained design_top
syn keyword vtclOption        contained upf_version
syn keyword vtclOption        contained auto_discover
syn keyword vtclOption        contained hdl_sort
syn keyword vtclOption        contained ignore_module
syn keyword vtclOption        contained unit
syn keyword vtclOption        contained module
syn keyword vtclOption        contained liberty
syn keyword vtclOption        contained ipxact
syn keyword vtclOption        contained alias
syn keyword vtclOption        contained target
syn keyword vtclOption        contained verilog
syn keyword vtclOption        contained vhdl
syn keyword vtclOption        contained architecture
syn keyword vtclOption        contained generic
syn keyword vtclOption        contained all_generic
syn keyword vtclOption        contained static
syn keyword vtclOption        contained hier_tree
syn keyword vtclOption        contained hdb_file_name
syn keyword vtclOption        contained incremental
syn keyword vtclOption        contained liberty_libname
syn keyword vtclOption        contained dont_clean_liberty
syn keyword vtclOption        contained upf
syn keyword vtclOption        contained pct
syn keyword vtclOption        contained netlist
syn keyword vtclOption        contained top
syn keyword vtclOption        contained dont_clean
syn keyword vtclOption        contained wait_for_child
syn keyword vtclOption        contained descend
syn keyword vtclOption        contained in
syn keyword vtclOption        contained port
syn keyword vtclOption        contained instance
syn keyword vtclOption        contained net
syn keyword vtclOption        contained cell
syn keyword vtclOption        contained library
syn keyword vtclOption        contained attribute
syn keyword vtclOption        contained hierarchy
syn keyword vtclOption        contained operators
syn keyword vtclOption        contained constant_prop
syn keyword vtclOption        contained one_level_only
syn keyword vtclOption        contained separator
syn keyword vtclOption        contained fanin
syn keyword vtclOption        contained compare
syn keyword vtclOption        contained verbose
syn keyword vtclOption        contained veri_95
syn keyword vtclOption        contained veri_2000
syn keyword vtclOption        contained stub
syn keyword vtclOption        contained dangling
syn keyword vtclOption        contained constant
syn keyword vtclOption        contained cse
syn keyword vtclOption        contained timing
syn keyword vtclOption        contained operator
syn keyword vtclOption        contained resource
syn keyword vtclOption        contained lut_map
syn keyword vtclOption        contained preserve_dangling_nets_with_attribtes
syn keyword vtclOption        contained technology
syn keyword vtclOption        contained no_ce
syn keyword vtclOption        contained no_oper
syn keyword vtclOption        contained no_opt
syn keyword vtclOption        contained no_io
syn keyword vtclOption        contained default
syn keyword vtclOption        contained associate
syn keyword vtclOption        contained in_memory
syn keyword vtclOption        contained parse_tree
syn keyword vtclOption        contained scope
syn keyword vtclOption        contained depth
syn keyword vtclOption        contained ignore
syn keyword vtclOption        contained info
syn keyword vtclOption        contained warning
syn keyword vtclOption        contained error
syn keyword vtclOption        contained all
syn keyword vtclOption        contained save_packages
syn keyword vtclOption        contained parse_trees
syn keyword vtclOption        contained netlists
syn keyword vtclOption        contained silent
syn keyword vtclOption        contained statics
syn keyword vtclOption        contained directory
syn keyword vtclOption        contained print_to_file
syn keyword vtclOption        contained vhdl_93
syn keyword vtclOption        contained vhdl_psl
syn keyword vtclOption        contained lib_def_file
syn keyword vtclOption        contained design_lib_name
syn keyword vtclOption        contained leaf_lib_name
syn keyword vtclOption        contained ref_libs
syn keyword vtclOption        contained ref_view
syn keyword vtclOption        contained lib
syn keyword vtclOption        contained reset
syn keyword vtclOption        contained list_opened_files
syn keyword vtclOption        contained compare_with_last_run
syn keyword vtclOption        contained memory_unit
syn keyword vtclOption        contained create
syn keyword vtclOption        contained with_help
syn keyword vtclOption        contained load
syn keyword vtclOption        contained driver
syn keyword vtclOption        contained word_level_query
syn keyword vtclOption        contained bit_level_print
syn keyword vtclOption        contained signal
syn keyword vtclOption        contained one_level
syn keyword vtclOption        contained internal_signals
syn keyword vtclOption        contained data_flow
syn keyword vtclOption        contained dir
syn keyword vtclOption        contained force_overwrite
syn keyword vtclOption        contained swiged_tcl
syn keyword vtclOption        contained cpp_app
syn keyword vtclOption        contained connection_file
syn keyword vtclOption        contained output_dir
syn keyword vtclOption        contained file_name_suffix
syn keyword vtclOption        contained force_uniquify
syn keyword vtclOption        contained named_format_specifier
syn keyword vtclOption        contained pos_format_specifier



" Define syntax region for the command 'preprocess'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<preprocess\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_preprocess
syn match vtclCmd_preprocess contained "-\(out_file\|file\|File\|f\|verilog_95\|verilog_2000\|sysv_2005\|sysv_2009\|sysv_2012\|sysv_2017\|sysv_2023\|sysv\|sfcu\|mfcu\|incdir\|define\|undefine\|veri1995ext\|veri2000ext\|sysveri2005ext\|sysveri2009ext\|sysveri2012ext\|sysveri2017ext\|sysveri2023ext\|sysveriext\)\>"
HiLink vtclCmd_preprocess vtclOption



" Define syntax region for the command 'analyze'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<analyze\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_analyze
syn match vtclCmd_analyze contained "-\(format\|work\|file\|File\|f\|L\|veri1995ext\|veri2000ext\|sysveri2005ext\|sysveri2009ext\|sysveri2012ext\|sysveri2017ext\|sysveri2023ext\|sysveriext\|veriamsext\|vhdl_87\|vhdl_2k\|vhdl_2008\|vhdl_2019\|vhdl_sort\|verilog_2000\|verilog_95\|ams\|sysv_2005\|sysv_2009\|sysv_2012\|sysv_2017\|sysv_2023\|sysv\|sfcu\|mfcu\|cuname\|v\|y\|u\|incdir\|libext\|librescan\|define\|undefine\|veri_sort\|psl\|design_top\|upf_version\|auto_discover\|hdl_sort\|ignore_module\)\>"
HiLink vtclCmd_analyze vtclOption



" Define syntax region for the command 'pretty_print'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<pretty_print\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_pretty_print
syn match vtclCmd_pretty_print contained "-\(work\|unit\|module\|liberty\|format\|ipxact\)\>"
HiLink vtclCmd_pretty_print vtclOption



" Define syntax region for the command 'setvhdllibraryalias'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<setvhdllibraryalias\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_setvhdllibraryalias
syn match vtclCmd_setvhdllibraryalias contained "-\(alias\|target\)\>"
HiLink vtclCmd_setvhdllibraryalias vtclOption



" Define syntax region for the command 'unsetvhdllibraryalias'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<unsetvhdllibraryalias\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_unsetvhdllibraryalias
syn match vtclCmd_unsetvhdllibraryalias contained "-\(alias\)\>"
HiLink vtclCmd_unsetvhdllibraryalias vtclOption



" Define syntax region for the command 'setverilibraryalias'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<setverilibraryalias\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_setverilibraryalias
syn match vtclCmd_setverilibraryalias contained "-\(alias\|target\)\>"
HiLink vtclCmd_setverilibraryalias vtclOption



" Define syntax region for the command 'unsetverilibraryalias'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<unsetverilibraryalias\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_unsetverilibraryalias
syn match vtclCmd_unsetverilibraryalias contained "-\(alias\)\>"
HiLink vtclCmd_unsetverilibraryalias vtclOption



" Define syntax region for the command 'hdl_file_sort_set_library_alias'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<hdl_file_sort_set_library_alias\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_hdl_file_sort_set_library_alias
syn match vtclCmd_hdl_file_sort_set_library_alias contained "-\(alias\|target\|verilog\|vhdl\)\>"
HiLink vtclCmd_hdl_file_sort_set_library_alias vtclOption



" Define syntax region for the command 'hdl_file_sort_unset_library_alias'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<hdl_file_sort_unset_library_alias\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_hdl_file_sort_unset_library_alias
syn match vtclCmd_hdl_file_sort_unset_library_alias contained "-\(alias\|verilog\|vhdl\)\>"
HiLink vtclCmd_hdl_file_sort_unset_library_alias vtclOption



" Define syntax region for the command 'elaborate'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<elaborate\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_elaborate
syn match vtclCmd_elaborate contained "-\(work\|L\|module\|unit\|architecture\|generic\|all_generic\|static\|hier_tree\|hdb_file_name\|incremental\|liberty_libname\|liberty\|dont_clean_liberty\|upf\|design_top\|pct\)\>"
HiLink vtclCmd_elaborate vtclOption



" Define syntax region for the command 'read_file'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<read_file\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_read_file
syn match vtclCmd_read_file contained "-\(format\|work\|file\|File\|f\|L\|veri1995ext\|veri2000ext\|sysveri2005ext\|sysveri2009ext\|sysveri2012ext\|sysveri2017ext\|sysveri2023ext\|sysveriext\|veriamsext\|netlist\|vhdl_87\|vhdl_2k\|vhdl_2008\|vhdl_2019\|vhdl_sort\|verilog_2000\|verilog_95\|ams\|sysv_2005\|sysv_2009\|sysv_2012\|sysv_2017\|sysv_2023\|sysv\|sfcu\|mfcu\|cuname\|v\|y\|u\|incdir\|libext\|librescan\|define\|undefine\|veri_sort\|psl\|top\|dont_clean\|static\|hier_tree\|auto_discover\|hdl_sort\|ignore_module\)\>"
HiLink vtclCmd_read_file vtclOption



" Define syntax region for the command 'vhdl_read_all'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<vhdl_read_all\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_vhdl_read_all
syn match vtclCmd_vhdl_read_all contained "-\(work\|vhdl_87\|vhdl_2k\|vhdl_2008\|vhdl_2019\|static\)\>"
HiLink vtclCmd_vhdl_read_all vtclOption



" Define syntax region for the command 'verific_fork'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<verific_fork\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_verific_fork
syn match vtclCmd_verific_fork contained "-\(wait_for_child\)\>"
HiLink vtclCmd_verific_fork vtclOption



" Define syntax region for the command 'present_design'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<present_design\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_present_design
syn match vtclCmd_present_design contained "-\(work\|module\|unit\|architecture\|descend\)\>"
HiLink vtclCmd_present_design vtclOption



" Define syntax region for the command 'find'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<find\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_find
syn match vtclCmd_find contained "-\(in\|port\|instance\|net\|netlist\|cell\|library\|attribute\)\>"
HiLink vtclCmd_find vtclOption



" Define syntax region for the command 'blast_ram'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<blast_ram\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_blast_ram
syn match vtclCmd_blast_ram contained "-\(hierarchy\)\>"
HiLink vtclCmd_blast_ram vtclOption



" Define syntax region for the command 'merge_ram_write_ports'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<merge_ram_write_ports\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_merge_ram_write_ports
syn match vtclCmd_merge_ram_write_ports contained "-\(hierarchy\)\>"
HiLink vtclCmd_merge_ram_write_ports vtclOption



" Define syntax region for the command 'prune_ram_dimension'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<prune_ram_dimension\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_prune_ram_dimension
syn match vtclCmd_prune_ram_dimension contained "-\(hierarchy\)\>"
HiLink vtclCmd_prune_ram_dimension vtclOption



" Define syntax region for the command 'infer_clock_enable_mux'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<infer_clock_enable_mux\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_infer_clock_enable_mux
syn match vtclCmd_infer_clock_enable_mux contained "-\(hierarchy\)\>"
HiLink vtclCmd_infer_clock_enable_mux vtclOption



" Define syntax region for the command 'area'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<area\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'ungroup'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<ungroup\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_ungroup
syn match vtclCmd_ungroup contained "-\(hierarchy\|operators\|constant_prop\|one_level_only\|separator\)\>"
HiLink vtclCmd_ungroup vtclOption



" Define syntax region for the command 'get_connections'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<get_connections\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_get_connections
syn match vtclCmd_get_connections contained "-\(net\|netlist\|fanin\|one_level_only\|compare\|verbose\|pct\)\>"
HiLink vtclCmd_get_connections vtclOption



" Define syntax region for the command 'write_file'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<write_file\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_write_file
syn match vtclCmd_write_file contained "-\(format\|library\|veri_95\|veri_2000\|sysv\|stub\)\>"
HiLink vtclCmd_write_file vtclOption



" Define syntax region for the command 'optimize'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<optimize\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_optimize
syn match vtclCmd_optimize contained "-\(library\|hierarchy\|one_level_only\|dangling\|constant\|cse\|timing\|operator\|resource\|lut_map\)\>"
HiLink vtclCmd_optimize vtclOption



" Define syntax region for the command 'remove_dangling_logic'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<remove_dangling_logic\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_remove_dangling_logic
syn match vtclCmd_remove_dangling_logic contained "-\(library\|hierarchy\|preserve_dangling_nets_with_attribtes\)\>"
HiLink vtclCmd_remove_dangling_logic vtclOption



" Define syntax region for the command 'propagate_constants'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<propagate_constants\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_propagate_constants
syn match vtclCmd_propagate_constants contained "-\(library\|hierarchy\)\>"
HiLink vtclCmd_propagate_constants vtclOption



" Define syntax region for the command 'eliminate_common_subexpressions'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<eliminate_common_subexpressions\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_eliminate_common_subexpressions
syn match vtclCmd_eliminate_common_subexpressions contained "-\(library\|hierarchy\)\>"
HiLink vtclCmd_eliminate_common_subexpressions vtclOption



" Define syntax region for the command 'to_set_reset_registers'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<to_set_reset_registers\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_to_set_reset_registers
syn match vtclCmd_to_set_reset_registers contained "-\(library\|hierarchy\)\>"
HiLink vtclCmd_to_set_reset_registers vtclOption



" Define syntax region for the command 'remove_buffers'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<remove_buffers\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_remove_buffers
syn match vtclCmd_remove_buffers contained "-\(library\|hierarchy\)\>"
HiLink vtclCmd_remove_buffers vtclOption



" Define syntax region for the command 'insert_buffers'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<insert_buffers\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_insert_buffers
syn match vtclCmd_insert_buffers contained "-\(library\|hierarchy\)\>"
HiLink vtclCmd_insert_buffers vtclOption



" Define syntax region for the command 'change_portbus_structures'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<change_portbus_structures\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_change_portbus_structures
syn match vtclCmd_change_portbus_structures contained "-\(library\|hierarchy\)\>"
HiLink vtclCmd_change_portbus_structures vtclOption



" Define syntax region for the command 'map'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<map\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_map
syn match vtclCmd_map contained "-\(hierarchy\|one_level_only\|technology\|no_ce\|no_oper\|no_opt\|no_io\)\>"
HiLink vtclCmd_map vtclOption



" Define syntax region for the command 'uniquify'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<uniquify\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'getvhdllibrarypath'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<getvhdllibrarypath\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_getvhdllibrarypath
syn match vtclCmd_getvhdllibrarypath contained "-\(default\|associate\)\>"
HiLink vtclCmd_getvhdllibrarypath vtclOption



" Define syntax region for the command 'setvhdllibrarypath'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<setvhdllibrarypath\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_setvhdllibrarypath
syn match vtclCmd_setvhdllibrarypath contained "-\(default\|associate\)\>"
HiLink vtclCmd_setvhdllibrarypath vtclOption



" Define syntax region for the command 'getveriloglibrarypath'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<getveriloglibrarypath\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_getveriloglibrarypath
syn match vtclCmd_getveriloglibrarypath contained "-\(default\|associate\)\>"
HiLink vtclCmd_getveriloglibrarypath vtclOption



" Define syntax region for the command 'setveriloglibrarypath'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<setveriloglibrarypath\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_setveriloglibrarypath
syn match vtclCmd_setveriloglibrarypath contained "-\(default\|associate\)\>"
HiLink vtclCmd_setveriloglibrarypath vtclOption



" Define syntax region for the command 'save'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<save\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_save
syn match vtclCmd_save contained "-\(work\|unit\|module\|hier_tree\|in_memory\|parse_tree\|vhdl\|verilog\|upf\)\>"
HiLink vtclCmd_save vtclOption



" Define syntax region for the command 'restore'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<restore\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_restore
syn match vtclCmd_restore contained "-\(work\|unit\|module\|hier_tree\|incremental\|parse_tree\|vhdl\|verilog\|upf\)\>"
HiLink vtclCmd_restore vtclOption



" Define syntax region for the command 'save_upf'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<save_upf\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_save_upf
syn match vtclCmd_save_upf contained "-\(scope\)\>"
HiLink vtclCmd_save_upf vtclOption



" Define syntax region for the command 'synthesize_assertion'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<synthesize_assertion\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_synthesize_assertion
syn match vtclCmd_synthesize_assertion contained "-\(work\|module\)\>"
HiLink vtclCmd_synthesize_assertion vtclOption



" Define syntax region for the command 'optimize_parse_tree'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<optimize_parse_tree\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_optimize_parse_tree
syn match vtclCmd_optimize_parse_tree contained "-\(work\|unit\)\>"
HiLink vtclCmd_optimize_parse_tree vtclOption



" Define syntax region for the command 'setblackbox'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<setblackbox\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_setblackbox
syn match vtclCmd_setblackbox contained "-\(work\|unit\|module\|netlist\|instance\|depth\)\>"
HiLink vtclCmd_setblackbox vtclOption



" Define syntax region for the command 'compare'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<compare\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_compare
syn match vtclCmd_compare contained "-\(verbose\)\>"
HiLink vtclCmd_compare vtclOption



" Define syntax region for the command 'setmsgtype'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<setmsgtype\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_setmsgtype
syn match vtclCmd_setmsgtype contained "-\(ignore\|info\|warning\|error\)\>"
HiLink vtclCmd_setmsgtype vtclOption



" Define syntax region for the command 'clearmsgtype'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<clearmsgtype\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_clearmsgtype
syn match vtclCmd_clearmsgtype contained "-\(all\)\>"
HiLink vtclCmd_clearmsgtype vtclOption



" Define syntax region for the command 'cleanup'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<cleanup\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_cleanup
syn match vtclCmd_cleanup contained "-\(work\|unit\|save_packages\|module\|parse_trees\|netlist\|netlists\|all\|silent\|statics\|hier_tree\|pct\)\>"
HiLink vtclCmd_cleanup vtclOption



" Define syntax region for the command 'vhdl_register'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<vhdl_register\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_vhdl_register
syn match vtclCmd_vhdl_register contained "-\(work\|vhdl_87\|vhdl_2k\|vhdl_2008\|vhdl_2019\|directory\|psl\|sfcu\|mfcu\)\>"
HiLink vtclCmd_vhdl_register vtclOption



" Define syntax region for the command 'vhdl_clear_registry'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<vhdl_clear_registry\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'list_sorted_vhdl_files'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<list_sorted_vhdl_files\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_list_sorted_vhdl_files
syn match vtclCmd_list_sorted_vhdl_files contained "-\(print_to_file\|L\)\>"
HiLink vtclCmd_list_sorted_vhdl_files vtclOption



" Define syntax region for the command 'veri_register'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<veri_register\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_veri_register
syn match vtclCmd_veri_register contained "-\(work\|verilog_2000\|verilog_95\|ams\|sysv_2005\|sysv_2009\|sysv_2012\|sysv_2017\|sysv_2023\|sysv\|psl\|define\|directory\|sfcu\|mfcu\)\>"
HiLink vtclCmd_veri_register vtclOption



" Define syntax region for the command 'veri_clear_registry'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<veri_clear_registry\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'list_sorted_veri_files'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<list_sorted_veri_files\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_list_sorted_veri_files
syn match vtclCmd_list_sorted_veri_files contained "-\(print_to_file\|L\)\>"
HiLink vtclCmd_list_sorted_veri_files vtclOption



" Define syntax region for the command 'auto_discover_register_file'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<auto_discover_register_file\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_auto_discover_register_file
syn match vtclCmd_auto_discover_register_file contained "-\(work\|verilog_95\|verilog_2000\|ams\|sysv_2005\|sysv_2009\|sysv_2012\|sysv_2017\|sysv_2023\|sysv\|vhdl_87\|vhdl_93\|vhdl_2k\|vhdl_2008\|vhdl_2019\|vhdl_psl\|define\|sfcu\|mfcu\)\>"
HiLink vtclCmd_auto_discover_register_file vtclOption



" Define syntax region for the command 'auto_discover_register_dir'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<auto_discover_register_dir\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_auto_discover_register_dir
syn match vtclCmd_auto_discover_register_dir contained "-\(work\)\>"
HiLink vtclCmd_auto_discover_register_dir vtclOption



" Define syntax region for the command 'auto_discover_add_extension'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<auto_discover_add_extension\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_auto_discover_add_extension
syn match vtclCmd_auto_discover_add_extension contained "-\(verilog_95\|verilog_2000\|ams\|sysv_2005\|sysv_2009\|sysv_2012\|sysv_2017\|sysv_2023\|sysv\|vhdl_87\|vhdl_93\|vhdl_2k\|vhdl_2008\|vhdl_2019\|vhdl_psl\)\>"
HiLink vtclCmd_auto_discover_add_extension vtclOption



" Define syntax region for the command 'auto_discover_clear_registry'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<auto_discover_clear_registry\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'list_auto_discovered_files'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<list_auto_discovered_files\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_list_auto_discovered_files
syn match vtclCmd_list_auto_discovered_files contained "-\(print_to_file\|L\)\>"
HiLink vtclCmd_list_auto_discovered_files vtclOption



" Define syntax region for the command 'hdl_file_sort_register'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<hdl_file_sort_register\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_hdl_file_sort_register
syn match vtclCmd_hdl_file_sort_register contained "-\(format\|work\|verilog_95\|verilog_2000\|ams\|sysv_2005\|sysv_2009\|sysv_2012\|sysv_2017\|sysv_2023\|sysv\|vhdl_87\|vhdl_93\|vhdl_2k\|vhdl_2008\|vhdl_2019\|vhdl_psl\|sfcu\|mfcu\|incdir\|define\|undefine\|directory\|top\)\>"
HiLink vtclCmd_hdl_file_sort_register vtclOption



" Define syntax region for the command 'hdl_file_sort_add_extension'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<hdl_file_sort_add_extension\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_hdl_file_sort_add_extension
syn match vtclCmd_hdl_file_sort_add_extension contained "-\(verilog_95\|verilog_2000\|ams\|sysv_2005\|sysv_2009\|sysv_2012\|sysv_2017\|sysv_2023\|sysv\|vhdl_87\|vhdl_93\|vhdl_2k\|vhdl_2008\|vhdl_2019\|vhdl_psl\)\>"
HiLink vtclCmd_hdl_file_sort_add_extension vtclOption



" Define syntax region for the command 'hdl_file_sort_clear_registry'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<hdl_file_sort_clear_registry\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'list_sorted_files'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<list_sorted_files\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_list_sorted_files
syn match vtclCmd_list_sorted_files contained "-\(print_to_file\|L\)\>"
HiLink vtclCmd_list_sorted_files vtclOption



" Define syntax region for the command 'verilog2oa'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<verilog2oa\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_verilog2oa
syn match vtclCmd_verilog2oa contained "-\(lib_def_file\|design_lib_name\|leaf_lib_name\|ref_libs\|ref_view\)\>"
HiLink vtclCmd_verilog2oa vtclOption



" Define syntax region for the command 'vhdl2oa'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<vhdl2oa\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_vhdl2oa
syn match vtclCmd_vhdl2oa contained "-\(lib_def_file\|design_lib_name\|leaf_lib_name\|ref_libs\|ref_view\)\>"
HiLink vtclCmd_vhdl2oa vtclOption



" Define syntax region for the command 'convert_implicit_state_machine'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<convert_implicit_state_machine\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_convert_implicit_state_machine
syn match vtclCmd_convert_implicit_state_machine contained "-\(lib\|unit\|module\|reset\)\>"
HiLink vtclCmd_convert_implicit_state_machine vtclOption



" Define syntax region for the command 'resource_usage'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<resource_usage\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_resource_usage
syn match vtclCmd_resource_usage contained "-\(list_opened_files\|compare_with_last_run\|memory_unit\)\>"
HiLink vtclCmd_resource_usage vtclOption



" Define syntax region for the command 'set_runtime_flag'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_runtime_flag\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_set_runtime_flag
syn match vtclCmd_set_runtime_flag contained "-\(create\)\>"
HiLink vtclCmd_set_runtime_flag vtclOption



" Define syntax region for the command 'get_runtime_flag'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<get_runtime_flag\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_get_runtime_flag
syn match vtclCmd_get_runtime_flag contained "-\(with_help\|print_to_file\)\>"
HiLink vtclCmd_get_runtime_flag vtclOption



" Define syntax region for the command 'clear_runtime_flags'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<clear_runtime_flags\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'set_relaxed_checking_mode'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_relaxed_checking_mode\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'analyze_full'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<analyze_full\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_analyze_full
syn match vtclCmd_analyze_full contained "-\(work\)\>"
HiLink vtclCmd_analyze_full vtclOption



" Define syntax region for the command 'set_ignore_translate_off'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<set_ignore_translate_off\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'create_hier_tree'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<create_hier_tree\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_create_hier_tree
syn match vtclCmd_create_hier_tree contained "-\(work\|module\|unit\|architecture\|generic\|all_generic\|incremental\|L\)\>"
HiLink vtclCmd_create_hier_tree vtclOption



" Define syntax region for the command 'semantic_check'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<semantic_check\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_semantic_check
syn match vtclCmd_semantic_check contained "-\(work\|module\|unit\|architecture\|generic\|all_generic\|incremental\|L\)\>"
HiLink vtclCmd_semantic_check vtclOption



" Define syntax region for the command 'pct_print'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<pct_print\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_pct_print
syn match vtclCmd_pct_print contained "-\(load\|driver\|word_level_query\|bit_level_print\|module\|signal\|one_level\|print_to_file\|internal_signals\|data_flow\)\>"
HiLink vtclCmd_pct_print vtclOption



" Define syntax region for the command 'synlib_add_extension'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<synlib_add_extension\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts



" Define syntax region for the command 'write_event_log'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<write_event_log\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_write_event_log
syn match vtclCmd_write_event_log contained "-\(dir\|force_overwrite\|swiged_tcl\|cpp_app\)\>"
HiLink vtclCmd_write_event_log vtclOption



" Define syntax region for the command 'port_punch'
syn region tclPredicates contained transparent matchgroup=tclPrimary keepend
  \ start=+\<port_punch\>+ matchgroup=NONE skip=+\\$+ end=+}\|]\|;\|\$\|--+
  \ contains=@tclOpts,vtclCmd_port_punch
syn match vtclCmd_port_punch contained "-\(connection_file\|output_dir\|file_name_suffix\|force_uniquify\|verbose\|named_format_specifier\|pos_format_specifier\)\>"
HiLink vtclCmd_port_punch vtclOption


" ------------------- GENERATED REGION START ----------------------------
" ------------------- GENERATED REGION END   ----------------------------

" -------------------------
" Write manual modifications for
" enabling UPF syntax under this region
" -------------------------

HiLink vtclKeyWord        tclKeyword
HiLink vtclOption         tclOption

" -------------------------
" Cleanup:
" -------------------------
delcommand HiLink
delfunction s:pred_w_switches

" -------------------------
" Hoodage:
" -------------------------

let b:current_syntax = "vtcl"
" override the sync commands from the other syntax files
syn sync clear
" syn sync minlines=300
syn sync fromstart

" -------------------------

" vim:ft=vim
