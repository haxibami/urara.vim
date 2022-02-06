let s:urara0_gui = [ '#1c1921', 16 ] " black
let s:urara1_gui = [ '#292433', 53 ]
let s:urara2_gui = [ '#4e4266', 96 ]
let s:urara3_gui = [ '#8a8299', 102 ]
let s:urara4_gui = [ '#d2ced9', 188 ]
let s:urara4_gui_br = [ '#edebef', 231 ]
let s:urara5_gui = [ '#d9989c',  181 ]
let s:urara5_gui_br = [ '#e6bbbe', 224 ]
let s:urara6_gui = [ '#d9c77e', 186 ]
let s:urara6_gui_br = [ '#e4d7a4', 223 ]
let s:urara7_gui = [ '#abbf86', 150 ]
let s:urara7_gui_br = [ '#b8d2aa', 151 ]
let s:urara8_gui = [ '#86bfb6', 115 ]
let s:urara8_gui_br = [ '#a5cec7', 152 ]
let s:urara9_gui = [ '#a6b4de',  146 ]
let s:urara9_gui_br = [ '#cbd3eb', 189 ]
let s:urara10_gui = [ '#9986bf', 175 ]
let s:urara10_gui_br = [ '#b7aad2', 182 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left     = [ [ s:urara0_gui, s:urara3_gui ], [ s:urara4_gui, s:urara2_gui ] ]
let s:p.insert.left     = [ [ s:urara1_gui, s:urara8_gui ], [ s:urara4_gui, s:urara2_gui ] ]
let s:p.visual.left     = [ [ s:urara1_gui, s:urara6_gui ], [ s:urara4_gui, s:urara2_gui ] ]
let s:p.replace.left    = [ [ s:urara1_gui, s:urara8_gui ], [ s:urara5_gui, s:urara2_gui ] ]
let s:p.inactive.left   = [ [ s:urara2_gui, s:urara0_gui ] ]

let s:p.normal.middle   = [ [ s:urara3_gui, s:urara1_gui ] ]
let s:p.inactive.middle = [ [ s:urara2_gui, s:urara3_gui ] ]

let s:p.normal.right    = [ [ s:urara0_gui, s:urara3_gui ], [ s:urara4_gui, s:urara2_gui ] ]
let s:p.inactive.right  = [ [ s:urara4_gui, s:urara1_gui ] ]

let s:p.normal.error    = [ [ s:urara1_gui, s:urara5_gui ] ]
let s:p.normal.warning  = [ [ s:urara1_gui, s:urara5_gui ] ]

let s:p.tabline.left    = [ [ s:urara3_gui, s:urara1_gui ] ]
let s:p.tabline.middle  = [ [ s:urara3_gui, s:urara1_gui ] ]
let s:p.tabline.right   = [ [ s:urara3_gui, s:urara1_gui ] ]
let s:p.tabline.tabsel  = [ [ s:urara3_gui, s:urara10_gui ] ]

let g:lightline#colorscheme#urara#palette = lightline#colorscheme#flatten(s:p)
