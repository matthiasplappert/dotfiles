syntax enable
set background=dark
colorscheme solarized
set number
set smartindent
set tabstop=4
set shiftwidth=4
set visualbell
set noerrorbells
set laststatus=2
set cursorline
set autochdir
set shell=/bin/bash
set wildmenu
set t_Co=256

scriptencoding utf-8
set encoding=utf-8

" never fold
set nofoldenable
au BufRead * normal zR

" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch

" undo history
set hidden " persist undo history
set undofile
set undodir=$HOME/.vim/undo

set backupdir=$HOME/.vim/backups
set directory=$HOME/.vim/swaps

let mapleader = ","
set clipboard=unnamed
set mouse=a

" Remember last cursor position
function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END

" filetypes
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,Guardfile,config.ru,*.rake} set ft=ruby
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown
au BufRead,BufNewFile *.{go} set ft=go
au BufRead,BufNewFile Dockerfile set ft=Dockerfile

filetype plugin on
