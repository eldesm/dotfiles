call plug#begin()

" A blazing fast and easy to configure Neovim statusline written in Lua.
Plug 'nvim-lualine/lualine.nvim'

" Best colorscheme in the world
Plug 'morhetz/gruvbox'

"  A file explorer tree for neovim written in lua
Plug 'kyazdani42/nvim-tree.lua'

"
Plug 'mbbill/undotree'

Plug 'jose-elias-alvarez/null-ls.nvim'

Plug 'svermeulen/vim-easyclip'

" A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" Required for Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Stuff required for LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

" Stuff required for Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


" Beautifull plugin that allows for very quick surrounding
Plug 'tpope/vim-surround'


Plug 'tpope/vim-commentary'

" Plug 'terrortylor/nvim-comment'

" For hopping arround to single or double characters with s
Plug 'phaazon/hop.nvim'

" For moving lines up and down with shift + j/k
Plug 'fedepujol/move.nvim'

" Switching between files with the fewest amount of keystrokes
Plug 'ThePrimeagen/harpoon'

" This plugin adds indentation guides to all lines (including empty lines)
Plug 'lukas-reineke/indent-blankline.nvim'


" --- FRONTEND RELATED PLUGINS

" Preview colours in source code while editing
Plug 'norcalli/nvim-colorizer.lua'

" Auto close (X)HTML tags
Plug 'alvan/vim-closetag'


" A super powerful autopair plugin for Neovim that supports multiple characters."
Plug 'windwp/nvim-autopairs'

" A neovim lua plugin to help easily manage multiple terminal windows
Plug 'akinsho/toggleterm.nvim'

call plug#end()
