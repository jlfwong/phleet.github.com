syntax on

set backspace=2 "Make backspace work as expected on Mac OS X
set autoindent  "Auto Indent code - This simply retains indentation level
set tabstop=2   "Set space width of tabs
set sw=2        
set noexpandtab "I like my tabs to stay as tabs

set splitright  "By default, split to the right
set number      "Add line numbers
set ruler       "Display Cursor Position
set title				"Display filename in titlebar

set incsearch   "Display search resultings as you type

"Map Semicolon to : for faster command execution
map ; :

"} and ^} switch between tabs
nmap } :tabNext<CR>
imap <C-}> <ESC>:tabNext<CR>i

"\ and ^\ switch between split screens
nmap \ <C-w><C-w>
imap <C-\> <ESC><C-w><C-w>i

"Copy current file to clipboard
nmap <C-X>	:!cat %\|sed 's/	/    /g'\|pbcopy<CR><CR>

"LANGUAGE SPECIFIC COMMANDS
" For all languages: 
"  <F2> - Syntax Check / Compile
"  <F3> - Execute

"Comment blocks
let b:comment_prefix = '"'
map ,c :s/^/<C-R>=escape(b:comment_prefix,'\/')<CR>/<CR>
map ,C :s/^\(\s*\)<C-R>=escape(b:comment_prefix,'\/')<CR>/\1/<CR>

function! FileWOExt()
	"Returns the filename with no extension
	return substitute(@%, '\.[^\.]*$','','')
endfunction

"VimRC
function! EnterVimRC()
	" Both <F2> and <F3> are used to be consistent
	map <buffer> <F2> :w<CR>:so %
	map <buffer> <F3> :w<CR>:so %
	let b:comment_prefix = '"'
endfunction
au FileType vim call EnterVimRC()

"Python
function! EnterPython()
	"Yes, I see that <F2> and <F3> do the same
	" thing. It'll stay that way until python
	" introduces a nice syntax-only flag
	map <buffer> <F2> :w<CR>:!clear;python %
	map <buffer> <F3> :w<CR>:!clear;python %
	let b:comment_prefix = '#'
endfunction
au FileType python call EnterPython()

"PHP
function! EnterPhp()
	map <buffer> <F2> :w<CR>:!clear;php -l %
	map <buffer> <F3> :w<CR>:!clear;php %
	let b:comment_prefix = '#'
endfunction
au BufNewFile,BufRead *.inc setfiletype php
au FileType php call EnterPhp()


"C++
function! EnterCpp()
	map <buffer> <F2> :w<CR>:!clear;g++ -Wall %
	map <buffer> <F3> :!clear;./a.out
	let b:comment_prefix = '//'
endfunction
au FileType cpp call EnterCpp()

"C
function! EnterC()
	map <buffer> <F2> :w<CR>:!clear;gcc -std=c99 -Wall %
	map <buffer> <F3> :!clear;./a.out
	let b:comment_prefix = '//'
endfunction
au FileType c call EnterC()

"C#
function! EnterCS()
	map <buffer> <F2> :w<CR>:!clear;gmcs %
	map <buffer> <F3> :!clear;mono <C-R>=FileWOExt()<CR>.exe 
	let b:comment_prefix = '//'
endfunction
au FileType cs call EnterCS()

"Java
function! EnterJava()
	map <buffer> <F2> :w<CR>:!clear;javac %
	map <buffer> <F3> :!clear;java <C-R>=FileWOExt()<CR>
	let b:comment_prefix = '//'
endfunction
au FileType java call EnterJava()

"Bash
function! EnterBash()
	map <buffer> <F2> :w<CR>:!clear;sh %
	map <buffer> <F3> :w<CR>:!clear;sh %
	let b:comment_prefix = '#'
endfunction
au FileType sh call EnterBash()

"Perl
function! EnterPerl()
	map <buffer> <F2> :w<CR>:!clear;perl -wc %
	map <buffer> <F3> :w<CR>:!clear;perl -w %
	let b:comment_prefix = '#'
endfunction
au FileType perl call EnterPerl()

"Ruby
function! EnterRuby()
	map <buffer> <F2> :w<CR>:!clear;ruby -c %
	map <buffer> <F3> :w<CR>:!clear;ruby %
	let b:comment_prefix = '#'
endfunction
au FileType ruby call EnterRuby()

"Pascal
function! EnterPascal()
	map <buffer> <F2> :w<CR>:!clear;gpc %
	map <buffer> <F3> :!clear;./a.out
	" GNU Pascal apparently has no one
	"  line prefix comments...
	map <buffer> ,c <Nop>
	map <buffer> ,C <Nop>
endfunction
au FileType pascal call EnterPascal()

"Scheme
function! EnterScheme()
	map <buffer> <F2> :w<CR>:!mit-scheme < %
	map <buffer> <F3> :w<CR>:!mit-scheme < %
	let b:comment_prefix = ';'
endfunction
au FileType scheme call EnterScheme()

"Javascript
function! EnterJavascript()
	map <buffer> <F2> :w<CR>:!clear;jsl -process %
	let b:comment_prefix = '//'
endfunction
au FileType javascript call EnterJavascript()
