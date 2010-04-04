syntax on

"Set peachpuff colour scheme - mine is modified slightly
"Also, I only use this for terminal
"...it's hideous in GUI...
"colorscheme peachpuff
colorscheme blackboardConsole

set mouse=a

set backspace=2 "Make backspace work as expected on Mac OS X
set autoindent  "Auto Indent code - This simply retains indentation level
set tabstop=4   "Set space width of tabs
set sw=4   
set noexpandtab "I like my tabs to stay as tabs

set splitright  "By default, split to the right
set splitbelow
set number      "Add line numbers
set ruler       "Display Cursor Position
set title       "Display filename in titlebar

set incsearch   "Display search resultings as you type
set ignorecase

"Map Semicolon to : for faster command execution
map ; :

"] and ^] switch between tabs
nmap ] :tabNext<CR>
imap <C-]> <ESC>:tabNext<CR>i

"\ and ^\ switch between split screens
nmap \ <C-w><C-w>
imap <C-\> <ESC><C-w><C-w>i

"Copy current file to clipboard
nmap <C-X>	:!cat %\|sed 's/	/    /g'\|pbcopy<CR><CR>

"LANGUAGE SPECIFIC COMMANDS
" For all languages: 
"  ,c - Syntax Check / Compile
"  ,r - Execute

"Comment blocks
let b:comment_prefix = '"'
"map ,c :s/^/<C-R>=escape(b:comment_prefix,'\/')<CR>/<CR>
"map ,C :s/^\(\s*\)<C-R>=escape(b:comment_prefix,'\/')<CR>/\1/<CR>

function! FileWOExt()
	"Returns the filename with no extension
	return substitute(@%, '\.[^\.]*$','','')
endfunction

"VimRC
function! EnterVimRC()
	" Both ,c and ,r are used to be consistent
	map <buffer> ,c :w<CR>:so %
	map <buffer> ,r :w<CR>:so %
	let b:comment_prefix = '"'
endfunction
au FileType vim call EnterVimRC()

"Python
function! EnterPython()
	"Yes, I see that ,c and ,r do the same
	" thing. It'll stay that way until python
	" introduces a nice syntax-only flag
	map <buffer> ,c :w<CR>:!clear;python %
	map <buffer> ,r :w<CR>:!clear;python %
	let b:comment_prefix = '#'
endfunction
au FileType python call EnterPython()

"PHP
function! EnterPhp()
	map <buffer> ,c :w<CR>:!clear;php -l %
	map <buffer> ,r :w<CR>:!clear;php %
	let b:comment_prefix = '#'
endfunction
au BufNewFile,BufRead *.inc setfiletype php
au FileType php call EnterPhp()


"C++
function! EnterCpp()
	map <buffer> ,c :w<CR>:!clear;g++ -Wall %
	map <buffer> ,r :!clear;./a.out
	let b:comment_prefix = '//'
endfunction
au FileType cpp call EnterCpp()

"C
function! EnterC()
	map <buffer> ,c :w<CR>:!clear;gcc -std=c99 -Wall %
	map <buffer> ,r :!clear;./a.out
	let b:comment_prefix = '//'
endfunction
au FileType c call EnterC()

"C#
function! EnterCS()
	map <buffer> ,c :w<CR>:!clear;gmcs %
	map <buffer> ,r :!clear;mono <C-R>=FileWOExt()<CR>.exe 
	let b:comment_prefix = '//'
endfunction
au FileType cs call EnterCS()

"Java
function! EnterJava()
	map <buffer> ,c :w<CR>:!clear;javac %
	map <buffer> ,r :!clear;java <C-R>=FileWOExt()<CR>
	let b:comment_prefix = '//'
endfunction
au FileType java call EnterJava()

"Bash
function! EnterBash()
	map <buffer> ,c :w<CR>:!clear;sh %
	map <buffer> ,r :w<CR>:!clear;sh %
	let b:comment_prefix = '#'
endfunction
au FileType sh call EnterBash()

"Perl
function! EnterPerl()
	map <buffer> ,c :w<CR>:!clear;perl -wc %
	map <buffer> ,r :w<CR>:!clear;perl -w %
	let b:comment_prefix = '#'
endfunction
au FileType perl call EnterPerl()

"Ruby
function! EnterRuby()
	map <buffer> ,c :w<CR>:!clear;ruby -c %
	map <buffer> ,r :w<CR>:!clear;ruby %
	let b:comment_prefix = '#'
endfunction
au FileType ruby call EnterRuby()

"Pascal
function! EnterPascal()
	map <buffer> ,c :w<CR>:!clear;gpc %
	map <buffer> ,r :!clear;./a.out
	" GNU Pascal apparently has no one
	"  line prefix comments...
	map <buffer> ,c <Nop>
	map <buffer> ,C <Nop>
endfunction
au FileType pascal call EnterPascal()

"Scheme
function! EnterScheme()
"	map <buffer> ,c :w<CR>:!clear;~/scheme/bin/mzscheme -e "`cat %`"
	map <buffer> ,c :w<CR>:!clear;~/scheme/bin/mzscheme -e "`cat %`"
	abbreviate scheme_header #reader(lib "htdp-advanced-reader.ss" "lang")((modname fib) (read-case-sensitive #t) (teachpacks ()) (htdp-setting #(#t constructor repeating-decimal #t #t none #f ())))
"	map <buffer> ,c :w<CR>:!clear;~/scheme/bin/mzscheme %
	map <buffer> ,r :w<CR>:!clear;~/scheme/bin/mzscheme %
	let b:comment_prefix = ';'
endfunction
au FileType scheme call EnterScheme()

"Javascript
function! EnterJavascript()
	map <buffer> ,c :w<CR>:!clear;jsl -process "%"
	let b:comment_prefix = '//'
endfunction
au FileType javascript call EnterJavascript()

"HTML
function! EnterHTML()
	map <buffer> ,c :w<CR>:!open %
endfunction
au FileType html call EnterHTML()

"TEX
function! EnterTEX()
	map <buffer> ,c :w<CR>:!texi2pdf %;
	map <buffer> ,r :w<CR>:!open <C-R>=FileWOExt()<CR>.pdf
	set spell
endfunction
au FileType tex call EnterTEX()
