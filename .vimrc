set nocompatible        "Disable vi-compatibility
set linespace=11
set t_co=256


"Gui Options
"set guifont=droid\ sans\ mono\ for\ powerline\ regular\ 11
set guifont=Fira\ Code\ 12
set guioptions-=T       " Remove Top Toolbar
set guioptions-=r       " Remove scrollbar left and right
set go-=L               " Removes left hand scroll bar

set noshowmode 			" always hide what mode we're currently editing in
set nowrap 			    " don't wrap lines
set tabstop=4 			" a tab of four spaces
set smarttab
set tags=tags
set softtabstop=4		" when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab			" expands tabs by default (overloadable per file type later)
set shiftwidth=4		" number of spaces to use for autoindenting
set shiftround			" use multiple of shiftwidth when indenting with (<) and (>)
set backspace=indent,eol,start 	" allow backspacing over everything in insert mode
set autoindent			" always set autoindenting on
set copyindent			" copy the previous indentation on autoindenting
set number			    " always show line numbers
set ignorecase			" ignore case when searching
set smartcase			" ignore case if search pattern is all lowercase
set timeout timeoutlen=500 ttimeoutlen=250
set visualbell			" don't beep
set noerrorbells		" don't beep
"set autowrite			" save on buffer switch
set mouse=a
set wildmenu            " Wild Menu enable




"Setting custom leader key
let mapleader = ","
let g:mapleader = ","

"Fast saves and quit
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :q!<cr>

"Down is really the next line
nnoremap j gj
nnoremap k gk

"Easy escaping to normal mode
imap jj <esc>

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"Easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"Resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

"Open Split shortcut
nmap vs :vsplit<cr>
nmap sp :split<cr>

"Create split below
nmap :sp :rightbelow sp<cr>

highlight Search cterm=underline
set incsearch

"Cursor change
if has("autocmd")
    au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
    au InsertEnter,InsertChange *
                \ if v:insertmode == 'i' |
                \   silent execute '!echo -ne "\e[6 q"' | redraw! |
                \ elseif v:insertmode == 'r' |
                \   silent execute '!echo -ne "\e[4 q"' | redraw! |
                \ endif
    au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

"Vim Plug Start
call plug#begin('~/.vim/plugged')

"Plug 'shawncplus/phpcomplete.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-surround'

call plug#end()
"Vim Plug Stop




"Color Scheme
if has("gui_running")
    colorscheme gotham256
endif

"Custom Plugin Mapping And Configuration
let g:airline_powerline_fonts = 1

"Nerd tree toggle
nmap <C-n> :NERDTreeToggle<cr>

"Nerd Comment Toggle
nmap <leader>/ <leader>c<Space>
vmap <leader>/ <leader>c<Space>

"BufferExplorer
nmap <leader>o :BufExplorer<cr>

"Powerline Plugin
"set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
"set laststatus=2

