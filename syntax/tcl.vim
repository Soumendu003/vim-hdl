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
" Cleanup:
" -------------------------
if !exists('b:do_not_cleanup_tcl_funcs')
    delcommand TCLHiLink
    delfunction tcl_common#pred_w_switches
    delfunction tcl_common#pred_w_subcmd
endif

" -------------------------
" Hoodage:
" -------------------------

let b:current_syntax = "tcl"
" override the sync commands from the other syntax files
syn sync clear
" syn sync minlines=300
syn sync fromstart

" -------------------------

" vim:ft=vim
