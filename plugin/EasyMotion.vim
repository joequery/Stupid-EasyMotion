" StupidEasyMotion - Vim motions on speed!
"
" Author: Kim Silkebækken <kim.silkebaekken+vim@gmail.com>
" Source repository: https://github.com/joequery/Stupid-EasyMotion

" Script initialization {{{
	if exists('g:StupidEasyMotion_loaded') || &compatible || version < 702
		finish
	endif

	let g:StupidEasyMotion_loaded = 1
" }}}
" Default configuration {{{
	" Default options {{{
		call StupidEasyMotion#InitOptions({
		\   'leader_key'      : '<Leader><Leader>'
		\ , 'keys'            : 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
		\ , 'do_shade'        : 1
		\ , 'do_mapping'      : 1
		\ , 'grouping'        : 1
		\
		\ , 'hl_group_target' : 'StupidEasyMotionTarget'
		\ , 'hl_group_shade'  : 'StupidEasyMotionShade'
		\ })
	" }}}
	" Default highlighting {{{
		let s:target_hl_defaults = {
		\   'gui'     : ['NONE', '#ff0000' , 'bold']
		\ , 'cterm256': ['NONE', '196'     , 'bold']
		\ , 'cterm'   : ['NONE', 'red'     , 'bold']
		\ }

		let s:shade_hl_defaults = {
		\   'gui'     : ['NONE', '#777777' , 'NONE']
		\ , 'cterm256': ['NONE', '242'     , 'NONE']
		\ , 'cterm'   : ['NONE', 'grey'    , 'NONE']
		\ }

		call StupidEasyMotion#InitHL(g:StupidEasyMotion_hl_group_target, s:target_hl_defaults)
		call StupidEasyMotion#InitHL(g:StupidEasyMotion_hl_group_shade,  s:shade_hl_defaults)

		" Reset highlighting after loading a new color scheme {{{
			augroup StupidEasyMotionInitHL
				autocmd!

				autocmd ColorScheme * call StupidEasyMotion#InitHL(g:StupidEasyMotion_hl_group_target, s:target_hl_defaults)
				autocmd ColorScheme * call StupidEasyMotion#InitHL(g:StupidEasyMotion_hl_group_shade,  s:shade_hl_defaults)
			augroup end
		" }}}
	" }}}
	" Default key mapping {{{
		call StupidEasyMotion#InitMappings({
		\   'f' : { 'name': 'F'  , 'dir': 0 }
		\ , 'w' : { 'name': 'WB' , 'dir': 0 }
		\ , 'W' : { 'name': 'WBW', 'dir': 0 }
		\ })
	" }}}
" }}}

" vim: fdm=marker:noet:ts=4:sw=4:sts=4
