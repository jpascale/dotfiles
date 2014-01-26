" Vundle definitions

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.dotfiles/dependencies/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-abolish'
Bundle 'thoughtbot/vim-rspec'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'edsono/vim-matchit'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'airblade/vim-gitgutter'
Bundle 'godlygeek/tabular'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdcommenter'

filetype plugin indent on

" ================================ END






" --- Tips

" http://www.bestofvim.com/tip/leave-ex-mode-good/
nnoremap Q <nop>
" http://www.bestofvim.com/tip/switch-off-current-search/
nnoremap <silent> <Leader>/ :nohlsearch<CR>
" http://www.bestofvim.com/tip/auto-reload-your-vimrc/
augroup reload_vimrc " {
	    autocmd!
	    autocmd BufWritePost $MYVIMRC source $MYVIMRC
	augroup END " }

" --- From vim-get

if has('autocmd')
  augroup buffer_filetype_autocmds
    au!
    autocmd FileType html let g:html_indent_strict=1
    autocmd BufEnter {Gemfile,Rakefile,Guardfile,Capfile,Vagrantfile,Thorfile,config.ru} setfiletype ruby
    autocmd BufEnter *.j setfiletype objc
    autocmd BufEnter *.md setfiletype markdown
    autocmd BufEnter *.yml.sample setfiletype yaml
    autocmd BufLeave,FocusLost ?* nested :wa
    autocmd BufReadPost #* set bufhidden=delete
  augroup END
endif

set nobackup
set nowb
set noswapfile

" Better Completion
set completeopt=menu,longest,preview

" Toggle paste
set pastetoggle=<F8>

set autoindent " Automatically set the indent of a new line (local to buffer)
set smartindent " smartindent  (local to buffer)
set sidescrolloff=2
set numberwidth=4
filetype plugin on

" Searching *******************************************************************
set hlsearch " highlight search
set incsearch " incremental search, search as you type
set ignorecase " Ignore case when searching
set smartcase " Ignore case when searching lowercase

" Status Line *****************************************************************
set showcmd
set ruler " Show ruler
set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%d/%m/%Y-%H:%M\")}\%=\ %l:%c%V\ %L\ %P
set laststatus=2

" Line Wrapping ***************************************************************
set nowrap
set linebreak " Wrap at word

" Git Gutter ******************************************************************
if has('autocmd')
  augroup gitgutter_cmds
    au!
    autocmd BufReadPost ?* GitGutterAll
    autocmd FocusLost ?* GitGutterAll
  augroup END
endif

" Bindings
imap jj <Esc>

" File stuff

if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
			\| exe "normal g'\"" | endif
endif

autocmd FileType html set filetype=xhtml " we couldn't care less about html


""" My custom settings

let mapleader = ","
set noswapfile
set encoding=utf-8
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
imap <tab> <c-x><c-o>
runtime macros/matchit.vim

set omnifunc=rubycomplete#Complete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global=1
let g:rubycomplete_rails = 1

" --- CtrlP
let g:ctrlp_cmd = 'CtrlPMixed'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" --- Color & maus
set number
set mouse=a
syntax enable
let g:solarized_termtrans = 1
let g:solarized_termcolors=16
colorscheme solarized
set background=dark

" --- Git shortcuts
nnoremap <silent> <leader>gd :Gdiff<cr>
nnoremap <silent> <leader>gs :Gstatus<cr>
nnoremap <silent> <leader>gw :Gwrite<cr>
nnoremap <silent> <leader>gb :Gblame<cr>
nnoremap <silent> <leader>gci :Gcommit<cr>
nnoremap <silent> <leader>gm :Gmove<cr>
nnoremap <silent> <leader>gr :Gremove<cr>
nnoremap <silent> <leader>gl :Glog<cr>

" --- Testing shortcuts
let g:rspec_command = "!zeus rspec --color --format nested {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" --- Misc shortcuts
nnoremap <c-f> :CtrlPTag<CR><CR>
nnoremap <c-o> :CtrlPBufTag<CR><CR>
vmap <C-c> :w !pbcopy<CR><CR>
nnoremap <leader>' :exec &nu==&rnu? "se nu!" : "se rnu!"<CR><CR>
