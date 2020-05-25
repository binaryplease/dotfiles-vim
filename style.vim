" Display extra whitespace, show tabs as bar (indent-guides)
set listchars=tab:\|\ ,trail:·,nbsp:·
set list

set conceallevel=0

" Use true color, if possible
if (empty($TMUX))
	if (has("nvim"))
		let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif
	if (has("termguicolors"))
		set termguicolors
	endif
endif
syntax on

set background=dark

" set ansible-generated colorscheme
"
let base16colorspace=256
" colorscheme ansible-theme
colorscheme aurora

" Italic comments
highlight Comment cterm=italic gui=italic

" Airline
" let g:airline#extensions#ale#enabled = 1
" let g:airline_powerline_fonts = 0
let g:airline_theme='base16'
let g:airline_symbols = {}
let g:airline_symbols.linenr = 'ℓ'
let g:airline#extensions#tabline#enabled = 1
set noshowmode " dont show the current mode below the bar
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'

" Color max line length of 100
let &colorcolumn=join(range(101,999),",")

set cmdheight=1
