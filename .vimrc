syntax on
set encoding=utf-8
set spell spelllang=en_us

"set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'preservim/nerdtree'
Plugin 'valloric/YouCompleteMe'
Plugin 'preservim/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
" color themes
Plugin 'joshdick/onedark.vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'mhartington/oceanic-next'
Plugin 'ayu-theme/ayu-vim'
Plugin 'dikiaap/minimalist'
Plugin 'haishanh/night-owl.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd vimenter * NERDTree

let mapleader=","
nmap <leader>tr : NERDTreeToggle<cr>
nmap <leader>syn : SyntasticToggleMode<cr>
set number
set hlsearch
set list
set listchars=tab:>-
set wildmenu
set nospell
"set termguicolors

noremap <leader>y "+y
noremap <leader>p "+p

"colorscheme night-owl
"colorscheme minimalist
"colorscheme ayu
colorscheme onedark
"colorscheme codedark
"colorscheme OceanicNext

"set t_Co=256
"let ayucolor="dark"

"let g:airline_theme = 'codedark'
"let g:airline_theme = 'oceanicnext'
let g:airline_theme = 'onedark'
"let g:airline_theme = 'minimalist'
"let g:airline_theme = 'ayu'

"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"if (has("termguicolors"))
" set termguicolors
"endif
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1

