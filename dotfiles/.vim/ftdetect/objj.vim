" markdown filetype file
if exists("did\_load\_filetypes")
 finish
 endif
 augroup objj
  au! BufRead,BufNewFile *.j   setfiletype objj
  augroup END 

