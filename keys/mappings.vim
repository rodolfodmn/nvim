" NAVIGATION
" br move
noremap ç l
noremap l k
noremap k j
noremap j h
nmap <leader>j :wincmd h<CR>
nmap <leader>k :wincmd j<CR>
nmap <leader>l :wincmd k<CR>
nmap <leader>ç :wincmd l<CR>

" Better window navigation
nnoremap <C-j> <C-w>h
nnoremap <C-k> <C-w>j
nnoremap <C-l> <C-w>k
nnoremap <C-ç> <C-w>l

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" SCREEN
" ident
nmap <leader>id G=gg<CR>

" Use alt + hjkl to resize windows
nnoremap <M-k>    :resize -2<CR>
nnoremap <M-l>    :resize +2<CR>
nnoremap <M-j>    :vertical resize -2<CR>
nnoremap <M-ç>    :vertical resize +2<CR>

" ACTIONS
" delete buffer
nnoremap <leader>dd :bdelete<CR>

" copy all
nmap <leader>ya ggVGy
nmap <leader>xa ggVGx

" file replace
nmap <leader>fr :%s/

" find things
nnoremap <leader>g :Rg!<CR>
nnoremap <leader>f :Files!<CR>
map <leader>b :Buffers<CR>

" SNIPPETS
" open function
nmap <leader>fn A{}<esc>i<cr><esc>O

" CONFIG
" Better nav for omnicomplete
inoremap <expr> <c-k> ("\<C-n>")
inoremap <expr> <c-l> ("\<C-p>")

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS - all word
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

