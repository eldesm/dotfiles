call plug#begin()

Plug 'morhetz/gruvbox'
" Best colorscheme in the world
" Plug 'sainnhe/sonokai'
Plug 'tanvirtin/monokai.nvim'

" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'

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

Plug 'terrortylor/nvim-comment'

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

" Improvements to the handling of Django related files in Vim
" Plug 'tweekmonster/django-plus.vim'
"
"

call plug#end()
