filetype plugin on
let g:pydiction_location = '~/.vim/after/ftplugin/complete-dict'
let g:pydiction_menu_height = 20

augroup Shebang
autocmd BufNewFile *.sh 0put =\"#!/bin/bash \<nl>\"|$
autocmd BufNewFile *.py 0put =\"#!/usr/bin/env python\<nl># -*- coding: utf-8 -*-\<nl>\"|$
autocmd BufNewFile *.rb 0put =\"#!/usr/bin/ruby\<nl>\"|$
augroup END

set encoding=utf-8
set fileencodings=utf-8,cp950
set number
hi LineNr ctermfg=gray
syntax on 

set shiftwidth=2
set tabstop=4 
set softtabstop=4

set ruler
set hlsearch
set incsearch
set smartindent
set ru
set confirm
set history=100 

set vb

autocmd FileType py set shiftwidth=4 | set expandtab
let g:pydiction_location = '~/.vim/after/ftplugin/complete-dict'

ab #p #!/usr/bin/env python<CR># -*- coding: utf-8 -*-
ab #r #!/usr/bin/ruby
ab #b #!/bin/bash
ab if_ if __name__ == '__main__':<CR>   main()
