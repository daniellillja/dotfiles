syntax enable

" Global vim options
set autoindent
set directory^=$HOME/.vim/tmp// " store swap files globally
set formatoptions-=cro " disable auto commenting
set number
set tabstop=4 shiftwidth=4
set wildchar=<Tab> wildmenu wildmode=full

" Plugins (vim-plug)
call plug#begin()
Plug 'blindFS/vim-taskwarrior'
Plug 'dense-analysis/ale'
Plug 'haya14busa/incsearch.vim'
Plug 'jpalardy/vim-slime'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'masukomi/vim-markdown-folding'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rking/ag.vim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'sheerun/vim-polyglot'
Plug 'Shougo/deoplete.nvim' " must have python3 and run `pip3 install --user pynvim` before
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
call plug#end()

" Mappings
imap jk <ESC>
map <Leader>f :ALEFix<CR>
nnoremap <Leader>d :ALEGoToDefinition<CR>zO
nnoremap <Leader>F :Ag
nnoremap <Leader>ltd :Ag --js --java todo-dlillja<CR>
nnoremap <Leader>t :Buffers<CR>
nnoremap <Leader>T :FZF<CR>
nnoremap <Leader>u :ALEFindReferences<CR>
noremap <Leader>p "*p
noremap <Leader>P "+p
noremap <Leader>y "*y
noremap <Leader>Y "+y

let g:deoplete#enable_at_startup = 1
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}
let g:slime_target = "tmux"
