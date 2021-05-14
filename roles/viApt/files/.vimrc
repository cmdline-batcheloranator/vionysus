execute pathogen#infect()

inoremap jj <Esc>>
set ai
set ruler
set number
set hlsearch
set t_co=256
set showmode
set showmatch
set background=dark

colorscheme PaperColor

let g:tagbar_width=17
let g:NERDTreeWinSize=17 

highlight LineNr ctermfg=blue

autocmd vimenter * NERDTree
autocmd vimenter * Tagbar

let g:syntastic_yaml_checkers = ['yamllint']
