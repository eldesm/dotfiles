require("nvim-treesitter.install").prefer_git = true
require'nvim-treesitter.configs'.setup{
  ensure_installed = { "c", "lua", "python" },
  highlight={enable=true}
}
