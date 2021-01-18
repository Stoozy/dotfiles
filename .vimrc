call plug#begin('~/.vim/plugged')

" Discord RPC
Plug 'Stoozy/vimcord'

" Writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" File search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" File tree 
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'

" Indent
Plug 'Yggdroot/indentLine'

" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

call plug#end()


" theme
syntax on
colorscheme peachpuff 

set rnu
set ma

set tabstop=4
set shiftwidth=4
set expandtab
set t_RV=

let g:airline_theme='wombat'

let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:livepreview_engine = 'latexmk'
let g:livepreview_previewer = 'mupdf'

" keymaps
map <C-n> :NERDTreeToggle <CR>
map <C-f> :Files  <CR>
map <C-S-s> :Ag   <CR> 
map <C-t> :term <CR>
map <C-p> :!pdflatex  % <CR> <CR> <CR>


func! WordProcessor()
  " movement changes
  map j gj
  map k gk
  " formatting text
  setlocal formatoptions=1
  setlocal noexpandtab
  setlocal wrap
  setlocal linebreak
  " spelling and thesaurus
  setlocal spell spelllang=en_us
  set thesaurus+=/home/test/.vim/thesaurus/mthesaur.txt
  " complete+=s makes autocompletion search the thesaurus
  set complete+=s
endfu
com! WP call WordProcessor()


func! CompleteTags()
  inoremap <buffer> > ></<C-x><C-o><Esc>:startinsert!<CR><C-O>?</<CR>
  inoremap <buffer> ><Leader> >
  inoremap <buffer> ><CR> ></<C-x><C-o><Esc>:startinsert!<CR><C-O>?</<CR><CR><Tab><CR><Up><C-O>$
endfu
com! CT call CompleteTags();


if has('gui_running')
    "set background=light
endif

