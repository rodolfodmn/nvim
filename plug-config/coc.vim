" <TAB>: completion.
"" Coc
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
