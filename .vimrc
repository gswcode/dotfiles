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

filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Active Plugins
Plugin 'VundleVim/Vundle.vim'                   " PluginInstall/Clean/Update
Plugin 'jeffkreeftmeijer/vim-numbertoggle'      " Automatically toggles number settings
Plugin 'vim-airline/vim-airline'                " lean & mean status/tabline for vim that's light as air
Plugin 'godlygeek/tabular'                      " :Tab /{delimiter}
Plugin 'junegunn/vim-easy-align'                " ga{motion}{delimiter}, use <C-x> to use any delimiter
Plugin 'junegunn/fzf.vim'
Plugin 'ctrlpvim/ctrlp.vim'                     " use :CtrlP instead since YankRing uses <C-p>, check for different solution
Plugin 'fisadev/vim-ctrlp-cmdpalette'           " use :CtrlPCmdPalette

Plugin 'preservim/nerdtree'                     " tree explorer plugin for vim
Plugin 'tpope/vim-vinegar'                      " - , enhancing netrw
Plugin 'tpope/vim-commentary'                   " gc{motion}
Plugin 'tpope/vim-surround'                     " cs{old identifier}{new identifier}
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rsi'
Plugin 'tpope/vim-fugitive'
" Plugin 'tpope/vim-obsession'
" Plugin 'tpope/vim-sensible'
" Plugin 'tpope/vim-scriptease'

Plugin 'glts/vim-radical'                       " Convert decimal, hex, octal, binary number representations
Plugin 'glts/vim-magnum'                        " Pure Vim script big integer library

Plugin 'haya14busa/is.vim'                      " incremental search improved
Plugin 'osyo-manga/vim-anzu'                    " display search position like (2/10) for n/N commands
Plugin 'haya14busa/vim-asterisk'                " asterisk.vim provides improved * motions
Plugin 'markonm/traces.vim'                     " Range, pattern and substitute preview for Vim

Plugin 'easymotion/vim-easymotion'              " [y|d|c]<leader><leader>{motion}{identifier}
" Plugin 'justinmk/vim-sneak'                     " Jump to any location specified by two characters, remaps s,S
Plugin 'rhysd/accelerated-jk'                   " accelerate up-down moving using j/k
Plugin 'rhysd/clever-f.vim'                     " use f/F after f{char} instead of ;/, and t/T after t{char}
Plugin 'terryma/vim-multiple-cursors'           " <C-n> to select multiple cursors
Plugin 'tommcdo/vim-exchange'                   " cx{motion} Easy text exchange operator for Vim
Plugin 'matze/vim-move'                         " Block move Ctrl+h/j/k/l, change redraw mapping

Plugin 'mhinz/vim-startify'                     " fancy start screen for vim
Plugin 'flazz/vim-colorschemes'                 " :colorscheme <scheme>
Plugin 'Yggdroot/indentLine'                    " creates dotted lines to show code indentation
Plugin 'luochen1990/rainbow'                    " Use different colors for nested parantheses
Plugin 'thiagoalessio/rainbow_levels.vim'       " text color based on indentation, default off, :RainbowToggle
Plugin 'junegunn/goyo.vim'                      " :Goyo, Distraction-free writing in Vim
Plugin 'junegunn/limelight.vim'                 " :Limelight, Hyperfocus-writing in Vim

Plugin 'kana/vim-textobj-user'                  " use user defined text objects
Plugin 'wellle/targets.vim'                     " Vim plugin that provides additional text objects
Plugin 'andymass/vim-matchup'                   " even better % navigate and highlight matching words, modern matchit and matchparen replacement
Plugin 'adriaanzon/vim-textobj-matchit'         " use am/im textobjects for matchit pairs
Plugin 'michaeljsmith/vim-indent-object'        " defines a new text object representing lines of code at the same indent level
Plugin 'terryma/vim-expand-region'              " Press + to expand the visual selection and _ to shrink it

Plugin 'raimondi/delimitmate'                   " automatically create bracket pairs in insert mode
Plugin 'vim-scripts/VisIncr'                    " :I <increment>
Plugin 'troydm/zoomwintab.vim'                  " use <C-w><C-o> to zoom in/out current buffer
Plugin 'simeji/winresizer'                      " <C-e> + h/j/k/l to resize window
Plugin 'mileszs/ack.vim'                        " sudo apt-get install ack-grep; use Ack! {pattern} {directory}; check ag.vim also
Plugin 'francoiscabrol/ranger.vim'              " <leader>f opens ranger for file navigation
Plugin 'lifepillar/vim-mucomplete'              " autocomplete plugin
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'idbrii/textobj-word-column.vim'
Plugin 'tyru/open-browser.vim'                  " Open URL with your favorite browser from your most favorite editor
Plugin 'machakann/vim-highlightedyank'          " Make the yanked region apparent!
Plugin 'arecarn/vim-crunch'                     " Calculations inside Vim :Crunch, g={motion}

Plugin 'mbbill/undotree'                        " The undo history visualizer for Vim
Plugin 'mhinz/vim-grepper'                      " Helps you win at grep
" Plugin 'vimwiki/vimwiki'

" Plugin 'w0rp/ale'                               " Asynchronous line engine
" Plugin 'SirVer/ultisnips'                       " setup properly then use
" Plugin 'honza/vim-snippets'                     " setup properly then use

" Language based plugins
Plugin 'vim-syntastic/syntastic'                " Linter :SyntasticCheck, :SyntasticInfo
Plugin 'plasticboy/vim-markdown'                " Syntax highlighting, matching rules and mappings for Markdown
Plugin 'vhda/verilog_systemverilog.vim'         " Verilog/SystemVerilog Syntax and Omni-completion
Plugin 'antoinemadec/vim-verilog-instance'      " create instantiation of ports from port declaration, gb{motion}
Plugin 'mboughaba/i3config.vim'                 " Syntax highlighting for i3config

" Enable only when needed
" Plugin 'dhruvasagar/vim-table-mode'             " VIM Table Mode for instant table creation

call vundle#end()            " required
filetype plugin indent on    " required

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

nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

let g:nrrw_rgn_vert = 1

" Vim markdown plugin settings
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0

" Mucomplete plugin settings
set completeopt+=menuone
set completeopt+=noselect
set completeopt+=noinsert
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1

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

autocmd BufWritePre,FileWritePre ?* silent :call <SID>StripTrailingWhitespace()

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
