set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set mouse=a



" FILE BROWSING
" insert-mode, nonrecursive mapping -- or built in file tree!
" need to find a differnt keybinding other than crtl+b cause tmux 
inoremap <c-s> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-s> <Esc>:Lex<cr>:vertical resize 30<cr>

" tweaks for browsing
let g:netrw_banner=1		"disable annoying but helpful banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1			" open split to the right
let g:netrw_liststyle=3 	"tree view
let g:netrw_sizestyle="H"	" use 1024 base
let g:netrw_sort_direction="normal"	" can also be 'reverse'; normal default
"let g:netrw_usetab=1		" <ctrl+tab> map supporing shriking/expanding a Lex or netrw window -- breaks the inoremap shortkey when enabled
"let g:netrw_list_hide=netrw_gitignore#Hide()
"let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
"Now we can
"- :edit a folder to open a file browser
"- <CR>/v/t to open in h-split/v-split/tab
"- check |netrw-browse-maps| for more mappings

" autocomplete keyboard shortcuts
"best way to cycle through auto options is ctrl+n repeatdly or ctrl+p for previous
"ctrl+n autocomplete word - anything specified by the 'complete' option
"ctrl+x+ctrl+n autocomplete just in this file
"ctrl+x for tags only - requires ctags program 
"ctrl+x+ctrl+f autocomplete filenames

" SNIPPETS
" Read an empty HTML template and move cursor to title
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a
