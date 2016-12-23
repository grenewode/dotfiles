" Installing plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'
Plug 'rust-lang/rust.vim'
call plug#end()

" Configure NERD tree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Configure airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'papercolor'

" Configure colorschemes
colorscheme zenburn

" Configure rust
let g:rustfmt_autosave = 1
