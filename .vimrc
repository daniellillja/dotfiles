imap jk <ESC>
set autoindent
syntax enable
set tabstop=4 shiftwidth=4
set wildchar=<Tab> wildmenu wildmode=full

" Javascript
autocmd FileType javascript set tabstop=2 shiftwidth=2 expandtab foldmethod=syntax

" Text
autocmd FileType text set tabstop=2 shiftwidth=2 foldmethod=indent expandtab

" Store swap files globally
set directory^=$HOME/.vim/tmp//

" Plugins (vim-plug)
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'rking/ag.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'masukomi/vim-markdown-folding'
Plug 'blindFS/vim-taskwarrior'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
call plug#end()


nnoremap <Leader>F :Ag
nnoremap <Leader>d :ALEGoToDefinition<CR>zO
nnoremap <Leader>t :FZF<CR>
map <Leader>f :ALEFix<CR>
nnoremap <Leader>gd :ALEGoToDefinitionInSplit<CR>

" Disable auto commenting
set formatoptions-=cro

set number
