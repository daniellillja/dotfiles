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
Plug '/usr/local/opt/fzf' " must have fzf installed
Plug 'Shougo/deoplete.nvim' " must have python3 and run `pip3 install --user pynvim` before
Plug 'blindFS/vim-taskwarrior'
Plug 'dense-analysis/ale'
Plug 'haya14busa/incsearch.vim'
Plug 'junegunn/fzf.vim'
Plug 'masukomi/vim-markdown-folding'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rking/ag.vim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'jpalardy/vim-slime'
" svermeulen/vim-easyclip
" tpope/vim-commentary
call plug#end()

let g:deoplete#enable_at_startup = 1

" Mappings
imap jk <ESC>
map <Leader>f :ALEFix<CR>
nnoremap <Leader>F :Ag
nnoremap <Leader>T :FZF<CR>
nnoremap <Leader>d :ALEGoToDefinition<CR>zO
nnoremap <Leader>ltd :Ag --js --java todo-dlillja<CR>
nnoremap <Leader>t :Buffers<CR>
nnoremap <Leader>u :ALEFindReferences<CR>

" Pasting
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" vim-slime
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}
