set nu
set sm
set tabstop=2
set autoindent
set expandtab
set list
set shiftwidth=2
set whichwrap=b,s,h,l,<,>,[,]
set hidden

let java_highlight_all=1
syntax enable
set cursorline
set hlsearch
noremap * :
autocmd BufWritePre * :%s/\s\+$//ge
autocmd BufWritePre * :%s/\t/  /ge
