-------------------- CONFIGURATION --------------------
vim.wo.scrolloff = 8 
vim.wo.relativenumber = true
vim.wo.number = true
vim.bo.expandtab = true 
vim.bo.shiftwidth = 2
vim.go.smartindent = true
vim.g.encoding = utf8
vim.wo.cursorline = true
vim.wo.cursorcolumn = true
vim.g.termguicolors = true

-- Dracula theme
vim.g.colors_name = 'Dracula'
vim.g.dracula_show_end_of_buffer = true  -- default false, Turn on or off EndOfBuffer symbol
vim.g.dracula_transparent_bg = true -- default false, enables transparent background
-- vim.cmd[[colorscheme dracula]]
vim.cmd[[set background=dark]]

-- if termguicolors is installed, use it
if vim.fn.executable('termguicolors') == 1 then
  vim.cmd[[set t_Co=256]]
  vim.cmd[[set termguicolors]]
end

-------------------- PLUGINS --------------------
return require('packer').startup(function()
-- Packer
use 'wbthomason/packer.nvim'

-- Wakatime
use 'wakatime/vim-wakatime'

-- Git Integration
use 'tpope/vim-fugitive'

-- ALE (Asynchronous Lint Engine)
use 'w0rp/ale'

use 'leafgarland/typescript-vim'
use 'maxmellon/vim-jsx-pretty'

-- Find and fix problems on javascript code
use 'eslint/eslint'

-- Vim Tmux Navigator
use 'christoomey/vim-tmux-navigator'

-- React specific linting rules for ESlint
use 'yannickcr/eslint-plugin-react'

-- Prettier settings 
use 'prettier/vim-prettier'

-- Completion framework for neovim/Vim8 
use 'Shougo/deoplete.nvim'

-- TagBar is a sidebar that displays the ctags-generated tags of the current file
use 'majutsushi/tagbar'

-- Vim gitgutter - show wich lines have been added, modified or removed
use 'airblade/vim-gitgutter'
   
-- Vim Polyglot - collection of language packs for Vim
use 'sheerun/vim-polyglot'

-- This plugin adds Go language support for Vim
use 'fatih/vim-go'

-- vim-grammarous is a powerful grammar checker for Vim. 
use 'rhysd/vim-grammarous'
 
-- Auto Pairs - Insert or delete brackets, parents, quotes in pairs.
use 'jiangmiao/auto-pairs'

-- This plugin is used for displaying thin vertical lines at each indentation level
use 'yggdroot/indentline'

-- This adds syntax for nerdtree on most common file extensions.
use 'tiagofumo/vim-nerdtree-syntax-highlight'

-- vim css color plugin
use 'lilydjwg/colorizer'

-- Comment stuff out.
use 'tpope/vim-commentary'

-- The fancy start screen for Vim.
use 'mhinz/vim-startify'

-- Emmet - support for expanding abbreviations
use 'mattn/emmet-vim'

-- File system explorer
use 'scrooloose/nerdtree'

-- Airline - A configurable statusline
use 'vim-airline/vim-airline'
use 'vim-airline/vim-airline-themes'

-- COLOR SCHEMES
use 'joshdick/onedark.vim' 
use 'dracula/vim'
use 'ghifarit53/tokyonight-vim'

-- GitHub Copilot
use 'github/copilot.vim'

-- Nvim LSP client for Vim
use 'neovim/nvim-lspconfig'

 end)


-------------------- KEY MAP --------------------



-- let g:deoplete#enable_at_startup = 1
-- nmap <F8> :TagbarToggle<CR>

--  map ('n', '<F8>', ':TagbarToggle<CR>') 

-- let g:user_emmet_mode='a'    --enable all function in all mode.
-- let g:user_emmet_install_global = 1
-- let g:user_emmet_leader_key=','

-- nmap <F6> :GrammarousCheck<CR>

-- let g:NERDTreeShowHidden = 1
-- let g:NERDTreeMinimalUI = 0
--let g:NERDTreeIgnore = ['node_modules']
-- let NERDTreeStatusLine='NERDTree'
-- Automaticaly close nvim if NERDTree is only thing left open
-- autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
-- Toggle
-- nnoremap <silent> <F7> :NERDTreeToggle<CR>

-------------------- LSP -----------------------------------

 
