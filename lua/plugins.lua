return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

use 'nvimtools/none-ls.nvim'

  use 'nvim-neotest/neotest'
  use 'nvim-neotest/neotest-python'
use 'nvim-neotest/nvim-nio'  

  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'

  use 'github/copilot.vim'
end)

