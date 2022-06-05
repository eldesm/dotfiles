-- A blazing fast and easy to configure Neovim statusline written in Lua.
require('lualine').setup{
    options = {
        icons_enabled = false,
        theme = 'auto'
      },
}



-- For hopping arround to single or double characters with s
require'hop'.setup{
    char2_fallback_key =  "<space>",

}

-- A neovim plugin to persist and toggle multiple terminals during an editing session
require("toggleterm").setup( {
    open_mapping = [[<c-t>]],
    direction = "float",
    terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
})


require'colorizer'.setup()



-- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua. 
require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.formatting.prettier,
        require("null-ls").builtins.formatting.clang_format,
    },

    -- for autoformat on savevim.lsp.buf
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]])
        end
    end,
})




vim.opt.list = true
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    show_end_of_line = true,
}


require('nvim-autopairs').setup{}

-- require'nvim-treesitter.configs'.setup {
--   -- One of "all", "maintained" (parsers with maintainers), or a list of languages
--   ensure_installed = "maintained",

--   -- Install languages synchronously (only applied to `ensure_installed`)
--   sync_install = false,

--   -- List of parsers to ignore installing
--   ignore_install = { "javascript" },

--   highlight = {
--     -- `false` will disable the whole extension
--     enable = true,

--     -- list of language that will be disabled
--     -- disable = { "c", "rust" },

--     -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
--     -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
--     -- Using this option may slow down your editor, and you may see some duplicate highlights.
--     -- Instead of true it can also be a list of languages
--     additional_vim_regex_highlighting = false,
--   },
-- }
