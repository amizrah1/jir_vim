" -----------------------------------------------------------------------------
" DWG Vim color file
" -----------------------------------------------------------------------------
" Reset Highlighting
hi clear
if exists("syntax_on")
  syntax reset
endif

" General settings
set background=dark
let g:colors_name="dwg_color_dark2"

colorscheme darkblue

" overrides on the "darkblue" colorscheme
hi Normal      guifg=white   guibg=black    ctermfg=gray     ctermbg=black
hi Label       guifg=green                                                                                      gui=underline
hi WildMenu    guifg=yellow  guibg=#2c302d  ctermfg=yellow   ctermbg=black    cterm=none      term=none         gui=underline
hi CursorLine  guifg=NONE    guibg=#2c302d  ctermfg=NONE     ctermbg=234                                        gui=bold
hi Conditional guifg=yellow                                                                                     gui=bold
hi Constant    guifg=Red                                                                                        gui=NONE 
hi Search      guifg=#90fff0 guibg=#2050d0  ctermfg=white    ctermbg=darkblue cterm=underline term=underline
hi IncSearch   guifg=#b0ffff guibg=#2050d0  ctermfg=darkblue ctermbg=gray
hi Cursor      guifg=black   guibg=yellow   ctermfg=black    ctermbg=yellow
hi lCursor     guifg=black   guibg=white    ctermfg=black    ctermbg=white
hi DiffText                  guibg=DarkBlue ctermbg=DarkBlue                  cterm=bold      term=reverse,bold gui=bold

