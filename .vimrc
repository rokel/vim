set nocp
filetype plugin on
let mapleader=","
execute pathogen#infect()
syntax on
set background=dark
colorscheme solarized
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
map <C-n> :NERDTreeToggle<CR>

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>

map <Leader> <Plug>(easymotion-prefix)
