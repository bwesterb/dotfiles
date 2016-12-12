" The basics
filetype indent on
filetype plugin on
syntax on
set ruler
set modeline
set modelines=2
set backspace=2
set hlsearch
set smartcase
set smarttab
set expandtab

if exists('+colorcolumn')
        set colorcolumn=81
else
        autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Git shortcuts
map \D :w<CR>:!git diff --cached %<CR>
map \d :w<CR>:!git diff %<CR>
map \s :!git status<CR>
map \m :w<CR>:make<CR>
map \c :w<CR>:!git add %<CR>:!git commit<CR>
map \C :wall<CR>:!git commit -a<CR>

" Other shortcuts
map \h :nohlsearch<CR>

" Disable some installed plugins
let g:acp_enableAtStartup = 0
let g:showmarks_enable = 0

se sw=4
se ts=4
se et
