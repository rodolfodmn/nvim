	"" General configs
syntax on
set formatoptions-=cro
let mapleader = " "
set showmode
set wrap
set formatoptions-=cro
set conceallevel=1
set hidden
set scrolloff=8
set noshowmode
set updatetime=50
set shortmess+=c
set encoding=utf8
set guicursor=
set noshowmatch
set nohlsearch
set smartcase
set incsearch
set autoindent noexpandtab tabstop=4 shiftwidth=4
set smartindent
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
"" old tab
"set tabstop=4 softtabstop=4
"set shiftwidth=4
"set expandtab

"" Plugins
call plug#begin('~/.vim/plugged')

"" Util
Plug 'plasticboy/vim-markdown'
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'mbbill/undotree'
Plug 'lyuts/vim-rtags'
Plug 'jremmen/vim-ripgrep'

"" Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-utils/vim-man'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"" Flutter
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'dart-lang/dart-vim-plugin'

"" Rust
Plug 'rust-lang/rust.vim'

"" Js
Plug 'posva/vim-vue'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'beautify-web/js-beautify'

"" Html
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'

"" Ui
Plug 'slim-template/vim-slim'
Plug 'ryanoasis/vim-devicons'
"Plug 'scrooloose/nerdtree'
Plug 'gruvbox-community/gruvbox'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"" Ui configs
set nu
set nowrap
set splitbelow
set noerrorbells
set termguicolors
set relativenumber
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

colorscheme gruvbox
set background=dark

let g:webdevicons_enable_nerdtree = 1
set list
set listchars=eol:⏎,tab:»·,trail:␠,nbsp:⎵

"" slim
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

"" Rg
if executable('rg')
	let g:rg_derive_root='true'
endif

"" Snipets
let g:UltiSnipsExpandTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

"" NERDTree
"let g:NERDTreeDirArrowExpandable = ''
"let g:NERDTreeDirArrowCollapsible = ''

"" Js
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

"" Vimwiki
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

"" Remaps.
inoremap jj <ESC>
nnoremap Y y$
noremap ç l
noremap l k
noremap k j
noremap j h
vnoremap K :m '>+1<CR>gv=gv
vnoremap L :m '<-2<CR>gv=gv
map gst :vert Gstatus<CR>
map so :only<CR>

"" Leader do
nmap <leader>j :wincmd h<CR>
nmap <leader>k :wincmd j<CR>
nmap <leader>l :wincmd k<CR>
nmap <leader>ç :wincmd l<CR>
nmap <leader>u :UndotreeShow<CR>
nmap <leader>s :w<CR>
nmap <leader>ss :x<CR>
nmap <leader>sa :xa<CR>
nmap <leader>qq :q!<CR>
nmap <leader>id G=gg<CR>
nmap <leader>tr :tabprevious<CR>
nmap <leader>tt :tabnext<CR>
nmap <leader>bx :bNext<CR>
nmap <leader>bz :bprevious<CR> 
nmap <leader>bb :b<space><tab>
nmap <leader>bf :bfirst<CR>
nmap <leader>ob A{}<esc>i<cr><esc>O
nmap <leader>ya ggVGy
nmap <leader>xa ggVGx
nmap <leader>\\ :noh<CR>
nmap <leader>ot :terminal<CR>
nmap <leader>nt :NERDTreeToggle<CR>
nmap <leader>ww :VimwikiIndex<CR>
nmap <leader>fr :%s/
"" fzf
nmap <leader>fa :Rg!<space>
nmap <leader>p :Files<CR>
"" dart
map <leader>df :DartFmt<CR>

"" Copy/Paste/Cut
if has('unnamedplus')
	set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
	vmap <C-x> :!pbcopy<CR>
	vmap <C-c> :w !pbcopy<CR><CR>
endif

"" Coc
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


"" Flutter/Dart configs 
let g:lsc_auto_map = v:true
let g:lsp_settings = {
			\ 'analysis-server-dart-snapshot': {
			\     'cmd': [
			\         '$DART_SDK/dart',
			\         '$DART_SDK/dart $DART_SDK/snapshots/analysis_server.dart.snapshot',
			\         '--lsp'
			\     ],
			\ },
			\ }

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'onedark'
set showtabline=2
set noshowmode

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

map <C-f> :GFiles<CR>
map <C-b> :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>

map <C-f> <Esc><Esc>:Files!<CR>
map <C-b> <Esc><Esc>:Buffers!<CR>
inoremap <C-f> <Esc><Esc>:BLines!<CR>
map <C-g> <Esc><Esc>:BCommits!<CR>
map <C-s> <Esc><Esc>:GFiles?<CR>

let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"


" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

let g:coc_explorer_global_presets = {
\   'floating': {
\      'position': 'floating',
\   },
\   'floatingLeftside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 30,
\   },
\   'floatingRightside': {
\      'position': 'floating',
\      'floating-position': 'right-center',
\      'floating-width': 30,
\   },
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }
" Explorer
nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
