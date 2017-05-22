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

  call dein#add('AndrewRadev/splitjoin.vim')

  call dein#add('SirVer/ultisnips')

  call dein#add('ctrlpvim/ctrlp.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

set mouse=a

let mapleader = ","

let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

set nohlsearch

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

au FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

set autowrite

map <C-n> :NERDTreeToggle<CR>

:nnoremap bn :bprevious<CR>

nnoremap <F2> :set nonumber!<CR>

nnoremap <F3> :set rnu!<CR>

:map <F4> :set hlsearch!<CR>

:map <F5> :setlocal spell! spelllang=en_us<CR>
:inoremap <F5> <C-\><C-O>:setlocal spelllang=en_us spell! spell?<CR>

:map <F7> :if exists("g:syntax_on") <Bar>
	\   syntax off <Bar>
	\ else <Bar>
	\   syntax enable <Bar>
	\ endif <CR>

nmap <F8> :TagbarToggle<CR>

set completeopt+=noinsert
set completeopt+=noselect
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#align_class = 1
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#package_dot = 1

"set splitbelow
set completeopt-=preview

let g:airline#extensions#tabline#enabled = 1

"let g:go_auto_sameids = 1

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<CR>

" inoremap jk <ESC>
