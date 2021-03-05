" configs
let g:mapleader = "\<Space>"
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler               			        " Show the cursor position all the time
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set conceallevel=0                      " So that I can see `` in markdown files
set laststatus=0                        " Always display the status line
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
au FileType * set fo-=c fo-=r fo-=o

" theme
set cmdheight=2                         " More space for displaying messages
set background=dark                     " tell vim what the background color looks like

"lines
set nowrap                              " Display long lines as just one line
set relativenumber
set number
set cursorline                          " Enable highlighting of the current line

let g:ale_linters = {}

" sreen
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors

" indentation
set showtabline=4                       " Always show tabs4k
set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent

