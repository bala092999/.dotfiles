if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.config/nvim/dein')

  call dein#add('jiangmiao/auto-pairs') 
  call dein#add('neomake/neomake')
  call dein#add('mattn/emmet-vim')
  "Themes

  call dein#add('liuchengxu/space-vim-dark')
  call dein#add('joshdick/onedark.vim')
  call dein#add('morhetz/gruvbox')
  call dein#add('jacoborus/tender.vim')
  call dein#add('sheerun/vim-polyglot')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  "Fila-for directoory
  call dein#add('preservim/nerdtree')  
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('davidhalter/jedi-vim')
  call dein#end()
  call dein#save_state()
endif
"call neomake#configure#automake('nrwi', 500)
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
