" This scheme was created by CSApproxSnapshot
" on Sat, 27 Mar 2010

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || &term =~? "^konsole"
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=147 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000000
    CSAHi Error term=reverse cterm=NONE ctermbg=160 ctermfg=231 gui=NONE guibg=#dd0805 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=20 gui=NONE guibg=#fbf204 guifg=#0000d4
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=113 gui=NONE guibg=bg guifg=#64ce3e
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=59 ctermfg=244 gui=NONE guibg=#343434 guifg=#808080
    CSAHi NonText term=bold cterm=bold ctermbg=16 ctermfg=16 gui=bold guibg=#000000 guifg=#000000
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=39 gui=NONE guibg=bg guifg=#01abe9
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=160 ctermfg=231 gui=NONE guibg=#dd0805 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=231 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#fbf204 guifg=#000000
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=16 ctermfg=249 gui=NONE guibg=#000000 guifg=#aeaeae
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=199 ctermfg=fg gui=NONE guibg=#f10883 guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=244 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bfbfbf guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=244 ctermfg=fg gui=underline guibg=#808080 guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=231 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=102 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=102 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi Support term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#8fa6cd
    CSAHi Entity term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#fa6513
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=28 gui=bold guibg=bg guifg=#006411
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=238 ctermfg=231 gui=italic guibg=#444444 guifg=#f6f3e8
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=138 ctermfg=238 gui=reverse guibg=#444444 guifg=#857b6f
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=238 ctermfg=238 gui=reverse guibg=#444444 guifg=#444444
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#f6f3e8
    CSAHi Visual term=reverse cterm=NONE ctermbg=231 ctermfg=244 gui=reverse guibg=#808080 guifg=fg
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=160 gui=NONE guibg=bg guifg=#dd0805
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#fbf204 guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=244 ctermfg=39 gui=NONE guibg=#808080 guifg=#01abe9
    CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=37 ctermfg=fg gui=NONE guibg=#008080 guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=249 gui=italic guibg=bg guifg=#aeaeae
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=191 gui=NONE guibg=bg guifg=#d7fa41
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#fb8000
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#40ffff
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=221 gui=NONE guibg=bg guifg=#f8de33
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=219 gui=NONE guibg=bg guifg=#ff80ff
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=120 gui=bold guibg=bg guifg=#60ff60
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=39 gui=NONE guibg=#bfbfbf guifg=#01abe9
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=#000080 guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=#800080 guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=20 gui=bold guibg=#008080 guifg=#0000d4
    CSAHi DiffText term=reverse cterm=bold ctermbg=160 ctermfg=fg gui=bold guibg=#dd0805 guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=39 gui=NONE guibg=#bfbfbf guifg=#01abe9
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=Blue
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=Magenta
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=Cyan
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=255 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=153 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000000
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#dd0805 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=21 gui=NONE guibg=#fbf204 guifg=#0000d4
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=119 gui=NONE guibg=bg guifg=#64ce3e
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=236 ctermfg=244 gui=NONE guibg=#343434 guifg=#808080
    CSAHi NonText term=bold cterm=bold ctermbg=16 ctermfg=16 gui=bold guibg=#000000 guifg=#000000
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=45 gui=NONE guibg=bg guifg=#01abe9
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#dd0805 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=255 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#fbf204 guifg=#000000
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=16 ctermfg=188 gui=NONE guibg=#000000 guifg=#aeaeae
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=199 ctermfg=fg gui=NONE guibg=#f10883 guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=244 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bfbfbf guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=244 ctermfg=fg gui=underline guibg=#808080 guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=255 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi Support term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#8fa6cd
    CSAHi Entity term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#fa6513
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=28 gui=bold guibg=bg guifg=#006411
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=238 ctermfg=231 gui=italic guibg=#444444 guifg=#f6f3e8
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=145 ctermfg=238 gui=reverse guibg=#444444 guifg=#857b6f
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=238 ctermfg=238 gui=reverse guibg=#444444 guifg=#444444
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#f6f3e8
    CSAHi Visual term=reverse cterm=NONE ctermbg=255 ctermfg=244 gui=reverse guibg=#808080 guifg=fg
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#dd0805
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#fbf204 guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=244 ctermfg=45 gui=NONE guibg=#808080 guifg=#01abe9
    CSAHi lCursor term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=37 ctermfg=fg gui=NONE guibg=#008080 guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=188 gui=italic guibg=bg guifg=#aeaeae
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=228 gui=NONE guibg=bg guifg=#d7fa41
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#fb8000
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=123 gui=NONE guibg=bg guifg=#40ffff
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=227 gui=NONE guibg=bg guifg=#f8de33
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=219 gui=NONE guibg=bg guifg=#ff80ff
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=120 gui=bold guibg=bg guifg=#60ff60
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=45 gui=NONE guibg=#bfbfbf guifg=#01abe9
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=#000080 guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=#800080 guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=21 gui=bold guibg=#008080 guifg=#0000d4
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#dd0805 guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=45 gui=NONE guibg=#bfbfbf guifg=#01abe9
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=Blue
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=Magenta
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=Cyan
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=111 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000000
    CSAHi Error term=reverse cterm=NONE ctermbg=160 ctermfg=231 gui=NONE guibg=#dd0805 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=20 gui=NONE guibg=#fbf204 guifg=#0000d4
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=77 gui=NONE guibg=bg guifg=#64ce3e
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=236 ctermfg=244 gui=NONE guibg=#343434 guifg=#808080
    CSAHi NonText term=bold cterm=bold ctermbg=16 ctermfg=16 gui=bold guibg=#000000 guifg=#000000
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#01abe9
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=160 ctermfg=231 gui=NONE guibg=#dd0805 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=231 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#fbf204 guifg=#000000
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=29 gui=bold guibg=bg guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=16 ctermfg=145 gui=NONE guibg=#000000 guifg=#aeaeae
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=198 ctermfg=fg gui=NONE guibg=#f10883 guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=244 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bfbfbf guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=244 ctermfg=fg gui=underline guibg=#808080 guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=231 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi Support term=NONE cterm=NONE ctermbg=bg ctermfg=110 gui=NONE guibg=bg guifg=#8fa6cd
    CSAHi Entity term=NONE cterm=NONE ctermbg=bg ctermfg=202 gui=NONE guibg=bg guifg=#fa6513
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=22 gui=bold guibg=bg guifg=#006411
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=238 ctermfg=230 gui=italic guibg=#444444 guifg=#f6f3e8
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=101 ctermfg=238 gui=reverse guibg=#444444 guifg=#857b6f
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=238 ctermfg=238 gui=reverse guibg=#444444 guifg=#444444
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=230 gui=bold guibg=bg guifg=#f6f3e8
    CSAHi Visual term=reverse cterm=NONE ctermbg=231 ctermfg=244 gui=reverse guibg=#808080 guifg=fg
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=160 gui=NONE guibg=bg guifg=#dd0805
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#fbf204 guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=244 ctermfg=38 gui=NONE guibg=#808080 guifg=#01abe9
    CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=30 ctermfg=fg gui=NONE guibg=#008080 guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=145 gui=italic guibg=bg guifg=#aeaeae
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=191 gui=NONE guibg=bg guifg=#d7fa41
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#fb8000
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#40ffff
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=221 gui=NONE guibg=bg guifg=#f8de33
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=213 gui=NONE guibg=bg guifg=#ff80ff
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=83 gui=bold guibg=bg guifg=#60ff60
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=38 gui=NONE guibg=#bfbfbf guifg=#01abe9
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=18 ctermfg=fg gui=NONE guibg=#000080 guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=90 ctermfg=fg gui=NONE guibg=#800080 guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=30 ctermfg=20 gui=bold guibg=#008080 guifg=#0000d4
    CSAHi DiffText term=reverse cterm=bold ctermbg=160 ctermfg=fg gui=bold guibg=#dd0805 guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=38 gui=NONE guibg=#bfbfbf guifg=#01abe9
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=Blue
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=Magenta
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=Cyan
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=79 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=39 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000000
    CSAHi Error term=reverse cterm=NONE ctermbg=48 ctermfg=79 gui=NONE guibg=#dd0805 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=76 ctermfg=18 gui=NONE guibg=#fbf204 guifg=#0000d4
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=40 gui=NONE guibg=bg guifg=#64ce3e
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=80 ctermfg=83 gui=NONE guibg=#343434 guifg=#808080
    CSAHi NonText term=bold cterm=bold ctermbg=16 ctermfg=16 gui=bold guibg=#000000 guifg=#000000
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=23 gui=NONE guibg=bg guifg=#01abe9
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=48 ctermfg=79 gui=NONE guibg=#dd0805 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=79 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#fbf204 guifg=#000000
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=16 ctermfg=85 gui=NONE guibg=#000000 guifg=#aeaeae
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=65 ctermfg=fg gui=NONE guibg=#f10883 guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=83 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=#bfbfbf guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=83 ctermfg=fg gui=underline guibg=#808080 guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=79 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=81 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=81 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi Support term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#8fa6cd
    CSAHi Entity term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#fa6513
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=20 gui=bold guibg=bg guifg=#006411
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=80 ctermfg=79 gui=italic guibg=#444444 guifg=#f6f3e8
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=37 ctermfg=80 gui=reverse guibg=#444444 guifg=#857b6f
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=80 ctermfg=80 gui=reverse guibg=#444444 guifg=#444444
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=79 gui=bold guibg=bg guifg=#f6f3e8
    CSAHi Visual term=reverse cterm=NONE ctermbg=79 ctermfg=83 gui=reverse guibg=#808080 guifg=fg
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=48 gui=NONE guibg=bg guifg=#dd0805
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#fbf204 guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=83 ctermfg=23 gui=NONE guibg=#808080 guifg=#01abe9
    CSAHi lCursor term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=21 ctermfg=fg gui=NONE guibg=#008080 guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=85 gui=italic guibg=bg guifg=#aeaeae
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=60 gui=NONE guibg=bg guifg=#d7fa41
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#fb8000
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#40ffff
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=72 gui=NONE guibg=bg guifg=#f8de33
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#ff80ff
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=45 gui=bold guibg=bg guifg=#60ff60
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=85 ctermfg=23 gui=NONE guibg=#bfbfbf guifg=#01abe9
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=17 ctermfg=fg gui=NONE guibg=#000080 guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=33 ctermfg=fg gui=NONE guibg=#800080 guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=21 ctermfg=18 gui=bold guibg=#008080 guifg=#0000d4
    CSAHi DiffText term=reverse cterm=bold ctermbg=48 ctermfg=fg gui=bold guibg=#dd0805 guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=85 ctermfg=23 gui=NONE guibg=#bfbfbf guifg=#01abe9
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=64 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=19 gui=undercurl guibg=bg guifg=fg guisp=Blue
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=67 gui=undercurl guibg=bg guifg=fg guisp=Magenta
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=31 gui=undercurl guibg=bg guifg=fg guisp=Cyan
endif

if 1
    delcommand CSAHi
endif
