set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

""""""""""""""""""""""""""""""
" $B%W%i%0%$%s$N%;%C%H%"%C%W(B
""""""""""""""""""""""""""""""
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})

call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('w0rp/ale')
call dein#add('vim-airline/vim-airline')
call dein#add('Shougo/deoplete.nvim')
call dein#add('sheerun/vim-polyglot')
call dein#add('jiangmiao/auto-pairs')
call dein#add('elzr/vim-json')
call dein#add('tpope/vim-haml')
call dein#add('vim-ruby/vim-ruby')
call dein#add('othree/html5.vim')
call dein#add('pangloss/vim-javascript')
call dein#add('fatih/vim-go')
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')

call dein#end()

" $B$b$7!"L$%$%s%9%H!<%k$b$N$b$N$,$"$C$?$i%$%s%9%H!<%k(B
if dein#check_install()
  call dein#install()
endif

" Required:
filetype plugin indent on
""""""""""""""""""""""""""""""

"#####$B4pK\@_Dj(B#####
syntax on  "$B%7%s%?%C%/%9%O%$%i%$%H$rM-8z$K$9$k(B
colorscheme slate
set number
