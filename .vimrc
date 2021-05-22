"===========================================
"
"  ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"  ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"  ██║   ██║██║██╔████╔██║██████╔╝██║
"  ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"   ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"    ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"===========================================

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.

set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugin Settings {{{
" Vim-Plug Manager
call plug#begin('~/.vim/plugged')

" Active Plugins
Plug 'jeffkreeftmeijer/vim-numbertoggle'      " Automatically toggles number settings
Plug 'vim-airline/vim-airline'                " lean & mean status/tabline for vim that's light as air
Plug 'godlygeek/tabular'                      " :Tab /{delimiter}
Plug 'junegunn/vim-easy-align'                " ga{motion}{delimiter}, use <C-x> to use any delimiter

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'ctrlpvim/ctrlp.vim'                     " use :CtrlP instead since YankRing uses <C-p>, check for different solution
Plug 'fisadev/vim-ctrlp-cmdpalette'           " use :CtrlPCmdPalette

Plug 'preservim/nerdtree'                     " tree explorer plugin for vim
Plug 'tpope/vim-vinegar'                      " - , enhancing netrw
Plug 'tpope/vim-commentary'                   " gc{motion}
Plug 'tpope/vim-surround'                     " cs{old identifier}{new identifier}
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-obsession'
" Plug 'tpope/vim-sensible'
" Plug 'tpope/vim-scriptease'

Plug 'glts/vim-radical'                       " Convert decimal, hex, octal, binary number representations
Plug 'glts/vim-magnum'                        " Pure Vim script big integer library

Plug 'haya14busa/is.vim'                      " incremental search improved
Plug 'osyo-manga/vim-anzu'                    " display search position like (2/10) for n/N commands
Plug 'haya14busa/vim-asterisk'                " asterisk.vim provides improved * motions
Plug 'markonm/traces.vim'                     " Range, pattern and substitute preview for Vim

Plug 'easymotion/vim-easymotion'              " [y|d|c]<leader><leader>{motion}{identifier}
" Plug 'justinmk/vim-sneak'                     " Jump to any location specified by two characters, remaps s,S
" Plug 'rhysd/accelerated-jk'                   " accelerate up-down moving using j/k
Plug 'rhysd/clever-f.vim'                     " use f/F after f{char} instead of ;/, and t/T after t{char}
Plug 'terryma/vim-multiple-cursors'           " <C-n> to select multiple cursors
Plug 'tommcdo/vim-exchange'                   " cx{motion} Easy text exchange operator for Vim
" Plug 'matze/vim-move'                         " Block move Ctrl+h/j/k/l, change redraw mapping

Plug 'mhinz/vim-startify'                     " fancy start screen for vim
Plug 'flazz/vim-colorschemes'                 " :colorscheme <scheme>
Plug 'Yggdroot/indentLine'                    " creates dotted lines to show code indentation
Plug 'luochen1990/rainbow'                    " Use different colors for nested parantheses
Plug 'thiagoalessio/rainbow_levels.vim'       " text color based on indentation, default off, :RainbowToggle
Plug 'junegunn/goyo.vim'                      " :Goyo, Distraction-free writing in Vim
Plug 'junegunn/limelight.vim'                 " :Limelight, Hyperfocus-writing in Vim

Plug 'kana/vim-textobj-user'                  " use user defined text objects
Plug 'wellle/targets.vim'                     " Vim plugin that provides additional text objects
Plug 'andymass/vim-matchup'                   " even better % navigate and highlight matching words, modern matchit and matchparen replacement
Plug 'adriaanzon/vim-textobj-matchit'         " use am/im textobjects for matchit pairs
Plug 'michaeljsmith/vim-indent-object'        " defines a new text object representing lines of code at the same indent level
Plug 'terryma/vim-expand-region'              " Press + to expand the visual selection and _ to shrink it

Plug 'raimondi/delimitmate'                   " automatically create bracket pairs in insert mode
Plug 'vim-scripts/VisIncr'                    " :I <increment>
Plug 'troydm/zoomwintab.vim'                  " use <C-w><C-o> to zoom in/out current buffer
Plug 'simeji/winresizer'                      " <C-e> + h/j/k/l to resize window
Plug 'mileszs/ack.vim'                        " sudo apt-get install ack-grep; use Ack! {pattern} {directory}; check ag.vim also
Plug 'francoiscabrol/ranger.vim'              " <leader>f opens ranger for file navigation
" Plug 'lifepillar/vim-mucomplete'              " autocomplete plugin
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'idbrii/textobj-word-column.vim'
Plug 'tyru/open-browser.vim'                  " Open URL with your favorite browser from your most favorite editor
Plug 'machakann/vim-highlightedyank'          " Make the yanked region apparent!
Plug 'arecarn/vim-crunch'                     " Calculations inside Vim :Crunch, g={motion}

Plug 'mbbill/undotree'                        " The undo history visualizer for Vim
Plug 'mhinz/vim-grepper'                      " Helps you win at grep
" Plug 'vimwiki/vimwiki'

" Plug 'w0rp/ale'                               " Asynchronous line engine
" Plug 'SirVer/ultisnips'                       " setup properly then use
" Plug 'honza/vim-snippets'                     " setup properly then use

" Language based plugins
Plug 'vim-syntastic/syntastic'                " Linter :SyntasticCheck, :SyntasticInfo
Plug 'plasticboy/vim-markdown'                " Syntax highlighting, matching rules and mappings for Markdown
Plug 'vhda/verilog_systemverilog.vim'         " Verilog/SystemVerilog Syntax and Omni-completion
Plug 'antoinemadec/vim-verilog-instance'      " create instantiation of ports from port declaration, gb{motion}
Plug 'mboughaba/i3config.vim'                 " Syntax highlighting for i3config

" Enable only when needed
" Plug 'dhruvasagar/vim-table-mode'             " VIM Table Mode for instant table creation

" Initialize plugin system
call plug#end()
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugin Options {{{

runtime macros/matchit.vim

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

let g:clever_f_smart_case = 1 " clever-f uses smart case

" let g:UltiSnipsExpandTrigger           = '<tab>'
" let g:UltiSnipsJumpForwardTrigger      = '<tab>'
" let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
" let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

let g:ctrlp_show_hidden = 1

let g:rainbow_levels = [
    \{'ctermfg': 2, 'guifg': '#a6e22e'},
    \{'ctermfg': 6, 'guifg': '#66d9ef'},
    \{'ctermfg': 4, 'guifg': '#ae81ff'},
    \{'ctermfg': 5, 'guifg': '#f92672'},
    \{'ctermfg': 1, 'guifg': '#fd971f'},
    \{'ctermfg': 3, 'guifg': '#f4bf75'},
    \{'ctermfg': 7, 'guifg': '#f8f8f2'},
    \{'ctermfg': 0, 'guifg': '#75715e'}]

" nmap j <Plug>(accelerated_jk_gj)
" nmap k <Plug>(accelerated_jk_gk)

let g:nrrw_rgn_vert = 1

" Vim markdown plugin settings
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_no_default_key_mappings = 1

" Mucomplete plugin settings
" set completeopt+=menuone
" set completeopt+=noselect
" set completeopt+=noinsert
" set shortmess+=c   " Shut off completion messages
" set belloff+=ctrlg " If Vim beeps during completion
" let g:mucomplete#enable_auto_at_startup = 1
" let g:mucomplete#chains = {}
" let g:mucomplete#chains.default  = ['path', 'omni', 'keyn', 'dict', 'uspl', 'c-n', 'c-p', 'cmd', 'defs', 'file', 'incl', 'keyp', 'line', 'spel', 'tags', 'thes', 'user']


let g:move_key_modifier = 'C'

let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

map n <Plug>(is-nohl)<Plug>(anzu-n-with-echo)
map N <Plug>(is-nohl)<Plug>(anzu-N-with-echo)
map *  <Plug>(asterisk-z*)<Plug>(is-nohl-1)
map g* <Plug>(asterisk-gz*)<Plug>(is-nohl-1)
map #  <Plug>(asterisk-z#)<Plug>(is-nohl-1)
map g# <Plug>(asterisk-gz#)<Plug>(is-nohl-1)
let g:asterisk#keeppos = 1

let g:airline_powerline_fonts = 1

let g:anzu_search_limit = 10000

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Keyboard Mappings {{{

" Mapping the SPACE key as Leader key (Backslash is still the default leader)
map <space> <leader>
map <space><space> <leader><leader>


" Do not go to insert mode when creating a new line
nnoremap o o<esc>
nnoremap O O<esc>

"Mapping to open explorer
nnoremap <leader>d :Vexplore!<cr>
nnoremap <leader>o :FZF<cr>
nnoremap <leader>p :CtrlP<cr>
nnoremap <leader>c :CtrlPCmdPalette<cr>

" `gf` command open file under cursor in a new vertical split
nnoremap gf :vertical wincmd f<CR>

"Mappings to open dotfiles
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>eb :vsplit ~/.bash_aliases<cr>
nnoremap <leader>ez :vsplit ~/.zshrc<cr>
nnoremap <leader>e3 :vsplit ~/.config/i3/config<cr>
nnoremap <leader>eg :vsplit ~/.gitconfig<cr>

"Mapping to source ~/.vimrc
nnoremap <leader>sv :source $MYVIMRC<cr> :noh<cr>

" Saving and Quitting vim files
nnoremap <leader>q :q<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>x :x<cr>

" nnoremap <leader>f <c-w>v:Startify<cr>

" For verilog code indentation
map <leader>, :Tabularize /,/l0r1<cr>
map <leader>; :Tabularize /;/l0r1<cr>
map <leader>= :Tabularize / = /l0r0<cr>
map <leader>< :Tabularize /<=/l1r1<cr>
map <leader>( :Tabularize /(/l1r0<cr>
map <leader>) :Tabularize /)/l0r0<cr>

" To go to start/end of current line
nnoremap H ^
nnoremap L $

" To repeat last macro faster
nnoremap Q @@

"Right align and Left align a visual block
xnoremap <silent> <leader>ar :s/\v%V(\s*)(\S*)(\s*)/\1\3\2/<cr> :noh<cr>
xnoremap <silent> <leader>al :s/\v%V(\s*)(\S*)(\s*)/\2\1\3/<cr> :noh<cr>

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ColorScheme Settings{{{
augroup MyColors
    autocmd!
    autocmd ColorScheme * hi LineNr ctermbg=NONE guibg=NONE
augroup END
"}}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Basic Settings for Vim {{{

" Always show status line
set laststatus=2

" Hide the default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode

" Enable the use of mouse
set mouse+=a

" Remove the introduction message in Vim
set shortmess=I

" Enable syntax highlighting.
syntax on

" Automatically indent when adding a curly bracket, etc.
set smartindent

set tabstop=8     " Number of spaces inserted when <TAB> is pressed
set softtabstop=4
set shiftwidth=4  " Number of spaces used in Auto indentation
set expandtab     " <TAB>'s are converted to spaces

" Show line number and cursor position
set ruler

" Display normal mode commands as you type
set showcmd

" Show file options above the command line
set wildmenu
set wildignorecase

" Highlight the current line and column
set cursorline
"set cursorcolumn

" Display vertical line at column 80
" set colorcolumn=80

" Don't wrap lines by default
set nowrap

" Break lines so that words are not broken halfway, when using set wrap
set linebreak

" Open vertical split on the right side of the current window
set splitbelow
set splitright

" Display network directory as tree type by default
let g:netrw_liststyle=3

" Open help topics on the right side vertical split
autocmd FileType help wincmd L

" Setting backspace to work as it should
set backspace=indent,eol,start

" Manging line numbers
set number relativenumber

" Set color scheme that I like.
if has("gui_running")
  colorscheme molokai_dark
else
  colorscheme molokai_dark
endif

" Search Settings
" Search as you type (incremental search)
set incsearch

" Highlight your Searches.
set hlsearch

" Case settings for searching.
set ignorecase
set smartcase

" Automatically cd into the directory in which the file is present
set autochdir

" To keep cursor at middle of the screen, remove if want to use <C-e>/<C-y> to scroll up/down
" set scrolloff=999

" Stop vim from rerendering the screen after every step of the macro, only rerender at the end
set lazyredraw

" No backup's and swapfile's
set nobackup
set noswapfile

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Managing trailing whitespaces {{{

highlight ExtraWhitespace ctermbg=red guibg=red
augroup WhitespaceMatch
    " Remove ALL autocommands for the WhitespaceMatch group.
    autocmd!
    autocmd BufWinEnter * let w:whitespace_match_number =
                \ matchadd('ExtraWhitespace', '\s\+$')
    autocmd InsertEnter * call s:ToggleWhitespaceMatch('i')
    autocmd InsertLeave * call s:ToggleWhitespaceMatch('n')
augroup END
function! s:ToggleWhitespaceMatch(mode)
    let pattern = (a:mode == 'i') ? '\s\+\%#\@<!$' : '\s\+$'
    if exists('w:whitespace_match_number')
        call matchdelete(w:whitespace_match_number)
        call matchadd('ExtraWhitespace', pattern, 10, w:whitespace_match_number)
    else
        " Something went wrong, try to be graceful.
        let w:whitespace_match_number =  matchadd('ExtraWhitespace', pattern)
    endif
endfunction

function! <SID>StripTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" autocmd BufWritePre,FileWritePre ?* silent :call <SID>StripTrailingWhitespace()
command! StripWhitespace :silent :call <SID>StripTrailingWhitespace()

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Folding settings {{{

" set foldclose=all      "close folds automatically when moving out of them
augroup filetype_vim
    autocmd!
    autocmd FileType vim      setlocal foldmethod=marker
    autocmd FileType cpp      setlocal foldmethod=marker
    autocmd FileType verilog* setlocal foldmethod=marker
    autocmd FileType sh       setlocal foldmethod=marker
augroup END

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Automatic Banner/Header genration {{{
"Fix it to be more generic and autonomous
"Fix issue of cursor moving to date line when saving after sourcing vimrc
autocmd BufNewFile *.{c,cpp,v,py} silent :0r ~/.vim/mysnippets/header
autocmd BufNewFile *.{c,cpp,v,py} exe "1," . 8 . "g/File Name     :.*/s//File Name     : " .expand("%")
autocmd BufNewFile *.{c,cpp,v,py} exe "1," . 8 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd BufWritePre,FileWritePre *.{c,cpp,v,py} execute "normal ma"
autocmd BufWritePre,FileWritePre *.{c,cpp,v,py} exe "silent 1," . 8 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd BufWritePost,FileWritePost *.{c,cpp,v,py} execute "normal `a"
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Saves the undo history, even after file is closed
let s:undoDir = "/tmp/.undodir_" . $USER
if !isdirectory(s:undoDir)
    call mkdir(s:undoDir, "", 0700)
endif
let &undodir=s:undoDir
set undofile

" CTRL-A/X will be forced to use decimal-based arithmetic
set nrformats=

set virtualedit=all

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Multiply/Divide number under the cursor by count provided {{{
function! Multivide(divide)
    let cnt = v:count1
    let old_reg = getreg("v")
    call search('\d\([^0-9\.]\|$\)', 'cW')
    normal v
    call search('\(^\|[^0-9\.]\d\)', 'becW')
    normal "vygv
    if a:divide == 1
        execute 'normal "_c' . @v / cnt
    else
        execute 'normal "_c' . @v * cnt
    endif
    call setreg("v", old_reg)
endfunction

nnoremap <F5> :<C-u>call Multivide(0)<CR>
nnoremap <F6> :<C-u>call Multivide(1)<CR>

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Listchar settings {{{

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set showbreak=↪\
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set tabpagemax=50

" To prevent conceal in LaTeX files
let g:tex_conceal=''

" To prevent conceal in any file
set conceallevel=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"replace the word under cursor
nnoremap <leader>* :%s/<c-r><c-w>//<left>

" Selecting your pasted text
nnoremap <expr> gs '`[' . strpart(getregtype(), 0, 1) . '`]'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Verilog related settings {{{

" Functions list
source ~/.vim/myfunctions/Block.vim
source ~/.vim/myfunctions/Pipeline.vim
source ~/.vim/myfunctions/Always.vim

" RTL snippets : use :z<TAB>

command! Zalways    :-1r ~/.vim/mysnippets/always
command! Zdivider   :-1r ~/.vim/mysnippets/divider
command! Zmodule    :-1r ~/.vim/mysnippets/module
command! Zrow       :-1r ~/.vim/mysnippets/row
command! Zcolumn    :-1r ~/.vim/mysnippets/column
command! Zpipeline  :-1r ~/.vim/mysnippets/pipeline
command! Zpipeline2 :-1r ~/.vim/mysnippets/pipeline2
command! Zcomment   :-1r ~/.vim/mysnippets/comment
command! Zcase      :-1r ~/.vim/mysnippets/case
command! Zmem       :-1r ~/.vim/mysnippets/mem
command! Zdelay     :-1r ~/.vim/mysnippets/delay
command! Zminmax    :-1r ~/.vim/mysnippets/minmax
command! Zsram      :-1r ~/.vim/mysnippets/sram
command! Zcpp       :-1r ~/.vim/mysnippets/cpp

" }}}

" Create mapping for CAPS-LOCK to be used as escape key
" au VimEnter ?* :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" au VimLeave ?* :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
" au VimEnter ?* !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" au VimLeave ?* !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Substitute only within a rectangular visual block selection:
" :'<,'>s/\%Vold/new

" Toggle to ignore / not ignore whitespaces in vimdiff
" if &diff
"     map gs :call IwhiteToggle()<CR>
"     function! IwhiteToggle()
"       if &diffopt =~ 'iwhite'
"         set diffopt-=iwhite
"       else
"         set diffopt+=iwhite
"       endif
"     endfunction
" endif
