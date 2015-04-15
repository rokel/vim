if &shell =~# 'fish$'
    set shell=bash
endif

set nocp
" Allow per-dir vimrc files
set exrc
set secure
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt-=preview
let mapleader="\<Space>"
inoremap jk <Esc>
execute pathogen#infect()
syntax on
set background=dark
colorscheme solarized
highlight clear SignColumn

:autocmd InsertEnter,InsertLeave * set cul!

let g:airline_powerline_fonts = 1

let g:netrw_silent = 1
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set diffopt=vertical
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_c_check_header=1

set tw=79
set colorcolumn=+1
" Artistic Style 
let g:formatprg_args_expr_cpp = '"--mode=c --style=google -pcjH -FU --max-code-length=79 -".(&expandtab ? "s".&shiftwidth : "t")'
noremap <F3> :Autoformat<CR><CR>

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Save file
nnoremap <Leader><Leader>w :w<CR>

map <Leader> <Plug>(easymotion-prefix)

map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaSl --extra=+q .<CR>

let g:ycm_collect_identifiers_from_tags_files = 1 

let g:UltiSnipsExpandTrigger="<c-z>"

let g:pathogen_disabled = []

if v:version < '703'
    call add(g:pathogen_disabled, 'easymotion')
else
    " EasyMotion search 
    map  / <Plug>(easymotion-sn)
    omap / <Plug>(easymotion-tn)

    " These `n` & `N` mappings are options. You do not have to map `n` & `N` to
    " EasyMotion.
    " Without these mappings, `n` & `N` works fine. (These mappings just provide
    " different highlight method and have some other features )
    map  n <Plug>(easymotion-next)
    map  N <Plug>(easymotion-prev)
endif

" open quickfix after grep
autocmd QuickFixCmdPost *grep* cwindow

" git grep word under cursor
nnoremap gr :silent Ggrep <cword> <bar> redraw! <CR>

" recognise .md as markdown
autocmd BufNewFile,BufReadPost *.md setlocal filetype=markdown tw=79 spell complete+=kspell nocindent
