let mapleader = " "
set number

" == windows movement
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" == command line mode
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" buffer list
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" == plug manager
call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/deoplete.nvim'
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'zchee/deoplete-jedi'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf.vim'
call plug#end()

" == go
let g:go_fmt_command = "goimports"

" == deoplete
let g:deoplete#enable_at_startup = 1

" == EasyMotion
let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-overwin-f)
nmap <Leader>L <Plug>(easymotion-overwin-line)
let g:EasyMotion_smartcase = 1
