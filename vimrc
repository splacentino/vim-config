" .vimrc
" "
" " Copyright (c) 2006 by PiT (Pierre BETTENS) <pbettens@heb.be>
" " Modified by sPlacentino <39631@heb.be>
"
"
set nocompatible
call pathogen#infect()

"
set shell=$SHELL

" Indentation
set autoindent
set smartindent

" Parenthesis balance
set showmatch 

" Line wrapping
set tabstop=4
set shiftwidth=4
set textwidth=80

" 
set colorcolumn=81
set scrolloff=5
"
set nu

" 
set vb
set incsearch

"
set encoding=utf-8

"set autochdir

"LOOK AND FEEL CONFIGURATION
syntax enable
set background=dark " dark | light "

"" SOLARIZED COLORS
"let g:solarized_termcolors=256    "default value is 16
"colorscheme solarized
"
"" SEOUL COLORS
"colorscheme seoul256
colorscheme flattown

if $TERM =~ '256color'
	set t_Co=256
elseif $TERM =~ '^xterm$'
	set t_Co=256
endif
"END-LOOK AND FEEL CONFIGURATION

"AIRLINE
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

set laststatus=2
highlight StatusLine term=bold cterm=bold ctermbg=9
"END-AIRLINE

" JS
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"
" END-JS
" 
set wildmode=longest,list

" Unmap direction keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Remap ESC key
:imap ;: <Esc>
:map ;: <Esc>

"NERDTREE
map <F9> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1
"END-NERDTREE

"TABULAR
let g:tabular_loaded = 1     
"END TABULAR
"
"SYNTASTIC
map <F8> :SyntasticCheck<CR>
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -pedantic-errors' 
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_auto_refresh_includes = 1

let g:syntastic_c_compiler = 'gcc'
let g:syntastic_compiler_options = '-std=c99 -pedantic-errors'
let g:syntastic_check_header = 1
let g:syntastic_auto_refresh_includes = 1

let g:syntastic_c#_compiler = 'mcs'
let g:syntastic_c#_check_header = 1
let g:syntastic_c#_auto_refresh_includes = 1

let g:syntastic_scala_compiler = 'scalac'
let g:syntastic_scala_checkers = 'fsc'

let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
"END-SYNTASTIC

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"

"LATEX
let g:tex_indent_items = 1
"END-LATEX

"EASY TAG
" ----- xolox/vim-easytags settings -----
"Where to look for tags files
set tags=./.tags;,~/.vimtags
"Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1
" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
"END-EASY TAG

" Dictonnaire français, monsieur.
map <silent> <F6> "<Esc>:silent setlocal spell! spelllang=fr<CR>"

" Using alt+{j,k,l,m} to move while using INSERT MODE
"inoremap <A-h> <C-o>h
"inoremap <A-j> <C-o>j
"inoremap <A-k> <C-o>k
"inoremap <A-l> <C-o>l

" Generics abbreviations
abbr retrun return
abbr lenght length
abbr rigth right

" Bash abbreviations
abbr _script #!/bin/sh

" Scala abbreviations
abbr smain def main(args : Array[String]) =
abbr ifargs if (args.length > 0 && args(0).matches("\\d+"))<CR>

" LaTeX abbreviations
abbr _chap	\chapter{}<ESC>i
abbr s{ 		\section{
abbr ss{  	\subsection{
abbr sss{ 	\subsubsection{
abbr bf{		\textbf{
abbr it{ 	\textit{<esc>la
abbr tt{ 	\texttt{
abbr sc{ 	\textsc{
abbr \i 		\item
abbr threadI \textit{thread} 
abbr mutexI \textit{mutex}

" Pandoc abbreviations
abbr _** ****<ESC>hi

" HTML abbreviations
abbr _doc <!DOCTYPE html><CR>
abbr _docc <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><CR>
abbr _link  <link rel="stylesheet" type="text/css" href="theme.css"><CR>
abbr _html <html><CR><CR></html><ESC>ki
abbr _body <body><CR><CR></body><ESC>ki
abbr _head <head><CR><CR></head><ESC>ki
abbr _meta <meta content="text/html" charset="utf-8" http-equiv="Content-Type" />
abbr _title <title><CR><CR></title><ESC>ki
abbr _br <br /><CR>
abbr __p <p><CR><CR></p><ESC>ki
abbr _hh1 <h1><CR><CR></h1><ESC>ki
abbr _input <input type="submit" value=""><ESC>hi

" Write corresponding brace
inoremap {<CR> {<CR>}<C-o>O

" Comment (visual bloc)
vmap ;c <ESC>`<i/*<cr><ESC>`>a<cr>*/<ESC>
vmap ;j <ESC>`<i/**<cr><ESC>`>a<cr>*/<ESC>

" LaTeX commands
com L w|!latex % 				
com V !xdvi %:r & 		
com Pdf w|!pdflatex % 	
com Xpdf !xpdf %:r.pdf & 	

com Pdc w|!pandoc % -o %:r.pdf

filetype plugin on
filetype indent on
