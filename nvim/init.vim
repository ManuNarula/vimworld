au! BufWritePost $MYVIMRC source %      

cmap w!! w !sudo tee %

syntax enable                           
set ruler
set cursorline
set cursorcolumn
set hidden                             
set encoding=utf-8                     
set pumheight=10                       
set fileencoding=utf-8                  
set cmdheight=2                         
set iskeyword+=-                      	
set mouse=a                             
set t_Co=256                            
set conceallevel=0                      
set shiftwidth=2                        
set smartindent                         
set autoindent                          
set laststatus=0                        
set number
set relativenumber
set nobackup                            
set nowritebackup                       
set updatetime=300                      
set timeoutlen=500                      
set formatoptions-=cro                  
set clipboard=unnamedplus               
set noshowmode
set showtabline=2
let g:dashboard_default_executive ='telescope'


if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/NERDTree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'norcalli/nvim-colorizer.lua'
    "Plug 'mhinz/vim-startify'
    Plug 'glepnir/dashboard-nvim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'rakr/vim-two-firewatch'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'vimwiki/vimwiki'
    Plug 'junegunn/goyo.vim'
    Plug 'lingnand/pandoc-preview.vim'
    Plug 'cocopon/iceberg.vim'
    Plug 'romgrk/barbar.nvim'
    Plug 'akinsho/toggleterm.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'Badacadabra/vim-archery'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'tjdevries/colorbuddy.vim'
    Plug 'Th3Whit3Wolf/onebuddy'
    Plug 'jghauser/auto-pandoc.nvim'
    Plug 'jakewvincent/mkdnflow.nvim'
    Plug 'ellisonleao/glow.nvim'
    Plug 'numToStr/FTerm.nvim'
    Plug 'Mofiqul/vscode.nvim'
    Plug 'kyazdani42/blue-moon'
    call plug#end()

" GUI settings 
if (has("termguicolors"))
set termguicolors
"    highlight Normal guibg=none
"    highlight NonText guibg=none
    hi LineNr ctermbg=NONE guibg=NONE
endif

"set background=dark 
"colo archery 
"let g:vscode_style = "dark"
"let g:vscode_transparency = 1
"let g:vscode_italic_comment = 1
"colorscheme vscode

" Sourcing 
source $HOME/.config/nvim/shortcuts.vim

lua require('colorbuddy').colorscheme('onebuddy')
lua require ("user.colorizer")
lua require('lualine').setup()
lua require ("user.lualine-config")
"lua require ("user.lualine-config")
"lua require ("user.better-bubbles")
lua require ("user.evil_lualine")
lua require ("user.barbar")
lua require ("user.gitsigns")
lua require ("user.cmp")
lua require ("user.gitsigns")
lua require ("user.telescope")
lua require ("user.mkdnflow")
"lua require ("user.autpairs")

