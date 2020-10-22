" br move
noremap ç l
noremap l k
noremap k j
noremap j h
nmap <leader>j :wincmd h<CR>
nmap <leader>k :wincmd j<CR>
nmap <leader>l :wincmd k<CR>
nmap <leader>ç :wincmd l<CR>
nmap <leader>id G=gg<CR>
nmap <leader>fn A{}<esc>i<cr><esc>O
nmap <leader>ya ggVGy
nmap <leader>xa ggVGx
nmap <leader>fr :%s/
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
" Better nav for omnicomplete
inoremap <expr> <c-k> ("\<C-n>")
inoremap <expr> <c-l> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-k>    :resize -2<CR>
nnoremap <M-l>    :resize +2<CR>
nnoremap <M-j>    :vertical resize -2<CR>
nnoremap <M-ç>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-j> <C-w>h
nnoremap <C-k> <C-w>j
nnoremap <C-l> <C-w>k
nnoremap <C-ç> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da
