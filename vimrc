syntax enable "this enables sintax processing
filetype plugin indent on

"remap save on ctrl+s
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>
nnoremap <C-q> :q<CR>
inoremap <C-q> <Esc>:q<CR>

"windows auto resize as equal size
autocmd VimResized * wincmd =

"o on line with comment won't generate a commented line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"==============SET=====================
set softtabstop=4
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set foldmethod=indent
set foldnestmax=1
set foldlevel=1
set nofoldenable
set number
set showcmd
set wildmenu
set incsearch
set hlsearch
set laststatus=2 "always display statusline
set splitright
set mouse=a "adds mouse click
set noshowmode
set ttimeoutlen=100
set encoding=UTF-8
set cursorline 
set relativenumber
set nopaste

"removes numbers from terminal
autocmd TermOpen * setlocal nonumber norelativenumber

"allow esc on terminal window
tnoremap <Esc> <C-\><C-n>
tnoremap <C-q> <C-\><C-n>:q<CR>


"move easily between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"trying to learn those fucking hjkl
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>i

"=======START VIM-PLUG SECTION=======
call plug#begin('~/.vim/plugged')
"======THEMES========================
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim' "dark theme for vim
call plug#end()

"opens nerdtree
map <C-f> :NERDTreeFind<CR>
"removes ? help on nerdtree
let NERDTreeMinimalUI = 1

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
let g:airline_theme='onedark'


"FZF settings
nnoremap <C-p> :Files<CR>
nnoremap <C-a> :Rg<CR>
nnoremap <leader>b :Buffers<CR>
let g:fzf_layout = { 'down': '~30%' }
nnoremap <silent> <leader>h :History<CR>

autocmd! FileType fzf 
autocmd  FileType fzf set laststatus=0 noshowmode noruler
            \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

if has('nvim')
    aug fzf_setup
        au!
        au TermOpen term://*FZF tnoremap <silent> <buffer> <esc> <c-c>
    aug END
end
