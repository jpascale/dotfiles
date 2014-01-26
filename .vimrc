" Vundle definitions

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.dotfiles/dependencies/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-surround'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'kien/ctrlp.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdtree'

filetype plugin indent on

" ================================ END





" My custom settings

let mapleader = ","


" --- CtrlP
let g:ctrlp_cmd = 'CtrlPMixed'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

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


" http://www.bestofvim.com/tip/trailing-whitespace/
" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()


set number

nnoremap <silent> <Leader>df :Gdiff<CR>
