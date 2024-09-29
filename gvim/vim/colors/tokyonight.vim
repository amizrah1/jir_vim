
" Clear existing highlights and reset syntax
highlight clear
syntax reset

" Set the colorscheme name
let g:colors_name = 'tokyonight'

let colors = {
\ '_name': 'tokyonight_storm',
\ '_style': 'storm',
\ 'bg': '#24283b',
\ 'bg_dark': '#1f2335',
\ 'bg_float': '#1f2335',
\ 'bg_highlight': '#292e42',
\ 'bg_popup': '#1f2335',
\ 'bg_search': '#3d59a1',
\ 'bg_sidebar': '#1f2335',
\ 'bg_statusline': '#1f2335',
\ 'bg_visual': '#2e3c64',
\ 'black': '#1d202f',
\ 'blue': '#7aa2f7',
\ 'blue0': '#3d59a1',
\ 'blue1': '#2ac3de',
\ 'blue2': '#0db9d7',
\ 'blue5': '#89ddff',
\ 'blue6': '#b4f9f8',
\ 'blue7': '#394b70',
\ 'border': '#1d202f',
\ 'border_highlight': '#29a4bd',
\ 'comment': '#565f89',
\ 'cyan': '#7dcfff',
\ 'dark3': '#545c7e',
\ 'dark5': '#737aa2',
\ 'diff': {
\   'add': '#283b4d',
\   'change': '#272d43',
\   'delete': '#3f2d3d',
\   'text': '#394b70'
\ },
\ 'error': '#db4b4b',
\ 'fg': '#c0caf5',
\ 'fg_dark': '#a9b1d6',
\ 'fg_float': '#c0caf5',
\ 'fg_gutter': '#3b4261',
\ 'fg_sidebar': '#a9b1d6',
\ 'git': {
\   'add': '#449dab',
\   'change': '#6183bb',
\   'delete': '#914c54',
\   'ignore': '#545c7e'
\ },
\ 'green': '#9ece6a',
\ 'green1': '#73daca',
\ 'green2': '#41a6b5',
\ 'hint': '#1abc9c',
\ 'info': '#0db9d7',
\ 'magenta': '#bb9af7',
\ 'magenta2': '#ff007c',
\ 'none': 'NONE',
\ 'orange': '#ff9e64',
\ 'purple': '#9d7cd8',
\ 'rainbow': ['#7aa2f7', '#e0af68', '#9ece6a', '#1abc9c', '#bb9af7', '#9d7cd8'],
\ 'red': '#f7768e',
\ 'red1': '#db4b4b',
\ 'teal': '#1abc9c',
\ 'terminal_black': '#414868',
\ 'todo': '#7aa2f7',
\ 'warning': '#e0af68',
\ 'yellow': '#e0af68'
\ }

" Define highlight groups
let highlights = {
\ 'Normal': {'fg': colors.fg, 'bg': colors.bg},
\ 'NormalFloat': {'bg': colors.bg_float},
\ 'FloatTitle': {'fg': colors.blue0, 'bg': colors.bg_float},
\ 'FloatFooter': {'fg': colors.blue0, 'bg': colors.bg_float},
\ 'TermCursorNC': {'bg': colors.bg_visual},
\ 'ColorColumn': {'bg': colors.bg_float},
\ 'CursorColumn': 'ColorColumn',
\ 'CursorLine': 'ColorColumn',
\ 'VertSplit': {'fg': colors.border},
\ 'WinSeparator': {'fg': colors.border},
\ 'LineNr': {'fg': colors.comment},
\ 'CursorLineNr': {'fg': colors.blue0},
\ 'Folded': {'fg': colors.comment, 'bg': colors.diff.change},
\ 'FoldColumn': 'LineNr',
\ 'SignColumn': 'LineNr',
\ 'Pmenu': 'NormalFloat',
\ 'PmenuSel': {'bg': colors.bg_visual},
\ 'PmenuSbar': 'Pmenu',
\ 'PmenuThumb': 'PmenuSel',
\ 'PmenuMatch': {'fg': colors.yellow, 'gui': 'bold', 'bg': colors.bg_float},
\ 'PmenuMatchSel': {'fg': colors.yellow, 'gui': 'bold', 'bg': colors.bg_visual},
\ 'StatusLine': 'NormalFloat',
\ 'StatusLineNC': {'fg': colors.comment, 'bg': colors.bg_float},
\ 'WildMenu': 'NormalFloat',
\ 'TabLine': 'StatusLineNC',
\ 'TabLineFill': 'StatusLine',
\ 'TabLineSel': {'bg': colors.bg_float, 'gui': 'bold'},
\ 'MatchParen': {'fg': colors.yellow, 'bg': colors.bg_visual, 'gui': 'bold'},
\ 'Search': {'fg': colors.bg, 'bg': colors.diff.text, 'gui': 'bold'},
\ 'Substitute': {'bg': colors.diff.delete, 'gui': 'bold'},
\ 'Visual': {'bg': colors.bg_visual},
\ 'Conceal': {'fg': colors.comment},
\ 'Whitespace': {'fg': colors.comment},
\ 'NonText': 'Whitespace',
\ 'SpecialKey': 'Whitespace',
\ 'Directory': {'fg': colors.blue0},
\ 'Title': {'fg': colors.blue0},
\ 'ErrorMsg': {'bg': colors.diff.delete},
\ 'ModeMsg': {'fg': colors.comment},
\ 'MoreMsg': {'fg': colors.green, 'gui': 'bold'},
\ 'WarningMsg': {'fg': colors.red},
\ 'Question': 'MoreMsg',
\ 'DiffAdd': {'bg': colors.diff.add},
\ 'DiffChange': {'bg': colors.diff.change},
\ 'DiffDelete': {'bg': colors.diff.delete},
\ 'DiffText': {'bg': colors.diff.text},
\ 'DiffAdded': 'DiffAdd',
\ 'DiffRemoved': 'DiffDelete',
\ 'SpellBad': {'fg': colors.red, 'gui': 'undercurl'},
\ 'SpellCap': {'fg': colors.blue, 'gui': 'undercurl'},
\ 'SpellLocal': {'fg': colors.yellow, 'gui': 'undercurl'},
\ 'SpellRare': {'fg': colors.yellow, 'gui': 'undercurl'},
\ 'Comment': {'fg': colors.comment, 'gui': 'italic'},
\ 'Identifier': {'fg': colors.fg},
\ 'Function': {'fg': colors.yellow},
\ 'Constant': {'fg': colors.magenta},
\ 'String': {'fg': colors.blue, 'gui': 'italic'},
\ 'Character': {'fg': colors.blue},
\ 'Number': {'fg': colors.magenta},
\ 'Boolean': 'Number',
\ 'Statement': {'fg': colors.yellow},
\ 'Operator': {'fg': colors.red},
\ 'PreProc': {'fg': colors.green},
\ 'Type': {'fg': colors.cyan},
\ 'Special': {'fg': colors.yellow},
\ 'Delimiter': {'fg': colors.diff.text},
\ 'Underlined': {'gui': 'underline'},
\ 'Bold': {'gui': 'bold'},
\ 'Italic': {'gui': 'italic'},
\ 'Ignore': {'fg': colors.comment},
\ 'Error': {'bg': colors.diff.delete},
\ 'Todo': {'fg': colors.comment, 'gui': 'bold'},
\ 'string_documentation': {'fg': colors.blue, 'nocombine': v:true},
\ 'string_escape': {'fg': colors.blue},
\ 'string_regexp': {'fg': colors.blue},
\ 'string_special': {'fg': colors.cyan},
\ 'string_special_symbol': {'fg': colors.fg, 'gui': 'italic'},
\ 'string_special_path': {'fg': colors.blue},
\ 'string_special_url': 'string_special_path',
\ 'keyword_directive': 'PreProc',
\ 'keyword_function': 'PreProc',
\ 'keyword_import': 'PreProc',
\ 'constant': 'Identifier',
\ 'constant_builtin': 'Constant',
\ 'constant_macro': 'Constant',
\ 'module': 'Identifier',
\ 'module_builtin': 'module',
\ 'label': {'fg': colors.cyan},
\ 'variable': 'Identifier',
\ 'variable_builtin': 'string_special_symbol',
\ 'type_qualifier': 'Statement',
\ 'function_macro': 'Function',
\ 'punctuation_delimiter': {'fg': colors.red},
\ 'comment_documentation': {'fg': colors.comment, 'nocombine': v:true},
\ 'comment_error': 'Todo',
\ 'comment_note': 'Todo',
\ 'comment_todo': 'Todo',
\ 'comment_warning': 'Todo',
\ 'markup_heading': 'Title',
\ 'markup_heading_2': {'fg': colors.yellow},
\ 'markup_heading_3': {'fg': colors.green},
\ 'markup_heading_4': {'fg': colors.cyan},
\ 'markup_italic': {'gui': 'italic'},
\ 'markup_strong': {'gui': 'bold'},
\ 'markup_strikethrough': {'gui': 'strikethrough'},
\ 'markup_underline': {'gui': 'underline'},
\ 'markup_quote': 'Comment',
\ 'markup_link': {'gui': 'underline'},
\ 'markup_link_url': 'string_special_path',
\ 'markup_raw': {'fg': colors.comment},
\ 'markup_list': 'Delimiter',
\ 'diff_plus': 'DiffAdd',
\ 'diff_minus': 'DiffDelete',
\ 'diff_delta': 'DiffChange',
\ 'tag_attribute': 'label',
\ 'tag_delimiter': 'Delimiter',
\ 'lsp_mod_GlobalScope': {'gui': 'italic'},
\ 'lsp_type_namespace': {'fg': colors.green},
\ 'lsp_type_parameter': {'fg': colors.fg, 'gui': 'bold'},
\ 'lsp_type_variable': 'Identifier',
\ 'texOptSep': 'punctuation_delimiter',
\ 'texOptEqual': 'Operator',
\ 'texFileArg': 'Constant',
\ 'texTitleArg': {'gui': 'bold'},
\ 'texRefArg': 'Constant',
\ 'texMathCmd': 'Function',
\ 'texMathSymbol': 'Operator',
\ 'texMathZone': 'TSMath',
\ 'texMathDelimZone': 'TSPunctDelimiter',
\ 'texMathDelim': 'Delimiter',
\ 'texMathEnvArgName': 'PreProc',
\ 'NeoTreeNormal': 'NormalFloat',
\ 'NeoTreeNormalNC': 'NeoTreeNormal',
\ 'NeoTreeVertSplit': {'bg': colors.bg, 'fg': colors.bg},
\ 'NeoTreeWinSeparator': 'NeoTreeVertSplit',
\ 'NeoTreeCursorLine': {'bg': colors.bg_visual},
\ 'netrwClassify': 'Delimiter',
\ 'netrwTreeBar': 'Delimiter',
\ 'netrwExe': {'fg': colors.red},
\ 'netrwSymLink': {'fg': colors.magenta},
\ 'GitSignsAdd': {'fg': colors.green},
\ 'GitSignsChange': {'fg': colors.magenta},
\ 'GitSignsDelete': {'fg': colors.red},
\ 'GitSignsCurrentLineBlame': {'fg': colors.blue},
\ 'SignifySignAdd': 'GitSignsAdd',
\ 'SignifySignChange': 'GitSignsChange',
\ 'SignifySignDelete': 'GitSignsDelete',
\ 'IblIndent': {'fg': colors.bg_visual, 'nocombine': v:true},
\ 'IblWhitespace': 'IblIndent',
\ 'IndentBlanklineChar': 'IblIndent',
\ 'IndentBlanklineSpaceChar': 'IndentBlanklineChar',
\ 'IndentBlanklineSpaceCharBlankline': 'IndentBlanklineChar',
\ 'CmpItemAbbrMatch': {'fg': colors.yellow, 'gui': 'bold'},
\ 'CmpItemAbbrMatchFuzzy': {'fg': colors.yellow, 'gui': 'bold'},
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
\ }

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
let g:terminal_color_0 = colors.bg_float
let g:terminal_color_1 = colors.red
let g:terminal_color_2 = colors.green
let g:terminal_color_3 = colors.yellow
let g:terminal_color_4 = colors.blue
let g:terminal_color_5 = colors.magenta
let g:terminal_color_6 = colors.cyan
let g:terminal_color_7 = colors.comment
let g:terminal_color_8 = colors.comment
let g:terminal_color_9 = colors.red
let g:terminal_color_10 = colors.green
let g:terminal_color_11 = colors.yellow
let g:terminal_color_12 = colors.blue
let g:terminal_color_13 = colors.magenta
let g:terminal_color_14 = colors.cyan
let g:terminal_color_15 = colors.fg
