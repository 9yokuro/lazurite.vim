vim9script

highlight clear

if exists("syntax_on")
  syntax reset
endif

g:colors_name = "lazurite"

const colors: dict<string> = {
  foreground: "#FFFFFF",
  background: "#121212",

  black: "#171C21",
  red: "#C24F5D",
  green: "#4FC287",
  yellow: "#FFBE98",
  blue: "#4F8BC2",
  magenta: "#BE99FF",
  cyan: "#99DAFF",
  white: "#EFF4F9",

  bright_black: "#242B33",
  bright_red: "#E65E6E",
  bright_green: "#5EE6A0",
  bright_yellow: "#FFCFB3",
  bright_blue: "#5EA4E6",
  bright_magenta: "#CFB3FF",
  bright_cyan: "#B3E3FF",
  bright_white: "#F5FAFF",
}

const fg_foreground: string = "guifg=" .. colors.foreground
const fg_background: string = "guifg=" .. colors.background
const fg_black: string = "guifg=" .. colors.black
const fg_red: string = "guifg=" .. colors.red
const fg_green: string = "guifg=" .. colors.green
const fg_yellow: string = "guifg=" .. colors.yellow
const fg_blue: string = "guifg=" .. colors.blue
const fg_magenta: string = "guifg=" .. colors.magenta
const fg_cyan: string = "guifg=" .. colors.cyan
const fg_white: string = "guifg=" .. colors.white
const fg_bright_black: string = "guifg=" .. colors.bright_black
const fg_bright_red: string = "guifg=" .. colors.bright_red
const fg_bright_green: string = "guifg=" .. colors.bright_green
const fg_bright_yellow: string = "guifg=" .. colors.bright_yellow
const fg_bright_blue: string = "guifg=" .. colors.bright_blue
const fg_bright_magenta: string = "guifg=" .. colors.bright_magenta
const fg_bright_cyan: string = "guifg=" .. colors.bright_cyan
const fg_bright_white: string = "guifg=" .. colors.bright_white
const fg_none: string = "guifg=NONE"

const bg_foreground: string = "guibg=" .. colors.foreground
const bg_background: string = "guibg=" .. colors.background
const bg_black: string = "guibg=" .. colors.black
const bg_red: string = "guibg=" .. colors.red
const bg_green: string = "guibg=" .. colors.green
const bg_yellow: string = "guibg=" .. colors.yellow
const bg_blue: string = "guibg=" .. colors.blue
const bg_magenta: string = "guibg=" .. colors.magenta
const bg_cyan: string = "guibg=" .. colors.cyan
const bg_white: string = "guibg=" .. colors.white
const bg_bright_black: string = "guibg=" .. colors.bright_black
const bg_bright_red: string = "guibg=" .. colors.bright_red
const bg_bright_green: string = "guibg=" .. colors.bright_green
const bg_bright_yellow: string = "guibg=" .. colors.bright_yellow
const bg_bright_blue: string = "guibg=" .. colors.bright_blue
const bg_bright_magenta: string = "guibg=" .. colors.bright_magenta
const bg_bright_cyan: string = "guibg=" .. colors.bright_cyan
const bg_bright_white: string = "guibg=" .. colors.bright_white
const bg_none: string = "guibg=NONE"

const bold: string = "cterm=bold gui=bold"
const italic: string = "cterm=italic gui=italic"
const reverse: string = "cterm=reverse gui=reverse"
const underline: string = "cterm=underline gui=underline"
const none: string = "cterm=NONE gui=NONE"

execute "highlight Comment" fg_bright_white bg_none italic
execute "highlight Constant" fg_bright_cyan bg_none none
highlight link String Constant
highlight link Character Constant
highlight link Number Constant
highlight link Boolean Constant
highlight link Float Constant
execute "highlight Identifier" fg_blue bg_none none
highlight link Function Identifier
execute "highlight Statement" fg_bright_magenta bg_none none
highlight link Conditional Statement
highlight link Repeat Statement
highlight link Label Statement
highlight link Operator Statement
highlight link Keyword Statement
highlight link Exception Statement
execute "highlight PreProc" fg_cyan bg_none italic
highlight link Include PreProc
highlight link Define PreProc
highlight link Macro PreProc
highlight link PreCondit PreProc
execute "highlight Type" fg_bright_blue bg_none none
highlight link StorageClass Type
highlight link Structure Type
highlight link Typedef Type
execute "highlight Special" fg_magenta bg_none none
highlight link SpecialChar Special
highlight link Tag Special
highlight link Delimiter Special
highlight link SpecialComment Special
highlight link Debug Special
execute "highlight Underlined" fg_foreground bg_none underline
execute "highlight Error" fg_red bg_none none
execute "highlight Todo" fg_black bg_yellow none
execute "highlight Added" fg_green bg_none none
execute "highlight Removed" fg_bright_red bg_none none

execute "highlight ColorColumn" fg_foreground bg_bright_black none
execute "highlight Conceal" fg_foreground bg_background none
execute "highlight CursorColumn" fg_foreground bg_bright_black none
execute "highlight CursorLine" fg_foreground bg_bright_black none
execute "highlight Directory" fg_bright_blue bg_none none
execute "highlight DiffAdd" fg_bright_black bg_cyan none
execute "highlight DiffChange" fg_bright_black bg_yellow none
execute "highlight DiffDelete" fg_bright_black bg_bright_blue none
execute "highlight DiffText" fg_bright_black bg_red none
highlight link EndOfBuffer NonText
execute "highlight ErrorMsg" fg_foreground bg_red none
execute "highlight VertSplit" fg_bright_white bg_none none
execute "highlight Folded" fg_bright_cyan bg_none none
execute "highlight FoldColumn" fg_bright_cyan bg_none none
execute "highlight SignColumn" fg_bright_cyan bg_none none
execute "highlight IncSearch" fg_none bg_none reverse
execute "highlight LineNr" fg_bright_black bg_none none
highlight link LineNrAbove LineNr
highlight link LineNrBelow LineNr
execute "highlight CursorLineNr" fg_foreground bg_bright_black none
highlight link CursorLineFold FoldColumn
highlight link CursorLineSign SignColumn
execute "highlight MatchParen" fg_foreground bg_background none
execute "highlight MessageWindow" fg_foreground bg_none none
execute "highlight ModeMsg" fg_white bg_none none
execute "highlight MsgArea" fg_foreground bg_none none
execute "highlight MoreMsg" fg_magenta bg_none none
execute "highlight NonText" fg_bright_black bg_none none
execute "highlight Normal" fg_white bg_black none
execute "highlight Pmenu" fg_foreground bg_bright_black none
execute "highlight PmenuSel" fg_foreground bg_blue none
highlight link PmenuKind Pmenu
highlight link PmenuKindSel PmenuSel
highlight link PmenuExtra Pmenu
highlight link PmenuExtraSel PmenuSel
execute "highlight PmenuSbar" fg_foreground bg_background none
execute "highlight PmenuThumb" fg_foreground bg_black none
execute "highlight PopupNotification" fg_foreground bg_bright_black none
execute "highlight Question" fg_cyan bg_none none
execute "highlight Search" fg_background bg_yellow none
execute "highlight SpecialKey" fg_bright_blue bg_none none
execute "highlight SpellBad guisp=NONE" fg_bright_black bg_bright_yellow none
execute "highlight SpellCap guisp=NONE" fg_bright_black bg_cyan none
execute "highlight SpellLocal guisp=NONE" fg_bright_black bg_bright_cyan none
execute "highlight SpellRare guisp=NONE" fg_bright_black bg_bright_red none
execute "highlight StatusLine" fg_bright_white bg_none none
execute "highlight StatusLineNC" fg_bright_white bg_none none
execute "highlight StatusLineTerm" fg_bright_white bg_none none
execute "highlight StatusLineTermNC" fg_bright_white bg_none none
execute "highlight TabLine" fg_background bg_bright_black none
execute "highlight TabLineFill" fg_background bg_bright_black none
execute "highlight TabLineSel" fg_background bg_black none
execute "highlight Terminal" fg_foreground bg_background none
execute "highlight Title" fg_blue bg_none none
execute "highlight VisualNOS" fg_black bg_bright_black none
execute "highlight WarningMsg" fg_red bg_none none
execute "highlight WildMenu" fg_foreground bg_bright_black none
