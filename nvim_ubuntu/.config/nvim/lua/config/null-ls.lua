require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.black,
        -- require("null-ls").builtins.formatting.lua_format,
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
