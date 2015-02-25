set nocp
" Allow per-dir vimrc files
set exrc
set secure
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt-=preview
let mapleader="\<Space>"
execute pathogen#infect()
syntax on
set background=dark
colorscheme solarized
highlight clear SignColumn
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
let g:netrw_silent = 1
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set diffopt=vertical
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_c_check_header=1

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" supertab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Save file
nnoremap <Leader><Leader>w :w<CR>

map <Leader> <Plug>(easymotion-prefix)

map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" EasyMotion search 
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to
" EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" open quickfix after grep
autocmd QuickFixCmdPost *grep* cwindow

" git grep word under cursor
nnoremap gr :silent Ggrep <cword> <bar> redraw! <CR>
