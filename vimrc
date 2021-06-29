" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below. This line should not be removed as it ensures that
" various options are properly set to work with the Vim-related packages.
runtime! archlinux.vim

filetype indent on
" filetype plugin on
syntax on

colorscheme desert

set expandtab
set wildmode=longest,full
set modeline
set cursorline
set nowrap
set viminfo="/dev/null"
set ignorecase smartcase
" set title
set laststatus=2

" Use CTRL-C instead of ESC to work properly in command-line mode
noremap fd <C-c>
noremap! fd <C-c>

let mapleader = " "
nnoremap <leader>r <C-r>

nnoremap <Leader>s :SemanticHighlightToggle<cr>

" ======== Auto-save ========

" StdinReadPre
"autocmd BufRead <buffer> if &readonly | set nomodifiable | endif 
"autocmd TextChanged,TextChangedI ?* silent write
cnoremap q x

" ========== Netrw ==========

let g:netrw_home="/dev/null"
let g:netrw_dirhistmax=0

" let g:netrw_browse_split=2
let g:netrw_altv=1      " split to the right
let g:netrw_liststyle=3 " tree

" use x     instead of enter
" use enter instead of L
" use mf    instead of space

" ======== Paragraphs ========

function ToggleFO()
  if &formatoptions =~ "a"
    echo "format off"
    set formatoptions-=a
  else
    echo "format on"
    set formatoptions+=a
  endif
endfunction

nnoremap <leader>f :call ToggleFO()<CR>

" ======== Clipboard ========

nnoremap <leader>y :silent . w !xsel -i
nnoremap <leader>p :r !xsel -o

" If I copy visually above will fail
" Note that registers in VI and ex are called buffers
" Need to work with the unnamed, star and, plus registers

" Would be great if the registers were files
" Then could use entr/inotify with xsel on unnamed register
" Some more critisism of vim's registers:
" http://vimcasts.org/blog/2013/11/registers-the-good-the-bad-and-the-ugly-parts/

xnoremap <leader>y :<C-u>silent '<,'> w !xsel -i

" ===== Web developement =====

let g:html_indent_script1 = "inc"
let g:html_indent_style1  = "inc"
let g:html_indent_inctags = "html,body,head"

" html:
" :!surf %
"
" markdown:
" :!markdown % > %.html; surf %.html

nnoremap <leader>m :! ~/markdown-view.sh "%" &<CR>

" plasticboy/vim-markdown is completely unnecessary
let g:markdown_fenced_languages = [ 'html', 'python', 'bash=sh', 'sh', 'perl', 'ocaml', 'haskell', 'c', 'clojure', 'json', 'javascript', 'yaml', 'sql', 'lisp', 'julia', 'sed', 'rebol', 'lua', 'factor', 'apl', 'vim', 'yacc' ]
