filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set nu
filetype off

let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized
set t_ut=

setlocal foldmethod=indent
setlocal foldignore=
set foldlevelstart=1
set complete-=i

highlight ColorColumn ctermbg=magenta "set to whatever you like
call matchadd('ColorColumn', '\%81v', 100) "set column nr

let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->', '::'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

let g:better_whitespace_filetypes_blacklist+=['.txt', '.json', '.xml']

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
"
Plugin 'file:///home/pverma/.vim/bundle/vim-fugitive'
Plugin 'file:///home/pverma/.vim/bundle/vim-better-whitespace'
Plugin 'file:///home/pverma/.vim/bundle/YouCompleteMe/'
Plugin 'file:///home/pverma/.vim/bundle/tabular'
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
