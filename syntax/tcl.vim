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
if !exists("g:loaded_common_tcl_syntax")
    let g:loaded_common_tcl_syntax = 1
    runtime syntax/tcl_common.vim
endif

" -------------------------
" Cleanup:
" -------------------------
" delcommand HiLink
" delfunction tcl#pred_w_switches
" delfunction tcl#pred_w_subcmd

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
