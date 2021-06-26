" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'
"" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"" HTML Bundle
Plug 'hail2u/vim-css3-syntax'
Plug 'gko/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'
" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" Auto pairs for '(' '[' '{'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
Plug 'sainnhe/gruvbox-material'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'voldikss/vim-floaterm'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'kevinhwang91/rnvimr',
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'vim-vdebug/vdebug'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdcommenter'
Plug 'posva/vim-vue'
Plug 'vimwiki/vimwiki'

" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
