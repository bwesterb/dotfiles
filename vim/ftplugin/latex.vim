map \t :w<CR>:!pdflatex "%"<CR>
map \T :w<CR>:!pdflatex "%"<CR>:!open "`basename "%" .tex`.pdf"<CR>
