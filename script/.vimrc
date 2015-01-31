set encoding=utf-8

" source other settirg
source $HOME/.vim/script/.vimrc.neobundle
source $HOME/.vim/script/.vimrc.emmet
source $HOME/.vim/script/.vimrc.lightline
""source $HOME/.vim/script/.vimrc.neocomplete
source $HOME/.vim/script/.vimrc.jedi

" display
set number
set title
set showcmd
set noundofile

" color
syntax on
colorscheme molokai

" Search
set ignorecase
set smartcase
set wrapscan
set hlsearch

" Edit
set autoindent
set showmatch
set smartindent
set cindent
set backspace=2

" Tab
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set shiftround
set nowrap
set noexpandtab

" datetime
inoremap <Leader>c <C-R>=strftime('%Y-%m-%dT%H:%M:%S+09:00')<CR>


" golang
filetype plugin indent on
autocmd BufNewFile,BufRead *.go setf go

" insertモードでhjkl移動を利用する
imap <c-h> <Left>
imap <c-j> <Down>
imap <c-k> <Up>
imap <c-l> <Right>

" カッコ等の入力補助
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>


" VimShell
let g:vimshell_prompt = "$ "
let g:vimshell_secondary_prompt = "> "
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'

" Template
autocmd BufNewFile *.html 0r $HOME/.vim/template/html.txt
autocmd BufNewFile *.php  0r $HOME/.vim/template/php.txt
autocmd BufNewFile *.cpp  0r $HOME/.vim/template/cpp.txt
autocmd BufNewFile *.py   0r $HOME/.vim/template/py.txt
autocmd BufNewFile *.go   0r $HOME/.vim/template/go.txt
autocmd BufNewFile *.c    0r $HOME/.vim/template/c.txt

