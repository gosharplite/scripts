"NeoBundle Scripts-----------------------------
if has('vim_starting')
  " Required:
  set runtimepath+=/home/tony/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/tony/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
" NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'gregsexton/gitv'
" NeoBundle 'airblade/vim-gitgutter'
" NeoBundle 'ctrlpvim/ctrlp.vim'
" NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'fatih/molokai'

NeoBundle 'fatih/vim-go'
NeoBundle 'garyburd/go-explorer'

NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'zchee/deoplete-go', {'build': {'unix': 'make'}}

NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'scrooloose/nerdtree.git'
NeoBundle 'majutsushi/tagbar'

NeoBundle 'mileszs/ack.vim'

NeoBundle 'scrooloose/nerdcommenter'

NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

" You can specify revision/branch/tag.
" NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" set mouse=r

:map <F5> :setlocal spell! spelllang=en_us<CR>
:inoremap <F5> <C-\><C-O>:setlocal spelllang=en_us spell! spell?<CR>

let g:airline#extensions#tabline#enabled = 1
" set laststatus=2
let g:airline_powerline_fonts = 1

colorscheme molokai
" set number

syntax off
set nohlsearch
set t_Co=0

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

" au FileType go nmap <leader>rt <Plug>(go-run-tab)
" au FileType go nmap <Leader>rs <Plug>(go-run-split)
" au FileType go nmap <Leader>rv <Plug>(go-run-vertical)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <Leader>s <Plug>(go-implements)

au FileType go nmap <Leader>i <Plug>(go-info)

au FileType go nmap <Leader>e <Plug>(go-rename)<Paste>

" deoplete start --------------------
set completeopt+=noinsert
set completeopt+=noselect

let g:deoplete#enable_at_startup = 1

let g:deoplete#sources#go#align_class = 1
let g:deoplete#sources#go#gocode_binary = '/home/tony/go/gopath/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#package_dot = 1
" deoplete end --------------------

" neosnippet start --------------------
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
   set conceallevel=2 concealcursor=niv
endif
" neosnippet end --------------------

nmap <F8> :TagbarToggle<CR>

map <C-n> :NERDTreeToggle<CR>

nnoremap <F2> :set nonumber!<CR>

:nnoremap <C-p> :bprevious<CR>
