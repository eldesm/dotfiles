local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- expects the name of the config file
local function get_config(name)
  return string.format('require("config/%s")', name)
end

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
	use({ "wbthomason/packer.nvim"}) -- Have packer manage itself

  use {'nvim-lualine/lualine.nvim', config = get_config("lualine")}


	--  Retro groove color scheme for Vim
	use { "ellisonleao/gruvbox.nvim" }

	-- A File Explorer For Neovim Written In Lua
	use({ "kyazdani42/nvim-tree.lua", config = get_config("nvim-tree") })

  --  Find, Filter, Preview, Pick. All lua, all the time. 
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Getting you where you want with the fewest keystrokes
  use {
  'ThePrimeagen/harpoon', 
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- For hopping arround to single or double characters with s
  use {
  'phaazon/hop.nvim',
  branch = 'v2', -- optional but strongly recommended
  config = get_config("hop")
  }


  -- Needed for commenting
  use {
    'numToStr/Comment.nvim',
    config = get_config("comment")
  }

  -- Gain the power to move lines and blocks!
  use 'fedepujol/move.nvim'


  -- Your AI pair programmer
  use { 'github/copilot.vim' }

  -- Vim fugitive
  use { 'tpope/vim-fugitive', }

  -- Formatter
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }, 
    config = get_config("null-ls") 
  }

  -- Automatically downloads all kinds of lsp crap
  use { "williamboman/mason.nvim",
    config = get_config("mason")
  }

  use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = get_config("toggleterm")}

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
