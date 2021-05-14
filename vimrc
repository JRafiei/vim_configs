filetype plugin indent on
colorscheme monokai
packadd! matchit

set number
set ignorecase
set incsearch
set hlsearch
set showcmd
set hidden
set rtp+=/usr/bin/fzf


" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=5        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line


" Specific configs based on file type
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 fileformat=unix 
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 fileformat=unix
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 fileformat=unix


au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
au VimLeavePre * if v:this_session != '' | exec "mks! " . v:this_session | endif


" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>


" ALE configs
let g:ale_linters = {'python': ['flake8', 'pyls']}
let g:ale_linters_ignore = {'python': ['pyls']}
let g:ale_completion_enabled=1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
set omnifunc=ale#completion#OmniFunc
map <F12> :ALEGoToDefinition<CR>


let g:python_highlight_all = 1
" let g:jedi#popup_on_dot = 0
" let g:jedi#show_call_signatures = "1"
let g:user_emmet_leader_key=','
let g:airline_powerline_fonts = 1


" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

