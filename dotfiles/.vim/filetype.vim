" markdown filetype file

if exists("did\_load\_filetypes")
	finish
endif

au! BufRead,BufNewFile *.mkd,*.markdown setf mkd
au! BufRead,BufNewFile *.json setf json
