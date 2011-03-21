  set   nocompatible
  set   autowrite
  set   background=dark
"  set  nobackup
  set   backspace=2
  set   noerrorbells
  set   esckeys
  set   hidden
  set   highlight=8r,db,es,hs,mb,Mr,nu,rs,sr,tb,vr,ws
"       leaves the highlighting on from a previous search
"  set   hlsearch
"       moves incrementally as i finish my search keyword
  set   incsearch
  set   ignorecase
  set   joinspaces
  set   magic
"  set   modelines=1    default is 5
  set   ruler
  set   shiftwidth=4
  set   showcmd
  set   showmatch
  set   showmode
  set   nostartofline
  set   tabstop=4
  set   textwidth=78
  set   visualbell t_vb=
"       much more precise without these.  only practical in a few situations, so
"       leave it here for easy editing
  set   whichwrap=b,s,h,l,<,>,[,]
  "set  nowrapscan
  set   nowritebackup
  set   noexpandtab
" autocmd!

filetype plugin on
filetype indent on
set autoread

set wildmenu "Turn on WiLd menu
set wildmode=list:longest,full

set hid "Change buffer - without saving
set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros 

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

autocmd FileType scala,c,cpp,java,perl,yml set ts=4 formatoptions=cro cindent smarttab tw=0 nowrap sidescroll=20 listchars=extends:$ expandtab
autocmd FileType php,perl set ts=4 formatoptions=cro smartindent smarttab tw=0 nowrap sidescroll=20 listchars=extends:$ noexpandtab
nmap <tab> =0<CR>
autocmd FileType python let python_highlight_all = 1
autocmd FileType c,cpp nmap <C-n> i#include <iostream.h><Return><Return>int main(int argc, char **argv)<return>{<return><return>}<up><tab>
autocmd FileType mail set tw=72 nowrap

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class


" What to use for an indent.
" This will affect Ctrl-T and 'autoindent'.
" Python: 4 spaces
" C: tabs (pre-existing files) or 4 spaces (new files)
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab smarttab
"fu Select_c_style()
"    if search('^\t', 'n', 150)
"        set shiftwidth=8
"        set noexpandtab
"    el
"        set shiftwidth=4
"        set expandtab
"    en
"endf

if has("syntax")
"        so $VIM/vim58/syntax/syntax.vim
        syntax on
"       hi! Comment  term=bold  ctermfg=cyan  guifg=Blue
endif
if &term=="rxvt"
        set t_Co=8
        set t_Sf=^[[3%dm
        set t_Sb=^[[4%dm
endif

