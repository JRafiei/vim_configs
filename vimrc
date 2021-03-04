filetype plugin indent on
set number
set ignorecase
set incsearch
set showcmd
set hidden

colorscheme monokai

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


" Specific configs based on file type
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2
autocmd Filetype html setlocal tabstop=2 shiftwidth=2

let NERDTreeWinSize = 30
nmap <F6> :NERDTreeToggle<CR>
inoremap <c-@> <c-n>

au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

