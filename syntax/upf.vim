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
if !exists("g:loaded_common_syntax")
    let g:loaded_common_syntax = 1
    runtime syntax/tcl_main.vim
endif

" -------------------------
" Cleanup:
" -------------------------
delcommand HiLink
delfunction SG#pred_w_switches
delfunction SG#pred_w_subcmd

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
