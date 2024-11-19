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
delcommand TCLHiLink
" if !exists("s:cleanup_done")
"     let s:cleanup_done = 1
"     delcommand HiLink
" endif
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
