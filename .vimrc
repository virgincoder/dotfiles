" General

syntax on " Syntax Highlight
colorscheme darkblue " Same like clouddesktop
set hlsearch "Highlight Search
set incsearch "incremental search
imap jj <esc>

set number " Line number
" leader
let mapleader = ","
map <Leader>n :call SmartNERDToggle()<CR>
map <Leader>t :TagbarToggle<CR> 
map <Leader>p :pastetoggle

" The buffer names should just show filename
let g:airline#extensions#tabline#fnamemod = ':t'

" This section is for saving files in one keystrokes 
" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon
" Restore default behaviour when leaving Vim.
autocmd VimLeave * silent !stty ixon
map <C-s> :w <CR> :echo "Saved" <CR>
imap <C-s> <Esc> :w <CR> :echo "Saved" <CR>

 
" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'lifepillar/vim-solarized8'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'terryma/vim-multiple-cursors'
call vundle#end()            " required
filetype plugin indent on    " required

" vim-airline theme
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_skip_empty_sections = 1

" Functions
function! SmartNERDToggle()
    if exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1
	NERDTreeToggle
    else
        NERDTreeFind
    endif
endfunction
