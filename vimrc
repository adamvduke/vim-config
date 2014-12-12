call pathogen#infect()
filetype plugin indent on

let g:solarized_termcolors=256

colorscheme Tomorrow-Night-Eighties

let g:Powerline_symbols = 'fancy'

if has("autocmd")
  " In Makefiles, use real tabs, not tabs expanded to spaces
  au FileType make set noexpandtab
  au BufNewFile,BufRead *.json set ft=javascript
  " Remember last location in file, but not for commit messages.
  " see :help last-position-jump
  au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g`\"" | endif
endif

map <Leader>n <plug>NERDTreeTabsToggle<CR>
map <C-t> :CtrlP<CR>
set autoread

" share a single NERDTree between buffers and tabs
 if argc() == 0
   autocmd VimEnter * NERDTree
   autocmd BufEnter * NERDTreeMirror
 end

" close NERDTree if it's the last window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
