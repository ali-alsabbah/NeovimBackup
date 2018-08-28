" auto-install vim-plug and plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'ncm2/ncm2'
Plug 'rakr/vim-one'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'roxma/nvim-yarp'
Plug 'itchyny/lightline.vim'
" Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'w0rp/ale'
Plug 'Yggdroot/indentline'

" ncm2 autocomplete plugins
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-pyclang'
Plug 'ncm2/ncm2-tern'
Plug 'ncm2/ncm2-cssomni'
Plug 'ncm2/ncm2-html-subscope'
Plug 'ncm2/ncm2-bufword'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ryanolsonx/vim-lsp-python'
Plug 'ncm2/ncm2-vim-lsp'

" ultisnip dependencies
Plug 'ncm2/ncm2-ultisnips'
Plug 'SirVer/ultisnips'

" snipmate dependencies
Plug 'ncm2/ncm2-snipmate'
Plug 'tomtom/tlib_vim'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'

Plug 'ncm2/ncm2-match-highlight'

" themes
Plug 'phanviet/Sidonia'
Plug 'kaicataldo/material.vim'
Plug 'Siphalor/vim-atomified'
Plug 'vim-scripts/Fruidle'
Plug 'treycucco/vim-monotonic'
Plug 'fxn/vim-monochrome'
Plug 'fxn/vim-monochrome'
Plug 'Lokaltog/vim-monotone'
Plug 'vim-scripts/true-monochrome'

call plug#end()

" match-highlight config

let g:ncm2#match_highlight = 'bold'
let g:ncm2#match_highlight = 'sans-serif'
let g:ncm2#match_highlight = 'sans-serif-bold'
let g:ncm2#match_highlight = 'mono-space'

" default
let g:ncm2#match_highlight = 'double-struck'

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANTE: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone
set termguicolors
set number
set expandtab
set shiftwidth=4

" Makefile
set makeprg=gcc\ \ %

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0

" Clang
let g:ncm2_pyclang#library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/'

" Lightline config:
let g:lightline = {'colorscheme':'jellybeans'}
set noshowmode

set colorcolumn=72

set clipboard=unnamed

set background=dark
colorscheme monotone
