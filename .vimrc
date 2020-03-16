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

" Functions list
source ~/.vim/myfunctions/Block.vim
source ~/.vim/myfunctions/Pipeline.vim
source ~/.vim/myfunctions/Always.vim

call vundle#begin()

" Active Plugins
Plugin 'VundleVim/Vundle.vim'                   " PluginInstall/Clean/Update
Plugin 'jeffkreeftmeijer/vim-numbertoggle'      " Automatically toggles number settings
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
" Plugin 'tpope/vim-fugitive'
" Plugin 'tpope/vim-obsession'
" Plugin 'tpope/vim-sensible'
" Plugin 'tpope/vim-scriptease'

Plugin 'glts/vim-radical'                       " Convert decimal, hex, octal, binary number representations
Plugin 'glts/vim-magnum'                        " Pure Vim script big integer library

Plugin 'haya14busa/is.vim'                      " incremental search improved
" Plugin 'osyo-manga/vim-anzu'                    " display search position like (2/10) for n/N commands
" Plugin 'haya14busa/vim-asterisk'                " asterisk.vim provides improved * motions
Plugin 'markonm/traces.vim'                     " Range, pattern and substitute preview for Vim

Plugin 'easymotion/vim-easymotion'              " [y|d|c]<leader><leader>{motion}{identifier}
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

Plugin 'raimondi/delimitmate'                   " automatically create bracket pairs in insert mode
Plugin 'vim-scripts/VisIncr'                    " :I <increment>
Plugin 'kana/vim-textobj-user'                  " use user defined text objects
Plugin 'adriaanzon/vim-textobj-matchit'         " use am/im textobjects for matchit pairs
Plugin 'troydm/zoomwintab.vim'                  " use <C-w><C-o> to zoom in/out current buffer
Plugin 'simeji/winresizer'                      " <C-e> + h/j/k/l to resize window
Plugin 'terryma/vim-expand-region'              " Press + to expand the visual selection and _ to shrink it
Plugin 'mileszs/ack.vim'                        " sudo apt-get install ack-grep; use Ack! {pattern} {directory}; check ag.vim also
Plugin 'francoiscabrol/ranger.vim'              " <leader>f opens ranger for file navigation
Plugin 'lifepillar/vim-mucomplete'              " autocomplete plugin
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'idbrii/textobj-word-column.vim'
Plugin 'tyru/open-browser.vim'                  " Open URL with your favorite browser from your most favorite editor
Plugin 'machakann/vim-highlightedyank'          " Make the yanked region apparent!
Plugin 'arecarn/vim-crunch'                     " Calculations inside Vim :Crunch, g={motion}

" Plugin 'sjl/gundo.vim'
" Plugin 'simnalamburt/vim-mundo'
" Plugin 'mbbill/undotree'

" Plugin 'justinmk/vim-sneak'
" Plugin 'dhruvasagar/vim-table-mode'
" Plugin 'wellle/targets.vim'
" Plugin 'vimwiki/vimwiki'
" Plugin 'andymass/vim-matchup'
" Plugin 'michaeljsmith/vim-indent-object'
" Plugin 'mhinz/vim-grepper'

" Plugin 'vim-scripts/YankRing.vim'               " save the yanked data, use p <c-p>/<c-n>
" Plugin 'w0rp/ale'                               " Asynchronous line engine
" Plugin 'SirVer/ultisnips'                       " setup properly then use
" Plugin 'honza/vim-snippets'                     " setup properly then use
" Plugin 'chrisbra/NrrwRgn'                       " :NR :h NrrwRgn.txt
" Plugin 'dominikduda/vim_current_word'           " :VimCurrentWordToggle
" Plugin 'will133/vim-dirdiff'                    " diff recursively for directories

" Language based plugins
Plugin 'vim-syntastic/syntastic'                " Linter :SyntasticCheck, :SyntasticInfo
Plugin 'plasticboy/vim-markdown'                " Syntax highlighting, matching rules and mappings for Markdown
Plugin 'vhda/verilog_systemverilog.vim'         " Verilog/SystemVerilog Syntax and Omni-completion
Plugin 'antoinemadec/vim-verilog-instance'      " create instantiation of ports from port declaration, gb{motion}
Plugin 'mboughaba/i3config.vim'                 " Syntax highlighting for i3config

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

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Keyboard Mappings {{{

" Mapping the SPACE key as Leader key (Backslash is still the default leader)
map <space> <leader>
map <space><space> <leader><leader>

" To stop pressing shift for getting :
nnoremap ; :
vnoremap ; :

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
map <leader>, :Tab /,/l0r1<cr>
map <leader>; :Tab /;/l0r1<cr>
map <leader>= :Tab / = /l0r0<cr>
map <leader>< :Tab /<=/l1r1<cr>
map <leader>( :Tab /(/l1r0<cr>
map <leader>) :Tab /)/l0r0<cr>

" To go to start/end of current line
nnoremap H ^
nnoremap L $

" To repeat last macro faster
nnoremap Q @@

" Remapping Ctrl + h/j/k/l to move in Insert Mode
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-l> <Right>
" inoremap <C-h> <Left>

" Mapping arrow keys for navigating splits
" nnoremap <Up> <c-w>k
" nnoremap <Down> <c-w>j
" nnoremap <Left> <c-w>h
" nnoremap <Right> <c-w>l

"Right align and Left align a visual block
xnoremap <silent> <leader>ar :s/\v%V(\s*)(\S*)(\s*)/\1\3\2/<cr> :noh<cr>
xnoremap <silent> <leader>al :s/\v%V(\s*)(\S*)(\s*)/\2\1\3/<cr> :noh<cr>

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Source the vimrc file after saving it
augroup vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

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

" Enable the use of mouse
set mouse+=a

" Remove the introduction message in Vim
set shortmess=I

" Enable syntax highlighting.
syntax on

" Automatically indent when adding a curly bracket, etc.
set smartindent

" Number of spaces inserted when <TAB> is pressed
set tabstop=8
set softtabstop=4
" Number of spaces used in Auto indentation
set shiftwidth=4
" <TAB>'s are converted to spaces
set expandtab

" Show line number and cursor position
set ruler

" Display normal mode commands as you type
set showcmd

" Show editing mode
set showmode

" Show file options above the command line
set wildmenu
set wildignorecase

" Highlight the current line and column
set cursorline
"set cursorcolumn

" Break lines so that words are not broken halfway, when using set wrap
"set wrap
"set linebreak

" Don't wrap lines by default
set nowrap

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

" Display vertical line at column 80
" set colorcolumn=80
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Statusline settings {{{
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=Cyan ctermfg=6 guifg=Black ctermbg=0
  elseif a:mode == 'r'
    hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0
  else
    hi statusline guibg=DarkRed ctermfg=1 guifg=Black ctermbg=0
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" default the statusline to green when entering Vim
hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" Formats the statusline
set statusline=%f                               " file name
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, " file encoding
set statusline+=%{&ff}]                         " file format
set statusline+=%y                              " filetype
set statusline+=%h                              " help file flag
set statusline+=%m                              " modified flag
set statusline+=%r                              " read only flag

set statusline+=\ %=                                                " align left
set statusline+=Line:%l/%L[%p%%]                                    " line X of Y [percent of file]
set statusline+=\ Col:%c                                            " current column
set statusline+=\ Buf:%n                                            " Buffer number
set statusline+=\ [%b][0x%B]\                                       " ASCII and byte code under cursor
set statusline+=%{strftime(\"%l:%M:%S\ \%p,\ %a\ %b\ %d,\ %Y\")}    " Display time and date

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
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType cpp setlocal foldmethod=marker
    autocmd FileType verilog* setlocal foldmethod=marker
    autocmd FileType sh setlocal foldmethod=marker
augroup END

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Searching the visually selected text using * or # from visual mode directly {{{
xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>
function! s:VSetSearch()
    let temp = @s
    norm! gv"sy
    let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
    let @s = temp
endfunction
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Leaving insert mode in terminal vim {{{
" Fix for faster visual block mode in terminal vim
" When you’re pressing Escape to leave insert mode in the terminal, it will by
" default take a second or another keystroke to leave insert mode completely
" and update the statusline. This fixes that. I got this from:
" https://powerline.readthedocs.org/en/latest/tipstricks.html#vim
set timeout " Do time out on mappings and others
set timeoutlen=2000 " Wait {num} ms before timing out a mapping

if !has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        autocmd InsertEnter * set timeoutlen=0
        autocmd InsertLeave * set timeoutlen=1000
    augroup END
endif
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" RTL snippets : use :z<TAB> {{{

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

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set showbreak=↪\
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Create mapping for CAPS-LOCK to be used as escape key
" au VimEnter ?* :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" au VimLeave ?* :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
" au VimEnter ?* !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" au VimLeave ?* !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Do the following to substitute old with new only within a rectangular visual block, that being a
" Control-v style visual selection:
" :'<,'>s/\%Vold/new

" autocmd FileType verilog* iabbrev <buffer> w_ wire [:0] w_;<Esc>7ha
" autocmd FileType verilog* iabbrev <buffer> r_ reg  [:0] r_;<Esc>7ha
" autocmd FileType verilog* iabbrev <buffer> always <Esc>:Zalways<cr>
