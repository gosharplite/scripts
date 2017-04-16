"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/tony/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/tony/.local/share/dein')
  call dein#begin('/home/tony/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/tony/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  call dein#add('fatih/molokai')

  call dein#add('fatih/vim-go')

  call dein#add('scrooloose/nerdtree.git')

  call dein#add('majutsushi/tagbar')

  call dein#add('mileszs/ack.vim')

  call dein#add('scrooloose/nerdcommenter')

  call dein#add('Shougo/deoplete.nvim')

  call dein#add('zchee/deoplete-go', {'build': 'make'})

  call dein#add('vim-airline/vim-airline')

  call dein#add('vim-airline/vim-airline-themes')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
"syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

set mouse=a

colorscheme molokai

syntax off
set nohlsearch

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <Leader>d <Plug>(go-def)

map <C-n> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

nnoremap <F2> :set nonumber!<CR>

:nnoremap <C-p> :bprevious<CR>

:map <F3> :set hlsearch!<CR>

:map <F5> :setlocal spell! spelllang=en_us<CR>
:inoremap <F5> <C-\><C-O>:setlocal spelllang=en_us spell! spell?<CR>

set completeopt+=noinsert
set completeopt+=noselect
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#align_class = 1
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#package_dot = 1

"set splitbelow
set completeopt-=preview

let g:airline#extensions#tabline#enabled = 1
" set laststatus=2
" let g:airline_powerline_fonts = 1
