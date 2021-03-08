filetype plugin indent on
colorscheme monokai
set number
set ignorecase
set incsearch
set hlsearch
set showcmd
set hidden


" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line


" Specific configs based on file type
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2
autocmd Filetype html setlocal tabstop=2 shiftwidth=2


au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
au VimLeavePre * if v:this_session != '' | exec "mks! " . v:this_session | endif


let NERDTreeWinSize = 30
nmap <F6> :NERDTreeToggle<CR>

" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>
