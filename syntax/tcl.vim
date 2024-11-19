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
" Cleanup:
" -------------------------
delcommand HiLink
delfunction s:pred_w_switches
delfunction s:pred_w_subcmd

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
