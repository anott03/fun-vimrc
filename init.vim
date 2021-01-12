:call plug#begin('~/.local/share/nvim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'anott03/termight.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'anott03/nvim-lspinstall'
Plug 'nvim-lua/completion-nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
:call plug#end()

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab smartindent

set nu rnu
set exrc  
set noerrorbells
set splitbelow splitright

set noswapfile
set nobackup
set undodir
set undofile
set undodir=$HOME/.local/share/nvim/undodir

colorscheme onedark

let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'
let g:airline#extensions#tabline#enabled = 1

lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.bashls.setup{ on_attach=require'completion'.on_attach }

let mapleader = ' '
nnoremap <leader><leader> <CMD>Telescope git_files<CR>
nnoremap <leader>gs <CMD>Git<CR>
nnoremap <leader>h <CMD>wincmd h<CR>
nnoremap <leader>j <CMD>wincmd j<CR>
nnoremap <leader>k <CMD>wincmd k<CR>
nnoremap <leader>l <CMD>wincmd l<CR>
