" Vim color file - chela_light_modified
" Generated by http://bytefluent.com/vivify 2021-10-16
set background=light
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "chela_light_modified"

"hi SignColumn -- no settings --
hi SignColumn guifg=#222222 guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=235 ctermbg=15 cterm=NONE
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#222222 guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=235 ctermbg=15 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi Float -- no settings --
"hi Union -- no settings --
"hi VisualNOS -- no settings --
"hi EnumerationName -- no settings --
"hi SpellCap -- no settings --
"hi SpellLocal -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#000000 guibg=#ffbb00 guisp=#ffbb00 gui=NONE ctermfg=NONE ctermbg=214 cterm=NONE
hi WildMenu guifg=#ffffff guibg=#339900 guisp=#339900 gui=NONE ctermfg=15 ctermbg=28 cterm=NONE
hi SpecialComment guifg=#cc00cc guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=164 ctermbg=15 cterm=NONE
hi Typedef guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi Title guifg=#6666ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=63 ctermbg=15 cterm=NONE
hi Folded guifg=#2222ff guibg=#eeeeee guisp=#eeeeee gui=NONE ctermfg=21 ctermbg=255 cterm=NONE
hi PreCondit guifg=#cc00cc guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=164 ctermbg=15 cterm=NONE
hi Include guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi TabLineSel guifg=#ffffff guibg=#2222ff guisp=#2222ff gui=NONE ctermfg=15 ctermbg=21 cterm=NONE
hi StatusLineNC guifg=#999999 guibg=#2222ff guisp=#2222ff gui=NONE ctermfg=246 ctermbg=21 cterm=NONE
hi NonText guifg=#999999 guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=246 ctermbg=15 cterm=NONE
hi DiffText guifg=#000000 guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=NONE ctermbg=11 cterm=NONE
hi ErrorMsg guifg=#ffffff guibg=#ff2222 guisp=#ff2222 gui=NONE ctermfg=15 ctermbg=196 cterm=NONE
hi Debug guifg=#cc00cc guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=164 ctermbg=15 cterm=NONE
hi PMenuSbar guifg=NONE guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
hi Identifier guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi SpecialChar guifg=#cc2222 guibg=#fafafa guisp=#fafafa gui=underline ctermfg=160 ctermbg=15 cterm=underline
hi Conditional guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi StorageClass guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi Todo guifg=#ffffff guibg=#339933 guisp=#339933 gui=NONE ctermfg=15 ctermbg=71 cterm=NONE
hi Special guifg=#cc00cc guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=164 ctermbg=15 cterm=NONE
hi LineNr guifg=#cccccc guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=252 ctermbg=15 cterm=NONE
hi StatusLine guifg=#ffffff guibg=#2222ff guisp=#2222ff gui=NONE ctermfg=15 ctermbg=21 cterm=NONE
hi Label guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi PMenuSel guifg=#ffffff guibg=#2222ff guisp=#2222ff gui=NONE ctermfg=15 ctermbg=21 cterm=NONE
hi Search guifg=#000000 guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=NONE ctermbg=11 cterm=NONE
hi Delimiter guifg=#cc00cc guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=164 ctermbg=15 cterm=NONE
hi Statement guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi Comment guifg=#339900 guibg=#fafafa guisp=#fafafa gui=italic ctermfg=28 ctermbg=15 cterm=NONE
hi Character guifg=#cc2222 guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=160 ctermbg=15 cterm=NONE
hi Number guifg=#cc2222 guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=160 ctermbg=15 cterm=NONE
hi Boolean guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi Operator guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi CursorLine guifg=NONE guibg=#eeeeee guisp=#eeeeee gui=NONE ctermfg=NONE ctermbg=255 cterm=NONE
hi TabLineFill guifg=#aaaaaa guibg=#aaaaaa guisp=#aaaaaa gui=NONE ctermfg=248 ctermbg=248 cterm=NONE
hi Question guifg=#ffffff guibg=#339900 guisp=#339900 gui=NONE ctermfg=15 ctermbg=28 cterm=NONE
hi WarningMsg guifg=#ff0000 guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=196 ctermbg=15 cterm=NONE
hi DiffDelete guifg=#ff6666 guibg=#ff6666 guisp=#ff6666 gui=NONE ctermfg=9 ctermbg=9 cterm=NONE
hi ModeMsg guifg=#999999 guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=246 ctermbg=15 cterm=NONE
hi CursorColumn guifg=NONE guibg=#eeeeee guisp=#eeeeee gui=NONE ctermfg=NONE ctermbg=255 cterm=NONE
hi Define guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi Function guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi FoldColumn guifg=#999999 guibg=#eeeeee guisp=#eeeeee gui=NONE ctermfg=246 ctermbg=255 cterm=NONE
hi PreProc guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi Visual guifg=#333333 guibg=#cccccc guisp=#cccccc gui=NONE ctermfg=236 ctermbg=252 cterm=NONE
hi MoreMsg guifg=#ffffff guibg=#339900 guisp=#339900 gui=NONE ctermfg=15 ctermbg=28 cterm=NONE
hi VertSplit guifg=#2222ff guibg=#2222ff guisp=#2222ff gui=NONE ctermfg=21 ctermbg=21 cterm=NONE
hi Exception guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi Keyword guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi Type guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi DiffChange guifg=#cccc99 guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=187 ctermbg=11 cterm=NONE
hi Cursor guifg=#ffffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Error guifg=#ffffff guibg=#ff2222 guisp=#ff2222 gui=NONE ctermfg=15 ctermbg=196 cterm=NONE
hi PMenu guifg=#222222 guibg=#cccccc guisp=#cccccc gui=NONE ctermfg=235 ctermbg=252 cterm=NONE
hi SpecialKey guifg=#cc00cc guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=164 ctermbg=15 cterm=NONE
hi Constant guifg=#cc2222 guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=160 ctermbg=15 cterm=NONE
hi Tag guifg=#cc00cc guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=164 ctermbg=15 cterm=NONE
hi String guifg=#cc2222 guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=160 ctermbg=15 cterm=NONE
hi PMenuThumb guifg=NONE guibg=#cccccc guisp=#cccccc gui=NONE ctermfg=NONE ctermbg=252 cterm=NONE
hi MatchParen guifg=NONE guibg=#cccccc guisp=#cccccc gui=NONE ctermfg=NONE ctermbg=252 cterm=NONE
hi Repeat guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi Directory guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi Structure guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi Macro guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=NONE ctermfg=21 ctermbg=15 cterm=NONE
hi Underlined guifg=#2222ff guibg=#fafafa guisp=#fafafa gui=underline ctermfg=21 ctermbg=15 cterm=underline
hi DiffAdd guifg=#000000 guibg=#66ff66 guisp=#66ff66 gui=NONE ctermfg=NONE ctermbg=83 cterm=NONE
hi TabLine guifg=#222222 guibg=#cccccc guisp=#cccccc gui=NONE ctermfg=235 ctermbg=252 cterm=NONE
hi cursorim guifg=#ffffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi lcursor guifg=#ffffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
