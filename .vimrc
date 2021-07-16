

" Comments In Vim Started With `"`
" Basic Setting Area


" Change Vim from vi mode to Vim mode.
set nocompatible

"Turn on syntax highlighting.
syntax on

"Encoding option
set encoding=UTF-8

"Show Line Number
set number

" By default leader key `\`

" STOP CASE SENSITIVE
set ignorecase

"Helpful During Search
set smartcase


"Providing Mouse Support
set mouse+=a

"Enable Warping or nowarping text 
set wrap
"set nowarp

" For incremental Search 
set incsearch

" For Highlighting Search Result
set hlsearch

"Minimum number lines to keep below and above the curser on a screen
set scrolloff=2


"Make buffer hidden without writing
set hidden


" In Insertmode : Use the appropriate number of spaces to insert a <Tab>
set expandtab

"It is tab stop value
set shiftwidth=4

"Number of spaces that a <Tab> in the file counts For
set tabstop=4


"Number of Spaces that a <Tab> counts for while performing editing operation
set softtabstop=4

"Do smart autoindenting when starting a new line.
set smartindent

"Normally 'autoindent' should also be on when using 'smartindent'
"An indent automatically inserted
set autoindent

"To set window split right
set splitright


"Searching Down into Subfolders
set path+=**

"When 'wildmenu' is on, command-line completion operates in an enhanced mode.
"On pressing 'wildchar'
set wildmenu
set wildmode=full

" Setting Crusor Line
set cursorline
hi CurserLine term=bold cterm=bold
set backspace=indent,eol,start

"Cross platform Clipboard
set clipboard^=unnamed,unnamedplus

"Dictionary
set complete+=kspell

" How Formatting is done
set formatoptions=tcqrn1

"Insertmode completion option
set completeopt=longest,menuone

"Status Line
set laststatus=2

" Moving matching braces
set matchpairs+=<:> "Use % to jump between pairs

"To show the matches

set showmatch

set matchtime=3

" Show partial command

set showcmd

" Lines to save text folding for .vimrc
autocmd BufWinLeave *.* mkview
autocmd bufwinleave *.* silent loadview

"File type plugin on
filetype plugin indent on
"#################################################
"##                                             ##
"##              ENGLISH SPELLING               ##
"##                                             ##
"#################################################
"

set nospell
map <F6> :setlocal spell! spelllang=en_gb<CR>
"***********************************************
"**       FOR SHOWING SPELLING MISTAKES       **
"***********************************************
hi SpellBad cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellLocal cterm=underline ctermfg=210 guifg=#ff8787
hi SpellRare cterm=underline ctermfg=217 guifg=#ffafaf
hi SpellCap  cterm=underline ctermfg=224 guifg=#ffd7d7

:set spellfile=~/.vim/spell/en.utf-8.add 
"you need to create ~/.vim/spell/en.utf-8.add file by your self
"================================================


"#################################################
"##                                             ##
"##              KEY MAPPING                    ##
"##                                             ##
"#################################################

nmap <C-n> :NERDTreeToggle<CR>
nnoremap <Up>     :resize +2<CR>
nnoremap <Down>   :resize -2<CR>
nnoremap <Left>   :vertical resize +2<CR>
nnoremap <Right>  :vertical resize -2<CR>
nnoremap <leader>ni :e $NOTE_DIR/index.md<CR>:cd $NOTE_DIR<CR>
nmap <C-f> <Esc><Esc> :Files<CR>
inoremap <C-f> <Esc><Esc> :BLines<CR>
map <F5> :set relativenumber!<CR>
map <F4> :IndentLinesToggle<CR>


"#################################################


"#################################################
"##                                             ##
"##              COLOR SCHEME                   ##
"##                                             ##
"#################################################


"******************************************************
"FOR VIM DEFAULT COLORSCHEME
"******************************************************
" To know all available colorscheme :colorscheme<space> <ctrl>d
"
"colorscheme industry

"*****************************************************
"badwolf
"*****************************************************
"set runtimepath^=~/.vim/color/badwolf-master
"colorscheme badwolf
"
"******************************************************
"gruvbox
"***************
"set runtimepath^=~/.vim/color/gruvbox-master/
"colorscheme gruvbox

"*******************************************************

"#################################################
"##                                             ##
"##              VIM PLUGINS                    ##
"##                                             ##
"#################################################
"
"*************************************************
"*************************************************
"**             pluging manager                 **
"**              VIM PLUG                       **
"*************************************************
"*************************************************

call plug#begin('~/.vim/plugged')

"For Airline Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" For NERDTree File manager
Plug 'scrooloose/nerdtree'

"For Snippets
Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'

" For Markdown Language Support
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " need to install nodejs and yarn

"Integrate fzf with Vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Automatically show Vim's complete menu while typing.
Plug 'vim-scripts/AutoComplPop'

" Automatically clear search highlights after you move your cursor.
Plug 'haya14busa/is.vim'

" Helpers for moving and manipulating files / directories.
Plug 'tpope/vim-eunuch'

" Briefly highlight which text was yanked.
Plug 'machakann/vim-highlightedyank'

" Handle multi-file find and replace.
Plug 'mhinz/vim-grepper'

" Dim paragraphs above and below the active paragraph.
Plug 'junegunn/limelight.vim'

" Distraction free writing by removing UI elements and centering everything.
Plug 'junegunn/goyo.vim'


"Nerdtree Comments
Plug 'preservim/nerdcommenter'



call plug#end()
"===================================================================================
"===================================================================================
"
"                        PLUGIN SPECIFICE SETTING                                 
"
"==================================================================================
"==================================================================================
"
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
""For Airline Status Bar
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
" For NERDTree File manager
"Plug 'scrooloose/nerdtree'
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
"For Snippets
"Plug 'honza/vim-snippets'
"Plug 'sirver/ultisnips'
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
" For Markdown Language Support
" Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
" %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
"set conceallevel=2
let g:vim_markdown_conceal = 0
let g:vim_markdown_frontmatter=1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_fenced_languages = ['c++=cpp', 'viml=vim', 'bash=sh', 'ini=dosini'] 

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
""iamcco/markdowpreview
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
let g:mkdp_refresh_slow = 1
let g:mkdp_markdown_css = '/home/chandrasekharanabatula/.local/lib/github-markdown-css/github-markdown.css'

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
"" Briefly highlight which text was yanked.
"Plug 'machakann/vim-highlightedyank'
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
let g:highlightedyank_highlight_duration = 1000

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
"" Dim paragraphs above and below the active paragraph.
"Plug 'junegunn/limelight.vim
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

let g:limelight_conceal_ctermfg = 244"


