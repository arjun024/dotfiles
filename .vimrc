" Highlight redundant whitespaces
highlight RedundantWhitespace ctermbg=red guibg=red
match RedundantWhitespace /\s\+$\| \+\ze\t/

" Highlight characters that go over 80 columns
highlight OverflowEighty ctermbg=NONE ctermfg=NONE cterm=bold
2match OverflowEighty /\%81v.\+/

" Syntax Highlighting on
syntax on

" Tabs are 8 columns wide. linux kenel style
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab

" Show line number
set number

