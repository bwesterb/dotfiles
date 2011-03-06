let g:acp_enableAtStartup = 0
let g:showmarks_enable = 0
filetype indent on
filetype plugin on
set ruler
set modelines=1
set backspace=2
set hlsearch
set ignorecase
set smartcase
set smarttab
set expandtab
syntax on
map \D :w<CR>:!git diff --cached %<CR>
map \d :w<CR>:!git diff %<CR>
map \s :!git status<CR>
map \m :w<CR>:make<CR>
map \c :w<CR>:!git add %<CR>:!git commit -s<CR>
map \C :wall<CR>:!git commit -a -s<CR>
map \h :nohlsearch<CR>
