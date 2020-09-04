set nocompatible              " be iMproved, required
filetype off                  " required

" TODO: Load plugins here (pathogen or vundle)
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

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'code_complete'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}


" NOTE: my custom plugins are installed here

" YouCompleteMe by Valloric - symantic autocompletion in vim
Plugin 'Valloric/YouCompleteMe'

" Options: YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
" Python autocomplete options
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
            \  'g:ycm_python_interpreter_path',
            \  'g:ycm_python_sys_path'
            \]
"let g:ycm_semantic_triggers = {
"	\   'python': [ 're!\w{2}' ]
"	\ }
" To avoid conflict snippets
let g:ycm_key_list_select_completion = ['<TAB>', '∆', '<Down>']
" Enable S-TAB
inoremap [Z <s-tab>
let g:ycm_key_list_previous_completion = ['<S-TAB>', '˚', '<Up>']
let g:ycm_key_invoke_completion = '<C-Space>'
" Global config location
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
" Diagnostics ui settings
let g:ycm_show_diagnostics_ui = 1
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_max_diagnostics_to_display = 0
let g:ycm_warning_symbol = '++'
let g:ycm_error_symbol = '>>'
" Django settings
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" Shortcuts for commands
nnoremap <leader>gg :YcmCompleter GoTo<CR>
nnoremap <leader>gd :YcmCompleter GetDoc<CR>
nnoremap <leader>gc :tab split \| YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf <C-W>15s:YcmCompleter GoToDefinition<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>p :YcmCompleter GetParent<CR>
" Toggle hover info
nmap <leader>h <plug>(YCMHover)

" UltiSnips - The ultimate snippet solution for Vim.
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"
let g:UltiSnipsListSnippets="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Eclim
"Plugin 'file:///root/.vim/bundle/eclim'
" Eclim setup
"let g:EclimCompletionMethod = 'omnifunc'

" Unimpaired by tpope - Extended mappings.
" :h unimpaired for documentation.
Plugin 'tpope/vim-unimpaired'

" NERDTree by scrooloose - a tree explorer plugin for vim
Plugin 'scrooloose/nerdtree'

" NERDTree syntax hightlight
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

" Options: NERDTree
" Shortcut to open & close NERDTree
map <C-n> :NERDTreeToggle<CR>
" Close vim if NERDTree is the only window open
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Automatically opens up when vim starts with no files specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Automatically open up when vim opens a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Auto Pairs - insert or delete brackets, parens, quotes in pair
"Plugin 'jiangmiao/auto-pairs'
" vim-closer - a more conservative version of auto-pairs
" that only works when you press Enter.
"Plugin 'rstacruz/vim-closer'

" delimitMate by Raimondi
Plugin 'Raimondi/delimitMate'
" Options: delimitMate
" Number of CRs to put, ex) if 2, {<CR> will place cursor between the lines
let g:delimitMate_expand_cr = 2
" Removes autopairing of '<' if filetype is..
au FileType c,cpp,rust let b:delimitMate_matchpairs = '(:),{:},[:]'

" vim-endwise - plugin that helps to end certain structures automatically.
Plugin 'tpope/vim-endwise'

" rainbow_parentheses - color matching parentheses differently
Plugin 'junegunn/rainbow_parentheses.vim'
" Options: rainbow_parentheses
" Activate
au VimEnter * RainbowParentheses!!
" Deactivate
":RainbowParentheses!
" Toggle
":RainbowParentheses!!
" See the enabled colors
":RainbowParenthesesColors
" Activation based on file type
"augroup rainbow_lisp
"autocmd!
"autocmd FileType lisp,clojure,scheme RainbowParentheses
"augroup END
augroup rainbow_off
    autocmd!
    autocmd FileType cmake RainbowParentheses!!
augroup END

" A light and configurable statusline/tabline plugin for Vim
"Plugin 'itchyny/lightline.vim'
"let g:lightline = { 'colorscheme': 'seoul256' }

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1

"Plugin 'luochen1990/rainbow'
"" Options: rainbow parentheses
"let g:rainbow_active = 1
"augroup rainbow_off
    "autocmd!
    "autocmd FileType cmake RainbowToggleOff
"augroup END

" hybrid-material vim colorscheme
Plugin 'kristijanhusak/vim-hybrid-material'
" Options: hybrid-material
"let g:enable_bold_font = 1
"let g:enable_italic_font = 1

" Happy Hacking vim colorscheme
Plugin 'YorickPeterse/happy_hacking.vim'

" Gotham colorscheme
" colorscheme gotham [or] colorscheme gotham256
Plugin 'whatyouhide/vim-gotham'

" Optimized solarized colorscheme
Plugin 'lifepillar/vim-solarized8'

" Vim-Two-Firewatch colorscheme
Plugin 'rakr/vim-two-firewatch'
"let g:two_firewatch_italics=1

" Low-contrast Vim color scheme based on Seoul Colors
" This is my go-to theme
Plugin 'junegunn/seoul256.vim'
" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 234
" seoul256 (light):
"   Range:   252 (darkest) ~ 256 (lightest)
"   Default: 253
let g:seoul256_light_background = 253
let g:seoul256_srgb = 1

" Plugin 'CRefVim'
Plugin 'exvim/ex-cref'

" NERD Commenter by scrooloose
Plugin 'scrooloose/nerdcommenter'

" Doxygen
Plugin 'vim-scripts/DoxygenToolkit.vim'
let g:load_doxygen_syntax=1

" PEP8 Style indenting for python files
Plugin 'Vimjas/vim-python-pep8-indent'

" Django file handling
Plugin 'tweekmonster/django-plus.vim'

" Advanced syntax highlighting for GNU As
"Plugin 'Shirk/vim-gas'

" Highlight variables under cursor
"Plugin 'dominikduda/vim_current_word'

" Rust vim config
Plugin 'rust-lang/rust.vim'
let g:rustfmt_autosave = 1

Plugin 'flrnd/plastic.vim'

Plugin 'morhetz/gruvbox'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic = '1'

" NOTE: My custom plugins end here


" All of your Plugins must be added before the following line
call vundle#end()            " required

" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set autoindent
set cindent
set smartindent
"set textwidth=80
set wrap

" Show file stats
set ruler

set tabstop=4
set shiftwidth=4
set softtabstop=4
set number
set relativenumber
set cursorline
set fileencoding=utf-8
set encoding=utf-8
set background=dark
set expandtab
set title
set updatetime=1000

if has("syntax")
    syntax on           " Default to no syntax highlightning
endif

map <F1> V][zf
noremap <F2>  :call HexMe()<CR>
nnoremap <F12> :YcmShowDetailedDiagnostic<CR>
"nnoremap <F12> :YcmCompleter FixIt<CR>:ccl<CR>

let $in_hex=0
function HexMe()
    set binary
    set noeol
    if $in_hex>0
        :%!xxd -r
        let $in_hex=0
    else
        :%!xxd
        let $in_hex=1
    endif
endfunction

" Cursor motion
set scrolloff=3
" enable mouse scrolling in normal mode
"set mouse=n

set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Column line at line no. 80
set colorcolumn=80

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Open tab
nnoremap tn :tabe<Space>

" NASM/MASM Syntax highlighting for .asm files
autocmd BufNewFile,BufRead *.asm set syntax=masm

" Allow hidden buffers
set hidden

" Disable automatic newline at eof
set nofixendofline

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
"nnoremap / /\v
"vnoremap / /\v

set hlsearch
set incsearch
set ignorecase
set smartcase

" Doxygen shortcuts
map <leader>Do :Dox<cr>

" Clear search: \<space>
map <leader><space> :let @/=''<cr>

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts
" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬

" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme settings (terminal)
set termguicolors
set t_ut=
set t_Co=256
set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1


" Split pane switching
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

" F9 - execute python script
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

" Set internal shell to bash
set shell=/bin/bash

" Colorscheme
colorscheme gruvbox
" Remove background hightlight of colorschemes
"hi Normal guibg=NONE ctermbg=NONE
"hi YcmWarningSection cterm=underline