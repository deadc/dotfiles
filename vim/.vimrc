" Basic
set autoread                                     " reload on external file changes
set backspace=indent,eol,start                   " backspace behaviour
set clipboard=unnamed,unnamedplus                " enable clipboard
set encoding=utf8                                " enable utf8 support
set hidden                                       " hide buffers, don't close
set mouse=a                                      " enable mouse support
set nowrap                                       " disable wrapping
set number                                       " show line numbers
set term=xterm-256color                          " terminal type
set wildmenu wildmode=longest:full,full          " wildmode settings
set wildcharm=<Tab>                              " wildmenu character
set showcmd                                      " show command keys
set splitbelow splitright                        " better split behaviour
set autochdir                                    " switch to files local directory

" UI
filetype plugin indent on                        " enable filetype detection
set listchars=eol:¶,trail:•,tab:▸\               " whitespace characters
set scrolloff=999                                " center cursor position vertically
set showbreak=¬\                                 " Wrapping character
set showmatch                                    " show matching brackets
syntax on                                        " enable syntax highlightning

" Colors
colorscheme onedark                              " set colorscheme
hi Normal guibg=NONE ctermbg=NONE|               " transparency fix
let g:onedark_termcolors=256                     " enable 256 colors support

" Ruler
set laststatus=0                                 " disable statusline
set ruler rulerformat=%50(%=%<%F%m\ ›\ %{getfsize(@%)}B\ \›\ %l/%L:%v%)

" Tabs & Indentation
set autoindent expandtab                         " autoindentation & tabbing
set shiftwidth=2 softtabstop=2 tabstop=2         " 1 tab = 2 spaces

" Search
set hlsearch ignorecase incsearch smartcase      " search options

" Undo & Backup
set nobackup noswapfile nowritebackup            " disable backup/swap files
set undofile undodir=~/.vim/undo undolevels=9999 " undo options

" Performance Tuning
set lazyredraw                                   " enable lazyredraw
set nocursorline                                 " disable cursorline
set ttyfast                                      " enable fast terminal connection

" Key Mappings
let mapleader=','                                " leader key
nnoremap <leader>, :let @/=''<CR>:noh<CR>|       " clear search
nnoremap <silent> <leader># :g/\v^(#\|$)/d_<CR>| " delete commented/blank lines
nnoremap <leader>b :ls<CR>:buffer<space>|        " show/select buffer
nnoremap <leader>d :w !diff % -<CR>|             " show diff
nnoremap <silent> <leader>i gg=G``<CR>|          " fix indentation
nnoremap <leader>l :set list! list?<CR>|         " toggle list (special chars)
nnoremap <leader>p :set invpaste paste?<CR>|     " toggle paste mode
nnoremap <leader>r :retab<CR>|                   " convert tabs to spaces
nnoremap <leader>s :source $MYVIMRC<CR>|         " reload .vimrc
nnoremap <silent> <leader>t :%s/\s\+$//e|        " trim whitespace
nnoremap <leader>o :edit<space><Tab>|            " open buffer
nnoremap <leader>x :bd<CR>|                      " close buffer
nnoremap <silent> <leader><space> :Explore<CR>|  " open netrw
nnoremap <leader>w :set wrap! wrap?<CR>|         " toggle wrapping
nnoremap <silent> <leader>n :enew<CR>|           " new empty buffer
nnoremap <silent> <S-Right> :bn<CR>|             " next buffer
nnoremap <silent> <S-Left> :bp<CR>|              " previous buffer

" Custom Commands
cnoreabbrev w!! w !sudo tee > /dev/null %|       " write file with sudo

" Netrw Settings
let g:netrw_banner=0
let g:netrw_browse_split=0
