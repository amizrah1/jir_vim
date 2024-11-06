
" Clear existing highlights and reset syntax
highlight clear
syntax reset

" Set the colorscheme name
let g:colors_name = 'melange'

"\ 'com': '#C1A78E',
" Define the palette colors
let a = {
\ 'bg': '#292522',
\ 'float': '#34302C',
\ 'sel': '#403A36',
\ 'ui': '#867462',
\ 'com': '#C1A78E',
\ 'fg': '#ECE1D7',
\ 'visual_color': '#005625'
\ }
let b = {
\ 'red': '#D47766',
\ 'yellow': '#EBC06D',
\ 'green': '#85B695',
\ 'cyan': '#89B3B6',
\ 'blue': '#A3A9CE',
\ 'magenta': '#CF9BC2'
\ }
let c = {
\ 'red': '#BD8183',
\ 'yellow': '#E49B5D',
\ 'green': '#78997A',
\ 'cyan': '#7B9695',
\ 'blue': '#7F91B2',
\ 'magenta': '#B380B0',
\ 'black': '#000000'
\ }
let d = {
\ 'red': '#7D2A2F',
\ 'yellow': '#8B7449',
\ 'green': '#233524',
\ 'cyan': '#253333',
\ 'blue': '#273142',
\ 'magenta': '#422741'
\ }

" Determine font attributes
let bold = get(g:, 'melange_enable_font_variants', v:true) == v:true ? 'bold' : ''
let italic = get(g:, 'melange_enable_font_variants', v:true) == v:true ? 'italic' : ''
let underline = get(g:, 'melange_enable_font_variants', v:true) == v:true ? 'underline' : ''
let undercurl = get(g:, 'melange_enable_font_variants', v:true) == v:true ? 'undercurl' : ''
let strikethrough = get(g:, 'melange_enable_font_variants', v:true) == v:true ? 'strikethrough' : ''

" Define highlight groups
let highlights = {
\ 'Normal': {'fg': a.fg, 'bg': a.bg},
\ 'NormalFloat': {'bg': a.float},
\ 'FloatTitle': {'fg': c.yellow, 'bg': a.float},
\ 'FloatFooter': {'fg': c.yellow, 'bg': a.float},
\ 'TermCursorNC': {'bg': a.sel},
\ 'ColorColumn': {'bg': a.float},
\ 'CursorColumn': 'ColorColumn',
\ 'CursorLine': {'bg': a.sel},
\ 'Visual': {'fg': 'NONE', 'bg': a.visual_color},
\ 'VertSplit': {'fg': a.ui},
\ 'WinSeparator': {'fg': a.ui},
\ 'LineNr': {'fg': a.ui, 'bg': a.bg},
\ 'CursorLineNr': {'fg': c.yellow},
\ 'Folded': {'fg': a.com, 'bg': d.cyan},
\ 'FoldColumn': 'LineNr',
\ 'SignColumn': 'LineNr',
\ 'Pmenu': 'NormalFloat',
\ 'PmenuSel': {'bg': a.sel},
\ 'PmenuSbar': 'Pmenu',
\ 'PmenuThumb': 'PmenuSel',
\ 'PmenuMatch': {'fg': b.yellow, 'gui': bold, 'bg': a.float},
\ 'PmenuMatchSel': {'fg': b.yellow, 'gui': bold, 'bg': a.sel},
\ 'StatusLine': 'NormalFloat',
\ 'StatusLineNC': {'fg': a.com, 'bg': a.float},
\ 'WildMenu': 'NormalFloat',
\ 'TabLine': 'StatusLineNC',
\ 'TabLineFill': 'StatusLine',
\ 'TabLineSel': {'bg': a.float, 'gui': bold},
\ 'MatchParen': {'fg': b.yellow, 'bg': a.sel, 'gui': bold},
\ 'Search': {'fg': a.bg, 'bg': d.yellow, 'gui': bold},
\ 'Substitute': {'bg': d.red, 'gui': bold},
\ 'Conceal': {'fg': a.com},
\ 'Whitespace': {'fg': a.ui},
\ 'NonText': 'Whitespace',
\ 'SpecialKey': 'Whitespace',
\ 'Directory': {'fg': c.cyan},
\ 'Title': {'fg': c.yellow},
\ 'ErrorMsg': {'bg': d.red},
\ 'ModeMsg': {'fg': a.com},
\ 'MoreMsg': {'fg': c.green, 'gui': bold},
\ 'WarningMsg': {'fg': c.red},
\ 'Question': 'MoreMsg',
\ 'DiffChange': { 'bg': "#cfd175", 'fg': c.black },
\ 'DiffText': { 'bg': "#d1a11b", 'fg': c.black, 'gui': 'bold' },
\ 'DiffAdd': { 'bg': "#a3c9a5", 'fg': c.black },
\ 'DiffDelete': { 'bg': "#ffabab", 'fg': c.black },
\ 'DiffAdded': 'DiffAdd',
\ 'DiffRemoved': 'DiffDelete',
\ 'SpellBad': {'fg': c.red, 'gui': undercurl},
\ 'SpellCap': {'fg': c.blue, 'gui': undercurl},
\ 'SpellLocal': {'fg': c.yellow, 'gui': undercurl},
\ 'SpellRare': {'fg': b.yellow, 'gui': undercurl},
\ 'Comment': {'fg': a.com, 'gui': italic},
\ 'Identifier': {'fg': a.fg},
\ 'Function': {'fg': b.yellow},
\ 'Constant': {'fg': c.magenta},
\ 'String': {'fg': b.blue, 'gui': italic},
\ 'Character': {'fg': c.blue},
\ 'Number': {'fg': b.magenta},
\ 'Boolean': 'Number',
\ 'Statement': {'fg': c.yellow},
\ 'Operator': {'fg': b.red},
\ 'PreProc': {'fg': b.green},
\ 'Type': {'fg': c.cyan},
\ 'Special': {'fg': b.yellow},
\ 'Delimiter': {'fg': d.yellow},
\ 'Underlined': {'gui': underline},
\ 'Bold': {'gui': bold},
\ 'Italic': {'gui': italic},
\ 'Ignore': {'fg': a.ui},
\ 'Error': {'bg': d.red},
\ 'Todo': {'fg': a.com, 'gui': bold},
\ 'string_documentation': {'fg': b.blue, 'nocombine': v:true},
\ 'string_escape': {'fg': c.blue},
\ 'string_regexp': {'fg': b.blue},
\ 'string_special': {'fg': b.cyan},
\ 'string_special_symbol': {'fg': a.fg, 'gui': italic},
\ 'string_special_path': {'fg': c.blue},
\ 'string_special_url': 'string_special_path',
\ 'keyword_directive': 'PreProc',
\ 'keyword_function': 'PreProc',
\ 'keyword_import': 'PreProc',
\ 'constant': 'Identifier',
\ 'constant_builtin': 'Constant',
\ 'constant_macro': 'Constant',
\ 'module': 'Identifier',
\ 'module_builtin': 'module',
\ 'label': {'fg': b.cyan},
\ 'variable': 'Identifier',
\ 'variable_builtin': 'string_special_symbol',
\ 'type_qualifier': 'Statement',
\ 'function_macro': 'Function',
\ 'punctuation_delimiter': {'fg': c.red},
\ 'comment_documentation': {'fg': a.com, 'nocombine': v:true},
\ 'comment_error': 'Todo',
\ 'comment_note': 'Todo',
\ 'comment_todo': 'Todo',
\ 'comment_warning': 'Todo',
\ 'markup_heading': 'Title',
\ 'markup_heading_2': {'fg': b.yellow},
\ 'markup_heading_3': {'fg': b.green},
\ 'markup_heading_4': {'fg': b.cyan},
\ 'markup_italic': {'gui': italic},
\ 'markup_strong': {'gui': bold},
\ 'markup_strikethrough': {'gui': strikethrough},
\ 'markup_underline': {'gui': underline},
\ 'markup_quote': 'Comment',
\ 'markup_link': {'gui': underline},
\ 'markup_link_url': 'string_special_path',
\ 'markup_raw': {'fg': a.com},
\ 'markup_list': 'Delimiter',
\ 'diff_plus': 'DiffAdd',
\ 'diff_minus': 'DiffDelete',
\ 'diff_delta': 'DiffChange',
\ 'tag_attribute': 'label',
\ 'tag_delimiter': 'Delimiter',
\ 'lsp_mod_GlobalScope': {'gui': italic},
\ 'lsp_type_namespace': {'fg': c.green},
\ 'lsp_type_parameter': {'fg': a.fg, 'gui': bold},
\ 'lsp_type_variable': 'Identifier',
\ 'texOptSep': 'punctuation_delimiter',
\ 'texOptEqual': 'Operator',
\ 'texFileArg': 'Constant',
\ 'texTitleArg': {'gui': bold},
\ 'texRefArg': 'Constant',
\ 'texMathCmd': 'Function',
\ 'texMathSymbol': 'Operator',
\ 'texMathZone': 'TSMath',
\ 'texMathDelimZone': 'TSPunctDelimiter',
\ 'texMathDelim': 'Delimiter',
\ 'texMathEnvArgName': 'PreProc',
\ 'NeoTreeNormal': 'NormalFloat',
\ 'NeoTreeNormalNC': 'NeoTreeNormal',
\ 'NeoTreeVertSplit': {'bg': a.bg, 'fg': a.bg},
\ 'NeoTreeWinSeparator': 'NeoTreeVertSplit',
\ 'NeoTreeCursorLine': {'bg': a.sel},
\ 'netrwClassify': 'Delimiter',
\ 'netrwTreeBar': 'Delimiter',
\ 'netrwExe': {'fg': c.red},
\ 'netrwSymLink': {'fg': c.magenta},
\ 'GitSignsAdd': {'fg': c.green},
\ 'GitSignsChange': {'fg': c.magenta},
\ 'GitSignsDelete': {'fg': c.red},
\ 'GitSignsCurrentLineBlame': {'fg': c.blue},
\ 'SignifySignAdd': 'GitSignsAdd',
\ 'SignifySignChange': 'GitSignsChange',
\ 'SignifySignDelete': 'GitSignsDelete',
\ 'IblIndent': {'fg': a.sel, 'nocombine': v:true},
\ 'IblWhitespace': 'IblIndent',
\ 'IndentBlanklineChar': 'IblIndent',
\ 'IndentBlanklineSpaceChar': 'IndentBlanklineChar',
\ 'IndentBlanklineSpaceCharBlankline': 'IndentBlanklineChar',
\ 'CmpItemAbbrMatch': {'fg': b.yellow, 'gui': bold},
\ 'CmpItemAbbrMatchFuzzy': {'fg': b.yellow, 'gui': bold},
\ 'CmpItemKindVariable': 'variable',
\ 'CmpItemKindValue': 'constant',
\ 'CmpItemKindUnit': 'constant',
\ 'CmpItemKindTypeParameter': 'type',
\ 'CmpItemKindText': 'text',
\ 'CmpItemKindStruct': 'type',
\ 'CmpItemKindSnippet': 'string_special',
\ 'CmpItemKindReference': 'type',
\ 'CmpItemKindProperty': 'property',
\ 'CmpItemKindOperator': 'operator',
\ 'CmpItemKindModule': 'namespace',
\ 'CmpItemKindMethod': 'method',
\ 'CmpItemKindKeyword': 'keyword',
\ 'CmpItemKindInterface': 'type',
\ 'CmpItemKindFunction': 'function',
\ 'CmpItemKindFolder': 'string_special_path',
\ 'CmpItemKindFile': 'string_special_path',
\ 'CmpItemKindField': 'field',
\ 'CmpItemKindEvent': 'type',
\ 'CmpItemKindEnumMember': 'field',
\ 'CmpItemKindEnum': 'type',
\ 'CmpItemKindConstructor': 'constructor',
\ 'CmpItemKindConstant': 'constant',
\ 'CmpItemKindColor': 'constant',
\ 'CmpItemKindClass': 'type',
\}

" Apply the highlight groups
for [name, attrs] in items(highlights)
  if type(attrs) == type({})
    let cmd = 'highlight ' . name
    if has_key(attrs, 'fg') && !empty(attrs.fg)
      let cmd .= ' guifg=' . attrs.fg
    endif
    if has_key(attrs, 'bg') && !empty(attrs.bg)
      let cmd .= ' guibg=' . attrs.bg
    endif
    if has_key(attrs, 'gui') && !empty(attrs.gui)
      let cmd .= ' gui=' . attrs.gui
    endif
    if has_key(attrs, 'sp') && !empty(attrs.sp)
      let cmd .= ' guisp=' . attrs.sp
    endif
    execute cmd
  else
    if !empty(attrs)
      execute 'highlight link' name attrs
    endif
  endif
endfor

" Set terminal colors
let g:terminal_color_0 = a.float
let g:terminal_color_1 = c.red
let g:terminal_color_2 = c.green
let g:terminal_color_3 = c.yellow
let g:terminal_color_4 = c.blue
let g:terminal_color_5 = c.magenta
let g:terminal_color_6 = c.cyan
let g:terminal_color_7 = a.com
let g:terminal_color_8 = a.ui
let g:terminal_color_9 = b.red
let g:terminal_color_10 = b.green
let g:terminal_color_11 = b.yellow
let g:terminal_color_12 = b.blue
let g:terminal_color_13 = b.magenta
let g:terminal_color_14 = b.cyan
let g:terminal_color_15 = a.fg
