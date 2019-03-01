" Highlight redundant whitespaces
highlight RedundantWhitespace ctermbg=red guibg=red
match RedundantWhitespace /\s\+$\| \+\ze\t/

" Highlight characters that go over 80 columns
highlight OverflowEighty ctermbg=NONE ctermfg=NONE cterm=bold
2match OverflowEighty /\%81v.\+/

" Syntax Highlighting on
filetype plugin on
syntax on

" Tabs are 8 columns wide. linux kenel style
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab

" Show line number
set number

" space for noh
nnoremap <silent> <space> :noh<cr>

" Package manager kinda thingy
execute pathogen#infect()

" NERDTree stuff
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map \| :NERDTreeToggle<CR>
" For mac delete key to work
set backspace=indent,eol,start
set hlsearch
