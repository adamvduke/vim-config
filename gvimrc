" CtrlP OS-X Menu remapping
if has("gui_macvim")
  set guioptions=egmrt
  macmenu &File.New\ Tab key=<D-S-t>
  set guifont=Menlo\ for\ Powerline:h14
endif

map <D-Down> <C-W><Down>
map <D-Up> <C-W><Up>
map <D-Left> <C-W><Left>
map <D-Right> <C-W><Right>
map <D-/> <plug>NERDCommenterToggle
map <D-t> :tabnew<CR>
