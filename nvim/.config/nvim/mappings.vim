" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.


nnoremap <C-f> :NvimTreeToggle<CR>

nnoremap <A-u> :UndotreeToggle<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>

let mapleader = " "

" Shortcutting split navigation"
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l




" Navigation while in insert mode
inoremap <C-h> <Left>
inoremap <C-l> <Right>
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>


" Better tabbing
vnoremap < <gv
vnoremap > >gv

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Commenting
xmap <C-c> <Plug>Commentary
nmap <C-c> <Plug>Commentary
omap <C-c> <Plug>Commentary
nmap <C-c> <Plug>CommentaryLine

inoremap <silent><expr> <C-Space> compe#complete()

" With this you can enter ":Config" in normal mode and enter the vimrc
command! Config execute ":e $HOME/.config/nvim/init.vim"

"
" Easymotion writting in lua, with single or multi character hop
map s <cmd>HopChar2<CR>

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
nnoremap <silent><F13> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <silent><F14> :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <silent><F15> :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <silent><F16> :lua require("harpoon.ui").nav_file(4)<CR>


imap <silent><script><expr> <leader><leader> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

imap <Up> <Plug>(copilot-next)
imap <Down> <Plug>(copilot-previous)


