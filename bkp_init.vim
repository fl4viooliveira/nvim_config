" -----------------------------------------------------------------------------
" => Configuration                       
" -----------------------------------------------------------------------------
set scrolloff=8 
set number relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set encoding=utf8
set cursorline

syntax on


" -----------------------------------------------------------------------------
" => Plugins and Plugins Configuration
" -----------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

" Wakatime
Plug 'wakatime/vim-wakatime'

" Git Integration
Plug 'tpope/vim-fugitive'

" ALE (Asynchronous Lint Engine)
Plug 'w0rp/ale'

" javaScript, typeScript and react Plugins
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

" Find and fix problems on javascript code
Plug 'eslint/eslint'

" Multiple cursors plugin for vim/neovim 
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Vim Tmux Navigator
Plug 'christoomey/vim-tmux-navigator'

" React specific linting rules for ESlint
Plug 'yannickcr/eslint-plugin-react'

" Prettier settings 
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Completion framework for neovim/Vim8 
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

" TagBar is a sidebar that displays the ctags-generated tags of the current file
Plug 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

" Vim gitgutter - show wich lines have been added, modified or removed
Plug 'airblade/vim-gitgutter'
   
" Vim Polyglot - collection of language packs for Vim
Plug 'sheerun/vim-polyglot'

" This plugin adds Go language support for Vim
Plug 'fatih/vim-go'

" vim-grammarous is a powerful grammar checker for Vim. 
Plug 'rhysd/vim-grammarous'
nmap <F6> :GrammarousCheck<CR>
 
" Auto Pairs - Insert or delete brackets, parents, quotes in pairs.
Plug 'jiangmiao/auto-pairs'

" This plugin is used for displaying thin vertical lines at each indentation level
Plug 'yggdroot/indentline'

" Adds Icons to Plugins
Plug 'ryanoasis/vim-devicons'

" This adds syntax for nerdtree on most common file extensions.
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" vim css color plugin
Plug 'lilydjwg/colorizer'

" Comment stuff out.
Plug 'tpope/vim-commentary'

" The fancy start screen for Vim.
Plug 'mhinz/vim-startify'

" Emmet - support for expanding abbreviations
Plug 'mattn/emmet-vim'
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_install_global = 1
let g:user_emmet_leader_key=','

" File system explorer
Plug 'scrooloose/nerdtree'
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 0
"let g:NERDTreeIgnore = ['node_modules']
let NERDTreeStatusLine='NERDTree'
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <F7> :NERDTreeToggle<CR>

" Airline - A configurable statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" COLOR SCHEMES
Plug 'joshdick/onedark.vim' 
Plug 'dracula/vim'
Plug 'ghifarit53/tokyonight-vim'

" Copilot
Plug 'github/copilot.vim'

call plug#end()

" -----------------------------------------------------------------------------
" => Editing text
" -----------------------------------------------------------------------------
set spelllang=en,
nnoremap <silent> <F9> :set spell!<cr>
inoremap <silent> <F9> <C-O>:set spell!<cr>
" Maximum number of changes that can be undone
set undolevels=1000
     
" -----------------------------------------------------------------------------
" => Reading and writing files
" -----------------------------------------------------------------------------

" Automatically read a file when it was modified outside of Vim
set autoread

" -----------------------------------------------------------------------------
" => Command line editing
" -----------------------------------------------------------------------------

" How many command lines are remembered
set history=100

" Command-line completion shows a list of matches
set wildmenu

" -----------------------------------------------------------------------------
" => Others
" -----------------------------------------------------------------------------
" This beauty remembers where you were the last time you edited the file, and
" returns to the same position. Seriously, it's awesome.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

autocmd FileType html setlocal shiftwidth=2 tabstop=2 colorcolumn=
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType svelte setlocal shiftwidth=2 tabstop=2

" Airline - Config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
 
let g:airline_theme = 'tokyonight'

" powerline symbols
let g:airline_symbols = {}
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = ' '
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = ' '
let g:airline_symbols.branch = ' '
let g:airline_symbols.readonly = '  '
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.dirty='⚡ '

" unicode symbols
let g:airline_left_sep = '» '
let g:airline_left_sep = '▶ '
let g:airline_right_sep = ' « '
let g:airline_right_sep = ' ◀'
let g:airline_symbols.crypt = '🔒 '
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.linenr = '␊ '
let g:airline_symbols.linenr = '␤ '
let g:airline_symbols.linenr = '¶ '
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.maxlinenr = '㏑ '
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = 'ρ '
let g:airline_symbols.paste = 'Þ '
let g:airline_symbols.paste = '∥ '
let g:airline_symbols.spell = 'Ꞩ '
let g:airline_symbols.notexists = 'Ɇ '
let g:airline_symbols.whitespace = 'Ξ '


if (has("termguicolors"))
set t_Co=256
set termguicolors
endif
syntax enable

let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1

" colorscheme tokyonight

colorscheme dracula

set background=dark

set backupcopy=yes

