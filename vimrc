" The basics
filetype indent on
filetype plugin on
syntax on
set ruler
set modelines=1
set backspace=2
set hlsearch
set smartcase
set smarttab
set expandtab

" Git shortcuts
map \D :w<CR>:!git diff --cached %<CR>
map \d :w<CR>:!git diff %<CR>
map \s :!git status<CR>
map \m :w<CR>:make<CR>
map \c :w<CR>:!git add %<CR>:!git commit -s<CR>
map \C :wall<CR>:!git commit -a -s<CR>

" Other shortcuts
map \h :nohlsearch<CR>

" Disable some installed plugins
let g:acp_enableAtStartup = 0
let g:showmarks_enable = 0
