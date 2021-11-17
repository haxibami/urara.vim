" Vim color file
" Project: Urara color scheme
" Author: haxibami <contact@haxibami.net>

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "urara"

let s:dark_light = "dark"

" Palette
let s:urara0_gui = "#211921"
let s:urara1_gui = "#332433"
let s:urara2_gui = "#664266"
let s:urara3_gui = "#998299"
let s:urara4_gui = "#d9ced9"
let s:urara4_gui_br = "#f2e6f2"
let s:urara5_gui = "#d9989c"
let s:urara5_gui_br = "#e6bbbe"
let s:urara6_gui = "#d9c77e"
let s:urara6_gui_br = "#e4d7a4"
let s:urara7_gui = "#9abf86"
let s:urara7_gui_br = "#b4cea5"
let s:urara8_gui = "#86bfb6"
let s:urara8_gui_br = "#a5cec7"
let s:urara9_gui = "#a6b4de"
let s:urara9_gui_br = "#cbd3eb"
let s:urara10_gui = "#b686bf"
let s:urara10_gui_br = "#c7a5ce"

let s:urara0_term = "0"
let s:urara2_term = "8"
let s:urara4_term = "7"
let s:urara4_term_br = "15"
let s:urara5_term = "1"
let s:urara5_term_br = "9"
let s:urara6_term = "3"
let s:urara6_term_br = "11"
let s:urara7_term = "2"
let s:urara7_term_br = "10"
let s:urara8_term = "6"
let s:urara8_term_br = "14"
let s:urara9_term = "5"
let s:urara9_term_br = "13"
let s:urara10_term = "4"
let s:urara10_term_br = "12"

if has('nvim')
  let g:terminal_color_0 = s:urara0_gui
  let g:terminal_color_1 = s:urara5_gui
  let g:terminal_color_2 = s:urara7_gui
  let g:terminal_color_3 = s:urara6_gui
  let g:terminal_color_4 = s:urara10_gui
  let g:terminal_color_5 = s:urara9_gui
  let g:terminal_color_6 = s:urara8_gui
  let g:terminal_color_7 = s:urara4_gui
  let g:terminal_color_8 = s:urara2_gui
  let g:terminal_color_9 = s:urara5_gui_br
  let g:terminal_color_10 = s:urara7_gui_br
  let g:terminal_color_11 = s:urara6_gui_br
  let g:terminal_color_12 = s:urara10_gui_br
  let g:terminal_color_13 = s:urara9_gui_br
  let g:terminal_color_14 = s:urara8_gui_br
  let g:terminal_color_15 = s:urara4_gui_br
else
  let g:terminal_ansi_colors = [s:urara0_gui, s:urara5_gui, s:urara7_gui, s:urara6_gui, s:urara10_gui, s:urara9_gui, s:urara8_gui, s:urara4_gui, s:urara2_gui, s:urara5_gui_br, s:urara7_gui_br, s:urara6_gui_br, s:urara10_gui_br, s:urara9_gui_br, s:urara8_gui_br, s:urara4_gui_br]
endif

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", "underline", "")
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=" . a:guisp
  endif
endfunction

" Colouring

" Attributes
call s:hi("Bold",           "", "", "", "", "bold","")
call s:hi("Italic",         "", "", "", "", "italic","")
call s:hi("Underline",      "","","","","underline","")

" General
call s:hi("ColorColumn",        "",               s:urara1_gui,     "",                 s:urara2_term,  "","")
call s:hi("Cursor",             s:urara10_gui,    s:urara4_gui_br,  "",                 "",             "","")
call s:hi("CursorLine",         s:urara4_gui_br,  s:urara1_gui,     "",                 "",             "","")
call s:hi("Error",              s:urara5_gui,     s:urara0_gui,     s:urara5_term,      s:urara0_term,  "","")
call s:hi("LineNr",             s:urara2_gui,     s:urara0_gui,     s:urara4_term,      s:urara0_term,  "","")
call s:hi("MatchParen",         s:urara4_gui_br,  s:urara2_gui,     s:urara4_term_br,   s:urara2_term,  "","")
call s:hi("NonText",            s:urara1_gui,     "",               s:urara2_term,      "",             "","")
call s:hi("Normal",             s:urara4_gui,     s:urara0_gui,     s:urara4_term,      s:urara0_term,  "","")
call s:hi("Pmenu",              s:urara4_gui,     s:urara1_gui,     s:urara4_term,      s:urara2_term,  "","")
call s:hi("PmenuSbar",          s:urara4_gui,     s:urara1_gui,     "NONE",             s:urara2_term,  "","")
call s:hi("PmenuSel",           s:urara1_gui,     s:urara3_gui,     s:urara0_term,      s:urara2_term,  "","")
call s:hi("PmenuThumb",         s:urara4_gui,     s:urara1_gui,     s:urara4_term,      s:urara2_term,  "","")
call s:hi("QuickFixLine",       s:urara4_gui,     s:urara1_gui,     s:urara4_term,      s:urara2_term,  "","")
call s:hi("SpecialKey",         s:urara2_gui,     "",               s:urara2_term,      "",             "","")
call s:hi("SpellBad",           "NONE",           "",               "NONE",             s:urara5_term,  "undercurl", s:urara5_gui)
call s:hi("SpellCap",           "NONE",           "",               "NONE",             s:urara10_term, "undercurl", s:urara10_gui)
call s:hi("SpellLocal",         "NONE",           "",               "NONE",             s:urara9_term,  "undercurl",s:urara9_gui)
call s:hi("SpellRare",          "NONE",           "",               "NONE",             s:urara8_term,  "undercurl", s:urara8_gui)
call s:hi("Visual",             "NONE",           s:urara1_gui,     "NONE",             s:urara2_term,  "","")
call s:hi("VisualNOS",          "NONE",           s:urara1_gui,     "NONE",             s:urara2_term,  "","")

"call s:hi("ColorColumn", "", s:nord1_gui, "NONE", s:nord1_term, "", "")
"call s:hi("Cursor", s:nord0_gui, s:nord4_gui, "", "NONE", "", "")
"call s:hi("CursorLine", "", s:nord1_gui, "NONE", s:nord1_term, "NONE", "")
"call s:hi("Error", s:nord4_gui, s:nord11_gui, "", s:nord11_term, "", "")
"call s:hi("iCursor", s:nord0_gui, s:nord4_gui, "", "NONE", "", "")
"call s:hi("LineNr", s:nord3_gui, "NONE", s:nord3_term, "NONE", "", "")
"call s:hi("MatchParen", s:nord8_gui, s:nord3_gui, s:nord8_term, s:nord3_term, "", "")
"call s:hi("NonText", s:nord2_gui, "", s:nord3_term, "", "", "")
"call s:hi("Normal", s:nord4_gui, s:nord0_gui, "NONE", "NONE", "", "")
"call s:hi("Pmenu", s:nord4_gui, s:nord2_gui, "NONE", s:nord1_term, "NONE", "")
"call s:hi("PmenuSbar", s:nord4_gui, s:nord2_gui, "NONE", s:nord1_term, "", "")
"call s:hi("PmenuSel", s:nord8_gui, s:nord3_gui, s:nord8_term, s:nord3_term, "", "")
"call s:hi("PmenuThumb", s:nord8_gui, s:nord3_gui, "NONE", s:nord3_term, "", "")
"call s:hi("SpecialKey", s:nord3_gui, "", s:nord3_term, "", "", "")
"call s:hi("SpellBad", s:nord11_gui, s:nord0_gui, s:nord11_term, "NONE", "undercurl", s:nord11_gui)
"call s:hi("SpellCap", s:nord13_gui, s:nord0_gui, s:nord13_term, "NONE", "undercurl", s:nord13_gui)
"call s:hi("SpellLocal", s:nord5_gui, s:nord0_gui, s:nord5_term, "NONE", "undercurl", s:nord5_gui)
"call s:hi("SpellRare", s:nord6_gui, s:nord0_gui, s:nord6_term, "NONE", "undercurl", s:nord6_gui)
"call s:hi("Visual", "", s:nord2_gui, "", s:nord1_term, "", "")
"call s:hi("VisualNOS", "", s:nord2_gui, "", s:nord1_term, "", "")

" Neovim
call s:hi("healthError",        s:urara5_gui,     s:urara2_gui,     s:urara5_term,      s:urara2_term,  "","")
call s:hi("healthSuccess",      s:urara7_gui,     s:urara2_gui,     s:urara7_term,      s:urara2_term,  "","")
call s:hi("healthWarning",      s:urara6_gui,     s:urara2_gui,     s:urara6_term,      s:urara2_term,  "","")
call s:hi("TermCursorNC",       s:urara0_gui,     s:urara3_gui,     s:urara0_term,      s:urara2_term,  "","")

"call s:hi("healthError", s:nord11_gui, s:nord1_gui, s:nord11_term, s:nord1_term, "", "")
"call s:hi("healthSuccess", s:nord14_gui, s:nord1_gui, s:nord14_term, s:nord1_term, "", "")
"call s:hi("healthWarning", s:nord13_gui, s:nord1_gui, s:nord13_term, s:nord1_term, "", "")
"call s:hi("TermCursorNC", "", s:nord1_gui, "", s:nord1_term, "", "")

" Mark
call s:hi("CursorColumn",       "NONE",           s:urara1_gui,     "NONE",     s:urara2_term,  "","")
call s:hi("CursorLineNr",       s:urara4_gui_br,  s:urara1_gui,     s:urara4_term_br,   s:urara2_term,  "","")
call s:hi("Folded",             s:urara3_gui,     s:urara1_gui,     s:urara2_term,      s:urara0_term,  "","")
call s:hi("FoldColumn",         s:urara2_gui,     s:urara1_gui,     s:urara2_term,      s:urara0_term,  "","")
call s:hi("SignColumn",         s:urara2_gui,     s:urara1_gui,     s:urara2_term,      s:urara0_term,  "","")

"call s:hi("CursorColumn", "", s:nord1_gui, "NONE", s:nord1_term, "", "")
"if g:nord_cursor_line_number_background == 0
"  call s:hi("CursorLineNr", s:nord4_gui, "", "NONE", "", "NONE", "")
"else
"  call s:hi("CursorLineNr", s:nord4_gui, s:nord1_gui, "NONE", s:nord1_term, "NONE", "")
"endif
"call s:hi("Folded", s:nord3_gui, s:nord1_gui, s:nord3_term, s:nord1_term, s:bold, "")
"call s:hi("FoldColumn", s:nord3_gui, s:nord0_gui, s:nord3_term, "NONE", "", "")
"call s:hi("SignColumn", s:nord1_gui, s:nord0_gui, s:nord1_term, "NONE", "", "")

" Navigation
call s:hi("Directory",          s:urara9_gui,     "",               s:urara9_term,      "",             "","")

"call s:hi("Directory", s:nord8_gui, "", s:nord8_term, "NONE", "", "")

" Prompt
call s:hi("EndOfBuffer",        s:urara1_gui,     "",               s:urara2_term,      "",             "","")
call s:hi("ErrorMsg",           s:urara0_gui,     s:urara5_gui,     "",                 s:urara5_term,  "","")
call s:hi("ModeMsg",            s:urara3_gui,     "",               s:urara2_term,      "",             "","")
call s:hi("MoreMsg",            s:urara7_gui,     "",               s:urara7_term,      "",             "","")
call s:hi("Question",           s:urara7_gui,     "",               s:urara7_term,      "",             "","")
call s:hi("StatusLine",         s:urara4_gui,     s:urara1_gui,     s:urara4_term,      s:urara2_term,  "reverse","")
"term=reverse
call s:hi("StatusLineTerm",     s:urara4_gui,     s:urara1_gui,     s:urara4_term,      s:urara2_term,  "reverse","")     
"term=reverse
call s:hi("StatusLineNC",       s:urara3_gui,     s:urara2_gui,     s:urara4_term,      s:urara2_term,  "","")
call s:hi("StatusLineTermNC",   s:urara3_gui,     s:urara2_gui,     s:urara4_term,      s:urara2_term,  "","")
call s:hi("WarningMsg",         s:urara0_gui,     s:urara5_gui,     "",                 s:urara5_term,  "","")
call s:hi("WildMenu",           s:urara0_gui,     s:urara4_gui,     s:urara0_term,      s:urara4_term,  "","")

"call s:hi("EndOfBuffer", s:nord1_gui, "", s:nord1_term, "NONE", "", "")
"call s:hi("ErrorMsg", s:nord4_gui, s:nord11_gui, "NONE", s:nord11_term, "", "")
"call s:hi("ModeMsg", s:nord4_gui, "", "", "", "", "")
"call s:hi("MoreMsg", s:nord8_gui, "", s:nord8_term, "", "", "")
"call s:hi("Question", s:nord4_gui, "", "NONE", "", "", "")
"if g:nord_uniform_status_lines == 0
"  call s:hi("StatusLine", s:nord8_gui, s:nord3_gui, s:nord8_term, s:nord3_term, "NONE", "")
"  call s:hi("StatusLineNC", s:nord4_gui, s:nord1_gui, "NONE", s:nord1_term, "NONE", "")
"  call s:hi("StatusLineTerm", s:nord8_gui, s:nord3_gui, s:nord8_term, s:nord3_term, "NONE", "")
"  call s:hi("StatusLineTermNC", s:nord4_gui, s:nord1_gui, "NONE", s:nord1_term, "NONE", "")
"else
"  call s:hi("StatusLine", s:nord8_gui, s:nord3_gui, s:nord8_term, s:nord3_term, "NONE", "")
"  call s:hi("StatusLineNC", s:nord4_gui, s:nord3_gui, "NONE", s:nord3_term, "NONE", "")
"  call s:hi("StatusLineTerm", s:nord8_gui, s:nord3_gui, s:nord8_term, s:nord3_term, "NONE", "")
"  call s:hi("StatusLineTermNC", s:nord4_gui, s:nord3_gui, "NONE", s:nord3_term, "NONE", "")
"endif
"call s:hi("WarningMsg", s:nord0_gui, s:nord13_gui, s:nord1_term, s:nord13_term, "", "")
"call s:hi("WildMenu", s:nord8_gui, s:nord1_gui, s:nord8_term, s:nord1_term, "", "")

" Search
call s:hi("IncSearch",          "NONE",           "",               "NONE",             "",             "reverse", "")
"term=reverse              cterm=reverse
call s:hi("Search",             s:urara1_gui,     s:urara6_gui,     s:urara2_term,      s:urara6_term,  "","")

"call s:hi("IncSearch", s:nord6_gui, s:nord10_gui, s:nord6_term, s:nord10_term, s:underline, "")
"call s:hi("Search", s:nord1_gui, s:nord8_gui, s:nord1_term, s:nord8_term, "NONE", "")

" Tab/Window
call s:hi("TabLine",            s:urara2_gui,     s:urara0_gui,     "NONE",             s:urara0_term,  "NONE", "")
call s:hi("TabLineFill",        s:urara0_gui,     s:urara2_gui,     s:urara0_term,      s:urara2_term,  "reverse","")
"cterm=reverse
call s:hi("TabLineSel",         s:urara3_gui,     s:urara0_gui,     s:urara2_term,      s:urara0_term,  "","")
"cterm=NONE
call s:hi("Title",              s:urara6_gui,     "",               s:urara6_term,      "",             "","")
call s:hi("VertSplit",          s:urara0_gui,     s:urara1_gui,     s:urara0_term,      s:urara0_term,  "","")     
"cterm=NONE

"call s:hi("TabLine", s:nord4_gui, s:nord1_gui, "NONE", s:nord1_term, "NONE", "")
"call s:hi("TabLineFill", s:nord4_gui, s:nord1_gui, "NONE", s:nord1_term, "NONE", "")
"call s:hi("TabLineSel", s:nord8_gui, s:nord3_gui, s:nord8_term, s:nord3_term, "NONE", "")
"call s:hi("Title", s:nord4_gui, "", "NONE", "", "NONE", "")
"if g:nord_bold_vertical_split_line == 0
"  call s:hi("VertSplit", s:nord2_gui, s:nord0_gui, s:nord3_term, "NONE", "NONE", "")
"else
"  call s:hi("VertSplit", s:nord2_gui, s:nord1_gui, s:nord3_term, s:nord1_term, "NONE", "")
"endif

" Syntax Base
"hi Boolean
"hi Character
call s:hi("Comment",            s:urara3_gui,     "",               s:urara2_term,      "",             "","")
call s:hi("Conceal",            s:urara3_gui,     s:urara0_gui,     s:urara2_term,      s:urara0_term,   "","")
"hi Conditional
call s:hi("Constant",           s:urara8_gui,     "",               s:urara8_term,      "",             "","")
"hi Decorator
"hi Define
call s:hi("Delimiter",          s:urara4_gui,     "",               s:urara4_term,      "",             "","")
"hi Exception            
"hi Float                
call s:hi("Function",           s:urara10_gui,    "",               s:urara10_term,     "",             "","")
call s:hi("Identifier",         s:urara9_gui,     "",               s:urara9_term,      "",             "","")
"cterm=NONE
call s:hi("Ignore",             "NONE",           "NONE",           "NONE",             "NONE",         "","")
call s:hi("Include",            s:urara10_gui,    "",               s:urara10_term,     "",             "","")
"hi Keyword              
"hi Label                
"hi Number               
call s:hi("Operator",           s:urara10_gui,    "",               s:urara10_term,     "",             "","")
call s:hi("PreProc",            s:urara7_gui,     "",               s:urara7_term,      "",             "","")
"hi Repeat               
call s:hi("Special",            s:urara7_gui,     "",               s:urara7_term,      "",             "","")
"hi SpecialChar          
"hi SpecialComment       
call s:hi("Statement",          s:urara10_gui,    "",               s:urara10_term,     "",             "NONE","")
call s:hi("StorageClass",       s:urara10_gui,    "",               s:urara10_term,     "",             "","")
call s:hi("String",             s:urara9_gui,     "",               s:urara9_term,      "",             "","")
call s:hi("Structure",          s:urara10_gui,    "",               s:urara10_term,     "",             "","")
"hi Tag                  
call s:hi("Todo",               s:urara7_gui,     s:urara1_gui,     s:urara7_term,      s:urara2_term,  "","")
call s:hi("Type",               s:urara10_gui,    "",               s:urara10_term,     "",             "NONE","")
"hi Typedef              
call s:hi("WhiteSpace",         s:urara4_gui,     "",               s:urara4_term,      "",             "","")

"call s:hi("Boolean", s:nord9_gui, "", s:nord9_term, "", "", "")
"call s:hi("Character", s:nord14_gui, "", s:nord14_term, "", "", "")
"call s:hi("Comment", s:nord3_gui_bright, "", s:nord3_term, "", s:italicize_comments, "")
"call s:hi("Conceal", "", "NONE", "", "NONE", "", "")
"call s:hi("Conditional", s:nord9_gui, "", s:nord9_term, "", "", "")
"call s:hi("Constant", s:nord4_gui, "", "NONE", "", "", "")
"call s:hi("Decorator", s:nord12_gui, "", s:nord12_term, "", "", "")
"call s:hi("Define", s:nord9_gui, "", s:nord9_term, "", "", "")
"call s:hi("Delimiter", s:nord6_gui, "", s:nord6_term, "", "", "")
"call s:hi("Exception", s:nord9_gui, "", s:nord9_term, "", "", "")
"call s:hi("Float", s:nord15_gui, "", s:nord15_term, "", "", "")
"call s:hi("Function", s:nord8_gui, "", s:nord8_term, "", "", "")
"call s:hi("Identifier", s:nord4_gui, "", "NONE", "", "NONE", "")
"call s:hi("Include", s:nord9_gui, "", s:nord9_term, "", "", "")
"call s:hi("Keyword", s:nord9_gui, "", s:nord9_term, "", "", "")
"call s:hi("Label", s:nord9_gui, "", s:nord9_term, "", "", "")
"call s:hi("Number", s:nord15_gui, "", s:nord15_term, "", "", "")
"call s:hi("Operator", s:nord9_gui, "", s:nord9_term, "", "NONE", "")
"call s:hi("PreProc", s:nord9_gui, "", s:nord9_term, "", "NONE", "")
"call s:hi("Repeat", s:nord9_gui, "", s:nord9_term, "", "", "")
"call s:hi("Special", s:nord4_gui, "", "NONE", "", "", "")
"call s:hi("SpecialChar", s:nord13_gui, "", s:nord13_term, "", "", "")
"call s:hi("SpecialComment", s:nord8_gui, "", s:nord8_term, "", s:italicize_comments, "")
"call s:hi("Statement", s:nord9_gui, "", s:nord9_term, "", "", "")
"call s:hi("StorageClass", s:nord9_gui, "", s:nord9_term, "", "", "")
"call s:hi("String", s:nord14_gui, "", s:nord14_term, "", "", "")
"call s:hi("Structure", s:nord9_gui, "", s:nord9_term, "", "", "")
"call s:hi("Tag", s:nord4_gui, "", "", "", "", "")
"call s:hi("Todo", s:nord13_gui, "NONE", s:nord13_term, "NONE", "", "")
"call s:hi("Type", s:nord9_gui, "", s:nord9_term, "", "NONE", "")
"call s:hi("Typedef", s:nord9_gui, "", s:nord9_term, "", "", "")
"hi! link Annotation Decorator
"hi! link Macro Define
"hi! link PreCondit PreProc
"hi! link Variable Identifier

" Syntax Base for plugins
call s:hi("GitAddSign",         s:urara7_gui,     "",               s:urara7_term,      "",             "","")
call s:hi("GitChangeSign",      s:urara8_gui_br,  "",               s:urara8_term_br,   "",             "","")
call s:hi("GitDeleteSign",      s:urara5_gui,     "",               s:urara5_term,      "",             "NONE","")
call s:hi("GitChangeDeleteSign",s:urara10_gui,    "",               s:urara10_term,     "",             "","")

call s:hi("ErrorSign",          s:urara5_gui,     "",               s:urara5_term,      "",             "","")
call s:hi("WarningSign",        s:urara6_gui,     "",               s:urara6_term,      "",             "","")
call s:hi("InfoSign",           s:urara7_gui,     "",               s:urara7_term,      "",             "","")
call s:hi("HintSign",           s:urara7_gui,     "",               s:urara7_term,      "",             "","")

call s:hi("ErrorFloat",         s:urara5_gui,     s:urara1_gui,     s:urara5_term,      s:urara2_term,  "","")
call s:hi("WarningFloat",       s:urara6_gui,     s:urara1_gui,     s:urara6_term,      s:urara2_term,  "","")
call s:hi("InfoFloat",          s:urara7_gui,     s:urara1_gui,     s:urara7_term,      s:urara2_term,  "","")
call s:hi("HintFloat",          s:urara7_gui,     s:urara1_gui,     s:urara7_term,      s:urara2_term,   "","")

call s:hi("ErrorHighlight",     "",               "",               s:urara0_term,      s:urara5_term,  "underline",s:urara5_gui)
call s:hi("WarningHighlight",   "",               "",               s:urara0_term,      s:urara6_term,  "underline",s:urara6_gui)
call s:hi("InfoHighlight",      "",               "",               s:urara0_term,      s:urara7_term,  "underline",s:urara7_gui)
call s:hi("HintHighlight",      "",               "",               s:urara0_term,      s:urara7_term,  "underline",s:urara7_gui)

"hi ReferenceText
"hi ReferenceRead
"hi ReferenceWrite

"call <sid>hi("GitAddSign",           s:gui0B, "", s:cterm0B, "", "", "")
"call <sid>hi("GitChangeSign",        s:gui04, "", s:cterm04, "", "", "")
"call <sid>hi("GitDeleteSign",        s:gui08, "", s:cterm08, "", "", "")
"call <sid>hi("GitChangeDeleteSign",  s:gui04, "", s:cterm04, "", "", "")

"call <sid>hi("ErrorSign",    s:gui08, "", s:cterm08, "", "", "")
"call <sid>hi("WarningSign",  s:gui09, "", s:cterm09, "", "", "")
"call <sid>hi("InfoSign",     s:gui0D, "", s:cterm0D, "", "", "")
"call <sid>hi("HintSign",     s:gui0C, "", s:cterm0C, "", "", "")

"call <sid>hi("ErrorFloat",   s:gui08, s:gui02, s:cterm08, s:cterm02, "", "")
"call <sid>hi("WarningFloat", s:gui09, s:gui02, s:cterm09, s:cterm02, "", "")
"call <sid>hi("InfoFloat",    s:gui0D, s:gui02, s:cterm0D, s:cterm02, "", "")
"call <sid>hi("HintFloat",    s:gui0C, s:gui02, s:cterm0C, s:cterm02, "", "")

"call <sid>hi("ErrorHighlight",   "", "", s:cterm00, s:cterm08, "underline", s:gui08)
"call <sid>hi("WarningHighlight", "", "", s:cterm00, s:cterm09, "underline", s:gui09)
"call <sid>hi("InfoHighlight",    "", "", s:cterm00, s:cterm0D, "underline", s:gui0D)
"call <sid>hi("HintHighlight",    "", "", s:cterm00, s:cterm0C, "underline", s:gui0C)

"call <sid>hi("SpellBad",     "", "", s:cterm00, s:cterm08, "undercurl", s:gui08)
"call <sid>hi("SpellLocal",   "", "", s:cterm00, s:cterm0C, "undercurl", s:gui0C)
"call <sid>hi("SpellCap",     "", "", s:cterm00, s:cterm0D, "undercurl", s:gui0D)
"call <sid>hi("SpellRare",    "", "", s:cterm00, s:cterm0E, "undercurl", s:gui0E)

"call <sid>hi("ReferenceText",   s:gui01, s:gui0A, s:cterm01, s:cterm0A, "", "")
"call <sid>hi("ReferenceRead",   s:gui01, s:gui0B, s:cterm01, s:cterm0B, "", "")
"call <sid>hi("ReferenceWrite",  s:gui01, s:gui08, s:cterm01, s:cterm08, "", "")

" Plugins

" Coc
hi default link CocErrorSign         ErrorSign
hi default link CocWarningSign       WarningSign
hi default link CocInfoSign          InfoSign
hi default link CocHintSign          HintSign

hi default link CocErrorFloat        ErrorFloat
hi default link CocWarningFloat      WarningFloat
hi default link CocInfoFloat         InfoFloat
hi default link CocHintFloat         HintFloat

hi default link CocErrorHighlight    ErrorHighlight
hi default link CocWarningHighlight  WarningHighlight
hi default link CocInfoHighlight     InfoHighlight
hi default link CocHintHighlight     HintHighlight

"hi default link CocSem_angle             Keyword
"hi default link CocSem_annotation        Keyword
"hi default link CocSem_attribute         Type
"hi default link CocSem_bitwise           Keyword
"hi default link CocSem_boolean           Boolean
"hi default link CocSem_brace             Normal
"hi default link CocSem_bracket           Normal
"hi default link CocSem_builtinAttribute  Type
"hi default link CocSem_builtinType       Type
"hi default link CocSem_character         String
"hi default link CocSem_class             Structure
"hi default link CocSem_colon             Normal
"hi default link CocSem_comma             Normal
"hi default link CocSem_comment           Comment
"hi default link CocSem_comparison        Keyword
"hi default link CocSem_concept           Keyword
"hi default link CocSem_constParameter    Identifier
"hi default link CocSem_dependent         Keyword
"hi default link CocSem_dot               Keyword
"hi default link CocSem_enum              Structure
"hi default link CocSem_enumMember        Constant
"hi default link CocSem_escapeSequence    Type
"hi default link CocSem_event             Identifier
"hi default link CocSem_formatSpecifier   Type
"hi default link CocSem_function          Function
"hi default link CocSem_interface         Type
"hi default link CocSem_keyword           Keyword
"hi default link CocSem_label             Keyword
"hi default link CocSem_logical           Keyword
"hi default link CocSem_macro             Macro
"hi default link CocSem_method            Function
"hi default link CocSem_modifier          Keyword
"hi default link CocSem_namespace         Identifier
"hi default link CocSem_number            Number
"hi default link CocSem_operator          Operator
"hi default link CocSem_parameter         Identifier
"hi default link CocSem_parenthesis       Normal
"hi default link CocSem_property          Identifier
"hi default link CocSem_punctuation       Keyword
"hi default link CocSem_regexp            Type
"hi default link CocSem_selfKeyword       Constant
"hi default link CocSem_semicolon         Normal
"hi default link CocSem_string            String
"hi default link CocSem_struct            Structure
"hi default link CocSem_type              Type
"hi default link CocSem_typeAlias         Type
"hi default link CocSem_typeParameter     Type
"hi default link CocSem_unknown           Normal
"hi default link CocSem_variable          Identifier

"call <sid>hi("CocHighlightRead",   s:gui0B, s:gui01,  s:cterm0B, s:cterm01, "", "")
"call <sid>hi("CocHighlightText",   s:gui0A, s:gui01,  s:cterm0A, s:cterm01, "", "")
"call <sid>hi("CocHighlightWrite",  s:gui08, s:gui01,  s:cterm08, s:cterm01, "", "")
"call <sid>hi("CocListMode",        s:gui01, s:gui0B,  s:cterm01, s:cterm0B, "bold", "")
"call <sid>hi("CocListPath",        s:gui01, s:gui0B,  s:cterm01, s:cterm0B, "", "")
"call <sid>hi("CocSessionsName",    s:gui05, "", s:cterm05, "", "", "")

" GitGutter
" > airblade/vim-gitgutter
hi default link GitGutterAdd              GitAddSign
hi default link GitGutterChange           GitChangeSign
hi default link GitGutterDelete           GitDeleteSign
hi default link GitGutterChangeDelete     GitChangeDeleteSign

"call s:hi("GitGutterAdd", s:nord14_gui, "", s:nord14_term, "", "", "")
"call s:hi("GitGutterChange", s:nord13_gui, "", s:nord13_term, "", "", "")
"call s:hi("GitGutterChangeDelete", s:nord11_gui, "", s:nord11_term, "", "", "")
"call s:hi("GitGutterDelete", s:nord11_gui, "", s:nord11_term, "", "", "")


" Languages

hi! link TermCursor Cursor
hi! link ToolbarButton TabLineSel
hi! link ToolbarLine TabLineFill
hi! link cssBraces Delimiter
hi! link cssClassName Special
hi! link cssClassNameDot Normal
hi! link cssPseudoClassId Special
hi! link cssTagName Statement
hi! link helpHyperTextJump Constant
hi! link htmlArg Constant
hi! link htmlEndTag Statement
hi! link htmlTag Statement
hi! link jsonQuote Normal
hi! link phpVarSelector Identifier
hi! link pythonFunction Title
hi! link rubyDefine Statement
hi! link rubyFunction Title
hi! link rubyInterpolationDelimiter String
hi! link rubySharpBang Comment
hi! link rubyStringDelimiter String
hi! link rustFuncCall Normal
hi! link rustFuncName Title
hi! link rustType Constant
hi! link sassClass Special
hi! link shFunction Normal
hi! link vimContinue Comment
hi! link vimFuncSID vimFunction
hi! link vimFuncVar Normal
hi! link vimFunction Title
hi! link vimGroup Statement
hi! link vimHiGroup Statement
hi! link vimHiTerm Identifier
hi! link vimMapModKey Special
hi! link vimOption Identifier
hi! link vimVar Normal
hi! link xmlAttrib Constant
hi! link xmlAttribPunct Statement
hi! link xmlEndTag Statement
hi! link xmlNamespace Statement
hi! link xmlTag Statement
hi! link xmlTagName Statement
hi! link yamlKeyValueDelimiter Delimiter
hi! link CtrlPPrtCursor Cursor
hi! link CtrlPMatch Title
hi! link CtrlPMode2 StatusLine
hi! link deniteMatched Normal
hi! link deniteMatchedChar Title
hi! link elixirBlockDefinition Statement
hi! link elixirDefine Statement
hi! link elixirDocSigilDelimiter String
hi! link elixirDocTest String
hi! link elixirExUnitMacro Statement
hi! link elixirExceptionDefine Statement
hi! link elixirFunctionDeclaration Title
hi! link elixirKeyword Statement
hi! link elixirModuleDeclaration Normal
hi! link elixirModuleDefine Statement
hi! link elixirPrivateDefine Statement
hi! link elixirStringDelimiter String
hi! link jsFlowMaybe Normal
hi! link jsFlowObject Normal
hi! link jsFlowType PreProc
hi! link graphqlName Normal
hi! link graphqlOperator Normal
hi! link gitmessengerHash Comment
hi! link gitmessengerHeader Statement
hi! link gitmessengerHistory Constant
hi! link jsArrowFunction Operator
hi! link jsClassDefinition Normal
hi! link jsClassFuncName Title
hi! link jsExport Statement
hi! link jsFuncName Title
hi! link jsFutureKeys Statement
hi! link jsFuncCall Normal
hi! link jsGlobalObjects Statement
hi! link jsModuleKeywords Statement
hi! link jsModuleOperators Statement
hi! link jsNull Constant
hi! link jsObjectFuncName Title
hi! link jsObjectKey Identifier
hi! link jsSuper Statement
hi! link jsTemplateBraces Special
hi! link jsUndefined Constant
hi! link markdownBold Special
hi! link markdownCode String
hi! link markdownCodeDelimiter String
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment
hi! link ngxDirective Statement
hi! link plug1 Normal
hi! link plug2 Identifier
hi! link plugDash Comment
hi! link plugMessage Special
hi! link SignifySignAdd GitGutterAdd
hi! link SignifySignChange GitGutterChange
hi! link SignifySignChangeDelete GitGutterChangeDelete
hi! link SignifySignDelete GitGutterDelete
hi! link SignifySignDeleteFirstLine SignifySignDelete
hi! link StartifyBracket Comment
hi! link StartifyFile Identifier
hi! link StartifyFooter Constant
hi! link StartifyHeader Constant
hi! link StartifyNumber Special
hi! link StartifyPath Comment
hi! link StartifySection Statement
hi! link StartifySlash Comment
hi! link StartifySpecial Normal
hi! link svssBraces Delimiter
hi! link swiftIdentifier Normal
hi! link typescriptAjaxMethods Normal
hi! link typescriptBraces Normal
hi! link typescriptEndColons Normal
hi! link typescriptFuncKeyword Statement
hi! link typescriptGlobalObjects Statement
hi! link typescriptHtmlElemProperties Normal
hi! link typescriptIdentifier Statement
hi! link typescriptMessage Normal
hi! link typescriptNull Constant
hi! link typescriptParens Normal

