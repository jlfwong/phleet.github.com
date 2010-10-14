syntax on

set mouse=a

" Folding {{{
set foldmethod=marker 
set foldcolumn=2
set fillchars=vert:\|,fold:\ 
nmap <space> za
function! MyFoldText()
    " FoldMethod {{{
  let line = getline(v:foldstart)
  let sub = substitute(line, '\/\/\|{\{3\}\d\=\|^\s\+','','g')
  for i in range(v:foldlevel-2)
    let sub = "\t" . sub
  endfor
  if v:foldlevel > 1
    let sub = "+--> " . sub
  endif
  return sub
  " }}}
endfunction
set foldtext=getline(v:foldstart)
" }}}

set backspace=2 "Make backspace work as expected on Mac OS X
set autoindent  "Auto Indent code - This simply retains indentation level
set tabstop=2   "Set space width of tabs
set sw=2
set expandtab

set splitright  "By default, split to the right
set splitbelow
set number      "Add line numbers
set ruler       "Display Cursor Position
set title       "Display filename in titlebar

set noswapfile
set backupdir=~/tmp

set incsearch   "Display search resultings as you type
set ignorecase
set wildmenu

filetype plugin on
filetype indent off

let mapleader=","
let maplocalleader=","

"Map Semicolon to : for faster command execution
nmap ; :

"] and ^] switch between tabs
nmap ] :tabNext<CR>

"\ and | switch between split screens
nmap \ <C-w><C-w>
nmap \| <C-w>W

"NERDTree
nmap <Leader>n :NERDTreeToggle<CR>

"FuzzyFinder
nmap <Leader>ff :FufFile<CR>
nmap <Leader>fd :FufDir<CR>
nmap <Leader>fb :FufBuffer<CR>
nmap <Leader>ft :FufTag<CR>

"Make
nmap <Leader>m :make<CR>

"Allow navigating fuzzyfinder with tab
autocmd FileType fuf inoremap <buffer> <Tab> <C-n>

",p copies the current filepath
nmap <Leader>p :!echo `pwd`/% \| pbcopy<CR><CR>

"for use with rg (Rails testing)
nmap <Leader>t ;!echo rg `pwd`/% \| pbcopy<CR><CR>

"OmniCompletion
set completeopt=longest,menuone
set omnifunc=syntaxcomplete#Complete
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

"LANGUAGE SPECIFIC COMMANDS
" For all languages:
"  <Leader>c - Syntax Check / Compile
"  <Leader>r - Execute

function! FileWOExt()
	"Returns the filename with no extension
	return substitute(@%, '\.[^\.]*$','','')
endfunction

"VimRC
function! EnterVimRC()
	" Both <Leader>c and <Leader>r are used to be consistent
	map <buffer> <Leader>c :w<CR>:so %
	map <buffer> <Leader>r :w<CR>:so %
	au BufWritePost <buffer> so %
endfunction
au FileType vim call EnterVimRC()

"Python
function! EnterPython()
	"Yes, I see that <Leader>c and <Leader>r do the same
	" thing. It'll stay that way until python
	" introduces a nice syntax-only flag
	map <buffer> <Leader>c :w<CR>:!clear;python %
	map <buffer> <Leader>r :w<CR>:!clear;python %
endfunction
au FileType python call EnterPython()

"PHP
function! EnterPhp()
	map <buffer> <Leader>c :w<CR>:!clear;php -l %
	map <buffer> <Leader>r :w<CR>:!clear;php %
endfunction
au BufNewFile,BufRead *.inc setfiletype php
au FileType php call EnterPhp()


"C++
function! EnterCpp()
	map <buffer> <Leader>c :w<CR>:!clear;g++ -Wall %
	map <buffer> <Leader>r :!clear;./a.out
endfunction
au FileType cpp call EnterCpp()

"C
function! EnterC()
	map <buffer> <Leader>c :w<CR>:!clear;gcc -std=c99 -Wall %
	map <buffer> <Leader>r :!clear;./a.out
endfunction
au FileType c call EnterC()

"C#
function! EnterCS()
	map <buffer> <Leader>c :w<CR>:!clear;gmcs %
	map <buffer> <Leader>r :!clear;mono <C-R>=FileWOExt()<CR>.exe
endfunction
au FileType cs call EnterCS()

"Java
function! EnterJava()
	map <buffer> <Leader>c :w<CR>:!clear;javac %
	map <buffer> <Leader>r :!clear;java <C-R>=FileWOExt()<CR>
endfunction
au FileType java call EnterJava()

"Bash
function! EnterBash()
	map <buffer> <Leader>c :w<CR>:!clear;sh %
	map <buffer> <Leader>r :w<CR>:!clear;sh %
endfunction
au FileType sh call EnterBash()

"Perl
function! EnterPerl()
	map <buffer> <Leader>c :w<CR>:!clear;perl -wc %
	map <buffer> <Leader>r :w<CR>:!clear;perl -w %
endfunction
au FileType perl call EnterPerl()

"Ruby
function! EnterRuby()
	map <buffer> <Leader>c :w<CR>:!clear;ruby -c %
	map <buffer> <Leader>r :w<CR>:!clear;ruby %
	set tabstop=2
	set sw=2
	set expandtab
endfunction
au FileType ruby call EnterRuby()

"Pascal
function! EnterPascal()
	map <buffer> <Leader>c :w<CR>:!clear;gpc %
	map <buffer> <Leader>r :!clear;./a.out
endfunction
au FileType pascal call EnterPascal()

"Scheme
function! EnterScheme()
"	map <buffer> <Leader>c :w<CR>:!clear;~/scheme/bin/mzscheme -e "`cat %`"
	map <buffer> <Leader>c :w<CR>:!clear;~/scheme/bin/mzscheme -e "`cat %`"
	abbreviate scheme_header #reader(lib "htdp-advanced-reader.ss" "lang")((modname fib) (read-case-sensitive #t) (teachpacks ()) (htdp-setting #(#t constructor repeating-decimal #t #t none #f ())))
"	map <buffer> <Leader>c :w<CR>:!clear;~/scheme/bin/mzscheme %
	map <buffer> <Leader>r :w<CR>:!clear;~/scheme/bin/mzscheme %
endfunction
au FileType scheme call EnterScheme()

"Javascript
function! EnterJavascript()
	map <buffer> <Leader>c :w<CR>:!clear;jsl -process "%"
endfunction
au FileType javascript call EnterJavascript()

"HTML
function! EnterHTML()
	map <buffer> <Leader>c :w<CR>:!open -a Firefox %
	set tabstop=2
	set sw=2
	set expandtab
endfunction
au FileType html call EnterHTML()

"TEX
function! EnterTEX()
  let g:LatexBox_viewer = 'skim'
  let g:LatexBox_latexmk_options = '-pvc'
  setlocal formatoptions+=wa
  setlocal formatoptions-=c
	set spell
  abbr noi noindent
endfunction

au! FileType tex call EnterTEX()
au! FileType latex call EnterTEX()

"HAML
function! EnterHAML()
	set tabstop=2
	set sw=2
	set expandtab
	retab 2
  map <buffer> <Leader>c :w<CR>:!haml % > <C-R>=FileWOExt()<CR>.html
  map <buffer> <Leader>r :w<CR>:!open -a Firefox <C-R>=FileWOExt()<CR>.html
endfunction
au FileType haml call EnterHAML()

"ActionScript
function! EnterAS()
	map <buffer> <Leader>c :!rake
	"map <buffer> <Leader>c :w<CR>:!mxmlc %
	"map <buffer> <Leader>r :w<CR>:!open -a Firefox <C-R>=FileWOExt()<CR>.swf
	set tabstop=4
	set sw=4
	set expandtab
endfunction
au FileType actionscript call EnterAS()

"Markdown
function! EnterMarkdown()
	map <buffer> <Leader>c :w<CR>:!markdown % > <C-R>=FileWOExt()<CR>.html
	map <buffer> <Leader>r :!open -a Firefox <C-R>=FileWOExt()<CR>.html
endfunction
au Filetype mkd call EnterMarkdown()

"Sass
function! EnterSass()
	map <buffer> <Leader>c :w<CR>:!sass % > <C-R>=FileWOExt()<CR>.css
	map <buffer> <Leader>r :w<CR>:!sass % > <C-R>=FileWOExt()<CR>.css
endfunction
au FileType sass call EnterSass()

abbr snippest snippets
