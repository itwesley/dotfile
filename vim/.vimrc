"vim-powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2
set noshowmode
set t_Co=256

"python pep8 indent
execute pathogen#infect()
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=darkgrey
hi IndentGuidesEven ctermbg=darkgrey
highlight Normal guibg=Black guifg=White
filetype plugin indent on

"""python pep checker
let g:pep8_map='<leader>8'

"""python auto autocomplete
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 20

"""NERDTree window at right side
let NERDTreeWinPos="right"

"""NERDTree display when vim startup.
"autocmd VimEnter * NERDTree

"""auto generate shebang at head of files.
augroup Shebang
autocmd BufNewFile *.sh 0put =\"#!/bin/bash \<nl>\"|$
autocmd BufNewFile *.py 0put =\"#!/usr/bin/env python\<nl># -*- coding: utf-8 -*-\<nl>\"|$
autocmd BufNewFile *.rb 0put =\"#!/usr/bin/ruby\<nl>\"|$
augroup END

set encoding=utf-8
set fileencodings=utf-8,cp950
set number
hi LineNr ctermfg=darkgray
syntax on 

set shiftwidth=4
set tabstop=4 
set softtabstop=4

set ruler
set hlsearch
set cursorline
hi CursorLine  cterm=bold ctermbg=black
hi CursorLineNr cterm=bold ctermfg=white ctermbg=black
set incsearch
set smartindent
set ru
set confirm
set history=100 
"set paste
set vb

"folding settings (you can see help by pressing ':help fold')
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

"""key mapping
inoremap <C-w> <C-x><C-o>
"column to row
map<F7> i<BS><Space><Esc>0

"row to column
map<F9> 0wi<CR><Esc>

"NERDTree Toogle
map <C-n> :NERDTreeToggle<CR>

"Misc
map<F3> :set number<Esc>
map<F4> :set number!<Esc>
map<F5> :set paste<Esc>
map<F6> :set paste!<Esc>


autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

autocmd FileType py set shiftwidth=4 | set expandtab

"""autocomplete string
ab #p #!/usr/bin/env python<CR># -*- coding: utf-8 -*-
ab #r #!/usr/bin/ruby
ab #b #!/bin/bash
ab if_ if __name__ == '__main__':<CR>main()

"ansible yaml syntax
let g:ansible_options = {'ignore_blank_lines': 0}
