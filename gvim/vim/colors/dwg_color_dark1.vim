" -----------------------------------------------------------------------------
" DWG Vim color file
" -----------------------------------------------------------------------------

" use colors from - https://redpenguinweb.com/wp-content/uploads/2016/04/colorchart.gif
"                   http://www.science.smith.edu/dftwiki/images/3/3d/TkInterColorCharts.png 
" use -a to find out the name of the object the cursor placed on
" Reset Highlighting
hi clear
if exists("syntax_on")
  syntax reset
endif

" General settings
set background=dark
let g:colors_name="dwg_color_dark1"

" Prompt / Status / GUI
hi StatusLineNC  term=none cterm=none ctermbg=19 ctermfg=15 gui=none   guibg=#306090 guifg=white 
hi StatusLine    term=none cterm=bold ctermbg=19 ctermfg=11 gui=bold   guibg=#306090 guifg=yellow
hi VertSplit     term=none cterm=none ctermbg=19 ctermfg=4  gui=bold   guibg=#306090 guifg=#306090 
hi Title         term=none cterm=none ctermbg=0  ctermfg=4  gui=none   guibg=bg      guifg=#569CD6
hi ModeMsg       term=none cterm=bold ctermbg=0  ctermfg=10 gui=bold   guibg=bg      guifg=#8FBF7F
hi Normal        term=none cterm=none ctermbg=0  ctermfg=7  gui=none   guibg=black   guifg=white
hi Visual        term=none cterm=none ctermbg=8  ctermfg=15 gui=none   guibg=salmon1 guifg=bg   
hi Comment       term=none cterm=none ctermbg=0  ctermfg=2  gui=italic guibg=black   guifg=mediumseagreen
hi Label         term=none cterm=none ctermbg=0  ctermfg=7  gui=none   guibg=black   guifg=Yellow
hi CursorLine    term=none cterm=none ctermbg=0  ctermfg=7  gui=none   guibg=#303030 guifg=NONE
hi Cursor        term=none cterm=none ctermbg=1  ctermfg=0  gui=none   guibg=#A94744 guifg=bg     
hi LineNr        term=none cterm=none ctermbg=0  ctermfg=7  gui=none   guibg=bg      guifg=#B0B0B0
hi CursorLineNR  term=none cterm=none ctermbg=1  ctermfg=0  gui=none   guibg=#A94744 guifg=bg     
hi SignColumn    term=none cterm=none ctermbg=0  ctermfg=14 gui=none   guibg=bg      guifg=#B0B0B0
hi BookmarkSign  term=none cterm=none ctermbg=1  ctermfg=3  gui=bold   guibg=bg      guifg=#C71585
hi BookmarkLine  term=none cterm=none ctermbg=6  ctermfg=15 gui=none   guibg=#8B0000 guifg=black  
hi MatchIt       term=none cterm=none ctermbg=1  ctermfg=3  gui=bold   guibg=#8b0000 guifg=bg     

" Number column
hi CursorColumn  term=none cterm=none ctermbg=1  ctermfg=0  gui=none   guibg=#A94744 guifg=bg     
hi FoldColumn    term=none cterm=none ctermbg=0  ctermfg=2  gui=none   guibg=bg      guifg=#608B4E
hi Folded        term=none cterm=none ctermbg=0  ctermfg=2  gui=none   guibg=bg      guifg=#608B4E

" Window / Tab delimiters
hi TabLine       term=none cterm=none ctermbg=0  ctermfg=3  gui=none   guibg=bg      guifg=#D69831
hi TabLineFill   term=none cterm=none ctermbg=0  ctermfg=3  gui=none   guibg=bg      guifg=#D69831
hi TabLineSel    term=none cterm=none ctermbg=0  ctermfg=3  gui=none   guibg=bg      guifg=#D69831
hi OverLength    term=none cterm=none ctermbg=0  ctermfg=1  gui=none   guibg=bg      guifg=#A94744

" File navigation / Searching
hi Directory     term=none cterm=none ctermbg=0  ctermfg=4  gui=none   guibg=bg      guifg=#569CD6
hi Search        term=none cterm=none ctermbg=6  ctermfg=15 gui=none   guibg=#218693 guifg=#F7F7F7
hi IncSearch     term=none cterm=none ctermbg=3  ctermfg=8  gui=none   guibg=#D69831 guifg=#3C3C3C

" Visual aid
hi MatchParen    term=none cterm=bold ctermbg=0  ctermfg=15 gui=none   guibg=#303030 guifg=#FF0000
hi NonText       term=none cterm=none ctermbg=0  ctermfg=0  gui=none   guibg=bg      guifg=bg     
hi Error         term=none cterm=none ctermbg=1  ctermfg=7  gui=bold   guibg=bg      guifg=#A94744
hi ErrorMsg      term=none cterm=none ctermbg=1  ctermfg=7  gui=bold   guibg=bg      guifg=#A94744
hi Todo          term=none cterm=none ctermbg=1  ctermfg=3  gui=bold   guibg=bg      guifg=#D69831
hi Repeat        term=none cterm=none ctermbg=0  ctermfg=4  gui=none   guibg=bg      guifg=#FF6347

" Completion menu
hi Pmenu         term=none cterm=none ctermbg=8  ctermfg=7  gui=none   guibg=#3C3C3C guifg=#B0B0B0
hi PmenuSel      term=none cterm=none ctermbg=4  ctermfg=15 gui=none   guibg=#569CD6 guifg=#F7F7F7
hi PmenuSbar     term=none cterm=none ctermbg=4  ctermfg=15 gui=none   guibg=#569CD6 guifg=#F7F7F7

" Spelling
hi SpellBad      term=none cterm=underline ctermbg=0  ctermfg=9  gui=none  guibg=bg  guifg=tomato
hi SpellCap      term=none cterm=underline ctermbg=0  ctermfg=9  gui=none  guibg=bg  guifg=SteelBlue1
hi SpellRare     term=none cterm=underline ctermbg=0  ctermfg=9  gui=none  guibg=bg  guifg=orange
hi SpellLocal    term=none cterm=underline ctermbg=0  ctermfg=9  gui=none  guibg=bg  guifg=yellow

" Diff
hi DiffAdd       term=none cterm=none ctermbg=2  ctermfg=10 gui=none   guibg=#608B4E guifg=#ffffff
hi DiffDelete    term=none cterm=none ctermbg=1  ctermfg=9  gui=none   guibg=#A94744 guifg=#ffffff
hi DiffChange    term=none cterm=none ctermbg=4  ctermfg=12 gui=none   guibg=DarkGoldenrod2  guifg=black
hi DiffText      term=none cterm=none ctermbg=3  ctermfg=11 gui=none   guibg=LightGoldenrod2 guifg=black

" General language constructs
hi Special       term=none cterm=none ctermbg=0  ctermfg=4  gui=none   guibg=bg      guifg=#84B5FF
hi Statement     term=none cterm=none ctermbg=0  ctermfg=4  gui=none   guibg=bg      guifg=#84B5FF
hi Conditional   term=none cterm=none ctermbg=0  ctermfg=4  gui=none   guibg=bg      guifg=#FF6347
hi verilogFork   term=none cterm=none ctermbg=0  ctermfg=4  gui=none   guibg=bg      guifg=#FF6347
hi Keyword       term=none cterm=none ctermbg=0  ctermfg=4  gui=none   guibg=bg      guifg=#569CD6
hi Delimiter     term=none cterm=none ctermbg=0  ctermfg=4  gui=none   guibg=bg      guifg=#569CD6

" C syntax highlighting
hi PreProc      term=none  cterm=none ctermbg=0  ctermfg=5  gui=none   guibg=bg      guifg=#DA70D6
hi Include      term=none  cterm=none ctermbg=0  ctermfg=5  gui=none   guibg=bg      guifg=#B06386
hi Define       term=none  cterm=none ctermbg=0  ctermfg=5  gui=none   guibg=bg      guifg=#CA60C6
hi Macro        term=none  cterm=none ctermbg=0  ctermfg=5  gui=none   guibg=bg      guifg=#B06386
hi PreCondit    term=none  cterm=none ctermbg=0  ctermfg=5  gui=none   guibg=bg      guifg=#B06386
hi Type         term=none  cterm=none ctermbg=0  ctermfg=4  gui=none   guibg=bg      guifg=DeepSkyBlue2
hi String       term=none  cterm=none ctermbg=0  ctermfg=3  gui=none   guibg=bg      guifg=#D69831
hi Method       term=none  cterm=none ctermbg=0  ctermfg=11 gui=none   guibg=bg      guifg=#F8BC41
hi Function     term=none  cterm=none ctermbg=0  ctermfg=11 gui=none   guibg=bg      guifg=#F8BC41
hi Symbol       term=none  cterm=none ctermbg=0  ctermfg=4  gui=none   guibg=bg      guifg=#569CD6
hi Structure    term=none  cterm=none ctermbg=0  ctermfg=4  gui=none   guibg=bg      guifg=#569CD6
hi StorageClass term=none  cterm=none ctermbg=0  ctermfg=4  gui=none   guibg=bg      guifg=#569CD6
hi Typedef      term=none  cterm=none ctermbg=0  ctermfg=4  gui=none   guibg=bg      guifg=#569CD6
hi Identifier   term=none  cterm=none ctermbg=0  ctermfg=4  gui=none   guibg=bg      guifg=#569CD6
hi Constant     term=none  cterm=none ctermbg=0  ctermfg=4  gui=none   guibg=bg      guifg=#569CD6
hi Number       term=none  cterm=none ctermbg=0  ctermfg=2  gui=none   guibg=bg      guifg=#FF8C00

" MiniBufExpl Colors
hi MBENormal                                                           guibg=bg      guifg=#808080 
hi MBEChanged                                                          guibg=bg      guifg=#CD5907 
hi MBEVisibleNormal                                                    guibg=bg      guifg=#5DC2D6
hi MBEVisibleChanged                                                   guibg=bg      guifg=#F1266F
hi MBEVisibleActiveNormal                                              guibg=bg      guifg=#A6DB29
hi MBEVisibleActiveChanged                                             guibg=bg      guifg=#F1266F

" from DWG colors
hi WildMenu     term=none  cterm=none    ctermbg=0 ctermfg=100            guibg=#2c302d guifg=#ffff00   
hi VisualNOS    term=none  cterm=reverse ctermbg=0 ctermfg=7  gui=reverse guibg=fg      guifg=#8080ff 
hi lCursor      term=none  cterm=none    ctermbg=0 ctermfg=7              guibg=#FFFFFF guifg=black  
hi SpecialKey   term=none  cterm=none              ctermfg=36                           guifg=#00BFFF
hi WarningMsg   term=none  cterm=none              ctermfg=124                          guifg=#AF0000                        
hi MoreMsg      term=none  cterm=none              ctermfg=22 
hi Question	    term=none  cterm=none              ctermfg=2  gui=none                  guifg=green

