local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()
-- lsp.nvim_workspace()

-- require'lspconfig'.pyright.setup{
--   root_dir = function() return vim.loop.cwd() end
-- }
