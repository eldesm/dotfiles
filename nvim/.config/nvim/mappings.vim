" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

nnoremap <A-f> :NERDTreeToggle<CR>
nnoremap <A-u> :UndotreeToggle<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>

let mapleader = " "

" Shortcutting split navigation"
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Commenting
nmap <C-c> :CommentToggle<CR>
xmap <C-c> :CommentToggle<CR>

inoremap <silent><expr> <C-Space> compe#complete()

" With this you can enter ":Config" in normal mode and enter the vimrc
command! Config execute ":e $HOME/workspace/nvim/init.vim"

"
" Easymotion writting in lua, with single or multi character hop
 map s :HopChar2<CR>
 map s<Space> :HopChar1<CR>

 " Shift + j/k moves selected bloc down/up in visual mode
vnoremap <silent> <S-k> :MoveBlock(-1)<CR>
vnoremap <silent> <S-j> :MoveBlock(1)<CR>

 " Shift + j/k moves selected line down/up in normal mode
nnoremap <silent> <S-k> :MoveLine(-1)<CR>
nnoremap <silent> <S-j> :MoveLine(1)<CR>

" Keeping it centered while searching
nnoremap N Nzzzv
nnoremap n nzzzv

" Harpoon for navigation between files
nnoremap <silent><leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <silent><C-e> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <silent><F1> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <silent><F2> :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <silent><F3> :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <silent><F4> :lua require("harpoon.ui").nav_file(4)<CR>
