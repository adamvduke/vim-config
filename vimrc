call pathogen#infect()
filetype plugin indent on

colorscheme solarized
let g:solarized_termcolors=256
if has('gui_running')
  set background=dark
else
  set background=light
endif

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
