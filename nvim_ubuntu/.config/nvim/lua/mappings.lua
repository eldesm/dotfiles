vim.keymap.set('n', 'Q', '<Nop>')

vim.g.mapleader = " "

vim.keymap.set('n', '<C-f>', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')


-- Escape is too far away
vim.keymap.set('i', 'kj', '<Esc>')
vim.keymap.set('i', 'jk', '<Esc>')


-- Shortcutting split navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')


-- Moving lines with Shift + j/k
vim.keymap.set('n', '<S-k>', ':MoveLine(-1)<CR>') 
vim.keymap.set('n', '<S-j>', ':MoveLine(1)<CR>') 
vim.keymap.set('v', '<S-k>', ':MoveBlock(-1)<CR>') 
vim.keymap.set('v', '<S-j>', ':MoveBlock(1)<CR>') 



-- Delete shouldn't mean cut
vim.keymap.set('n', 'd', '"_d')
vim.keymap.set('n', 'dd', '"_dd')
vim.keymap.set('n', 'c', '"_c')
vim.keymap.set('n', 'x', '"_x')


-- Harpoon for navigation between files
vim.keymap.set('n', '<leader>a', ':lua require("harpoon.mark").add_file()<CR>')
vim.keymap.set('n', '<C-e>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
vim.keymap.set('n', '<F13>', ':lua require("harpoon.ui").nav_file(1)<CR>')
vim.keymap.set('n', '<F14>', ':lua require("harpoon.ui").nav_file(2)<CR>')
vim.keymap.set('n', '<F15>', ':lua require("harpoon.ui").nav_file(3)<CR>')
vim.keymap.set('n', '<F16>', ':lua require("harpoon.ui").nav_file(4)<CR>')


-- Keeping it centered while searching
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', 'n', 'nzzzv')


-- 2 character hoppin: 
vim.keymap.set('n', 's', '<cmd>HopChar2<CR>')

-- Commenting
vim.keymap.set('n', '<C-c>', '<Plug>(comment_toggle_linewise_current)')
vim.keymap.set('v', '<C-c>', '<Plug>(comment_toggle_linewise_visual)')


-- Git Fugitive


-- nmap <leader>gs :G<CR>
-- nnoremap <leader>gd :Gvdiff<CR>
-- nnoremap <leader>gf :diffget //2<CR>
-- nnoremap <leader>gj :diffget //3<CR>
-- Rewritten in lua
vim.keymap.set('n', '<leader>gs', ':G<CR>')
