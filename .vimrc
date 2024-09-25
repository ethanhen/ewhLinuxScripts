call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'dense-analysis/ale'

inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

call plug#end()

imap jj <Esc>

set number
