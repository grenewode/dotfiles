" Installing plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-sleuth'
Plug 'neomake/neomake'
Plug 'tpope/vim-commentary'
Plug 'Valloric/YouCompleteMe'
call plug#end()

" Configure NERD tree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Configure airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'papercolor'
set termguicolors

" Configure colorschemes
colorscheme zenburn

" Configure rust.vim
let g:rustfmt_autosave = 1

" Configure YCM
let g:ycm_rust_src_path = "/home/rmiller/.multirust/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"

" Neomake
let g:neomake_echo_current_error=1
autocmd! BufWritePost *.rs Neomake! cargo
autocmd! BufWritePost *.lalrpop Neomake
autocmd! BufRead,BufNewFile *.lalrpop set syntax=rust
autocmd! BufRead,BufNewFile *.lalrpop set filetype=lalrpop

highlight link NeomakeErrorSign Error
highlight link NeomakeWarningSign Error
let g:neomake_open_list = 2
autocmd FileType qf wincmd J

let g:neomake_lalrpop_lalrpop_maker = {
			\ 'exe': 'lalrpop',
			\ 'args': [], 
			\ 'errorformat': '%f:%l:%c: %m',
			\ }
let g:neomake_lalrpop_enabled_makers = ['lalrpop']


" Configure nvim
set relativenumber
set number
vnoremap <C-C> "*y
vnoremap <C-V> "*p

inoremap <C-v> <C-r>*
set nowrap
